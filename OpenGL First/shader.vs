#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;
layout (location = 2) in vec2 textCoord;


out vec3 ourColor;
out vec2 TextCoord;

uniform mat4 myMatrix;

uniform mat4 perspective;
uniform mat4 model;
uniform mat4 view;


void main()
{
gl_Position = perspective * view * model * myMatrix * vec4(position.x, position.y, position.z, 1.0);
ourColor = color;
TextCoord = textCoord;
};