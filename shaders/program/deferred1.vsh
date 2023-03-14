#define RENDER_DEFERRED_RT_LIGHT
#define RENDER_DEFERRED
#define RENDER_VERTEX

#include "/lib/common.glsl"
#include "/lib/constants.glsl"

out vec2 texcoord;


void main() {
	gl_Position = ftransform();
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
}
