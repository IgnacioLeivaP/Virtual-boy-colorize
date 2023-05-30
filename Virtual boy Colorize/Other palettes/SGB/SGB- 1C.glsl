// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
vec4 _oPosition1;
vec4 _r0012;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTexCoord;
    _r0012 = VertexCoord.x*MVPMatrix[0];
    _r0012 = _r0012 + VertexCoord.y*MVPMatrix[1];
    _r0012 = _r0012 + VertexCoord.z*MVPMatrix[2];
    _r0012 = _r0012 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0012;
    _oTexCoord = TexCoord.xy;
    gl_Position = _r0012;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
vec4 _ret_0;
uniform sampler2D Texture;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _texColor;
    _texColor = COMPAT_TEXTURE(Texture, TEX0.xy);
    if (_texColor.x >= 8.82352948E-01) { 
        FragColor = vec4( 0.969,0.753,0.98, 3.92156886E-03);
        return;
    } else {
        if (_texColor.x >= 6.27451003E-01) { 
            FragColor = vec4( 0.91,0.596,0.31, 3.92156886E-03);
            return;
        } else {
            if (_texColor.x >= 3.72549027E-01) { 
                FragColor = vec4( 0.592,0.216,0.38, 3.92156886E-03);
                return;
            } else {
                FragColor = vec4( 0.22,0.224,0.596, 3.92156886E-03);
                return;
            } 
        } 
    } 
    FragColor = _ret_0;
} 
#endif
