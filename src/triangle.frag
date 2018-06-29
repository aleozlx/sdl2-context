#version 330 core

in vec3 fsColor;
out vec4 Color;

void main()
{
    Color = vec4(fsColor, 1.0);
}
