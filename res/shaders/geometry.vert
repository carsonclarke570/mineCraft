#version 330 core

layout (location = 0) in vec3 in_position;
layout (location = 1) in vec3 in_normal;
layout (location = 2) in vec2 in_texture;

out S_VAR {
    vec3 position;
    vec3 normal;
    vec2 texcoord;
} vs_out;

layout (std140) uniform mvp_mat {
    mat4 model;
    mat4 view;
    mat4 projection;
};

void main() {
    // Positions
    vec4 world_pos = model * vec4(in_position, 1.0);
    vs_out.position = world_pos.xyz;

    // Normals
    vs_out.normal = transpose(inverse(mat3(model))) * in_normal;

    // Texture coordinates
    vs_out.texcoord = in_texture;

    gl_Position = projection * view * world_pos;
}