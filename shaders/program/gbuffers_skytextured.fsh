#define RENDER_SKYTEXTURED
#define RENDER_GBUFFER
#define RENDER_FRAG

#include "/lib/constants.glsl"
#include "/lib/common.glsl"

varying vec2 texcoord;
varying vec4 glcolor;


uniform sampler2D gtexture;

#include "/lib/sampling/bayer.glsl"
#include "/lib/buffers/shadow.glsl"
#include "/lib/post/tonemap.glsl"


/* RENDERTARGETS: 0 */
layout(location = 0) out vec4 outColor0;

void main() {
    vec4 color = texture(gtexture, texcoord) * glcolor;
    color.rgb = RGBToLinear(color.rgb);

    ApplyPostProcessing(color.rgb);
    outColor0 = color;
}
