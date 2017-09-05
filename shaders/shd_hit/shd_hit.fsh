//
// Flashing read shader
//
varying vec2 v_texcoord;

uniform float time;
uniform vec2 mouse_pos;
uniform vec2 resolution;
uniform float strength;

void main()
{ 
    vec4 colour = texture2D(gm_BaseTexture, v_texcoord);
	float Red = colour.r;
    float Green = colour.g;
    float Blue = colour.b;
    float Alpha = colour.a;
    gl_FragColor = vec4(1.0, strength, strength, Alpha);
}
