#version 330 core
uniform float vsPhase;
in float vsColor;
in vec2 position;
out vec3 fsColor;

vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main() {
	gl_Position = vec4(position, 0.0, 1.0);
    fsColor = hsv2rgb(vec3(mod(vsColor + vsPhase, 1.0), 1.0, 1.0));
}
