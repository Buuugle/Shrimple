const float CloudSpeed = 0.01;
// const float CloudDensityF = 0.6;
// const float CloudAmbientF = 0.1;

const vec3 CloudScatterColor_clear = _RGBToLinear(vec3(0.64));
const vec3 CloudScatterColor_rain  = _RGBToLinear(vec3(0.18));

const vec3 CloudAbsorbColor_clear = _RGBToLinear(1.0 - vec3(0.529, 0.561, 0.612));
const vec3 CloudAbsorbColor_rain  = _RGBToLinear(1.0 - vec3(0.337, 0.318, 0.369));

float CloudDensityF       = mix(0.40, 0.60, skyRainStrength);
float CloudAmbientF       = mix(0.08, 0.02, skyRainStrength);
vec3 CloudScatterColor    = mix(CloudScatterColor_clear, CloudScatterColor_rain, skyRainStrength);
vec3 CloudAbsorbColor     = mix(CloudAbsorbColor_clear, CloudAbsorbColor_rain, skyRainStrength);
float CloudAbsorbF        = mix(0.140, 0.128, skyRainStrength);


#define CLOUD_STEPS 24
#define CLOUD_SHADOW_STEPS 8
#define CLOUD_GROUND_SHADOW_STEPS 4
#define CLOUD_REFLECT_STEPS 12
#define CLOUD_REFLECT_SHADOW_STEPS 4

#if SKY_CLOUD_TYPE == CLOUDS_CUSTOM
    const int CloudMaxOctaves = 6;
    const int CloudTraceOctaves = 3;
    const int CloudShadowOctaves = 2;
    const float CloudHeight = 256.0;
    const float CloudSize = 24.0;
#elif SKY_CLOUD_TYPE == CLOUDS_CUSTOM_CUBE
    const int CloudMaxOctaves = 5;
    const int CloudTraceOctaves = 2;
    const int CloudShadowOctaves = 2;
    const float CloudHeight = 256.0;
    const float CloudSize = 20.0;
#else
    const float CloudHeight = 4.0;
    const float CloudSize = 4.0;
#endif
