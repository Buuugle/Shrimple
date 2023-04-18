float GetSkyWetness(const in vec3 worldPos, const in vec3 localNormal, const in vec3 texNormal, const in float lmcoordY) {
    float skyLightCoord = saturate((lmcoordY - (0.5/16.0)) / (15.0/16.0));
    float skyWetness = max(8.0 * skyLightCoord - 7.0, 0.0);

    skyWetness *= smoothstep(0.0, 1.0, wetness);//max(rainStrength, wetness);

    #ifdef WORLD_WATER_ENABLED
        if (vBlockId == BLOCK_WATER) return skyWetness;
    #endif

    skyWetness *= pow(localNormal.y * 0.5 + 0.5, 0.5);

    #if MATERIAL_NORMALS != NORMALMAP_NONE
        skyWetness *= smoothstep(-0.2, 0.5, texNormal.y);
    #endif

    // WARN: changing local to world broke everything
    //vec3 worldPos = localPos + cameraPosition;

    #ifdef WORLD_PUDDLES_PIXELATED
        worldPos = floor(worldPos * 16.0) / 16.0;
    #endif
    
    vec2 texPos = worldPos.xz + worldPos.y * 0.12;
    float wetnessNoise = textureLod(noisetex, texPos * 0.04, 0).r;
    wetnessNoise *= 1.0 - 0.7*textureLod(noisetex, texPos * 0.01, 0).g;

    return max(skyWetness - wetnessNoise, 0.0);
}

float GetWetnessPuddleF(const in float skyWetness, const in float porosity) {
    return smoothstep(0.1, 0.6, skyWetness - 0.3*porosity);
}

void ApplyWetnessRipples(inout vec3 texNormal, const in vec3 worldPos, const in float viewDist, const in float puddleF) {
    //vec3 worldPos = vLocalPos + cameraPosition;
    float rippleTime = frameTimeCounter / 0.72;

    vec3 rippleNormal;
    vec2 rippleTex = worldPos.xz * 0.3;
    rippleNormal.xy = texture(TEX_RIPPLES, vec3(rippleTex, rippleTime)).rg * 2.0 - 1.0;
    rippleNormal.z = sqrt(max(1.0 - length2(rippleNormal.xy), EPSILON));

    rippleNormal.z *= viewDist;
    rippleNormal = normalize(rippleNormal);

    rippleNormal = mix(vec3(0.0, 0.0, 1.0), rippleNormal, puddleF * rainStrength);
    texNormal = mix(texNormal, rippleNormal, puddleF);
}

void ApplySkyWetness(inout vec3 albedo, inout float roughness, const in float porosity, const in float skyWetness, const in float puddleF) {
    //float puddle = smoothstep(0.26, 0.42, skyWetness - 0.4*porosity);

    float saturation = max(1.6 * skyWetness, puddleF) * porosity;
    albedo = pow(albedo, vec3(1.0 + saturation));

    float surfaceWetness = saturate(max(skyWetness - 0.3*porosity, puddleF));

    //texNormal = mix(texNormal, geoNormal, puddleF);

    float _roughL = max(_pow2(roughness), ROUGH_MIN);
    _roughL = mix(_roughL, 0.1, surfaceWetness);
    roughness = sqrt(max(_roughL, EPSILON));
}
