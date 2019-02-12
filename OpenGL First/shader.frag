#version 330 core
in vec3 ourColor;
in vec2 TextCoord;
uniform vec4 test;
out vec4 color;
uniform sampler2D ourTexture;

void main()
{
color = texture(ourTexture, TextCoord) * test;

};