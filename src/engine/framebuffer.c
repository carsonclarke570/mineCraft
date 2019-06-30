/*
    Copyright 2019 Carson Clarke-Magrab

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include <framebuffer.h>


void framebuffer_create(Framebuffer* buffer, Attachment* attachments, int n, ivec2 size, bool depth) {
    buffer->n = n;
    buffer->textures = malloc(sizeof(GLuint) * n);
    buffer->size[0] = size[0];
    buffer->size[1] = size[1];

    glGenFramebuffers(1, &buffer->buffer);
    glBindFramebuffer(GL_FRAMEBUFFER, buffer->buffer);

    GLenum* atts = malloc(n * sizeof(GLenum));
    for (int i = 0; i < n; i++) {
        glGenTextures(1, &buffer->textures[i]);
        glBindTexture(GL_TEXTURE_2D, buffer->textures[i]);
        glTexImage2D(GL_TEXTURE_2D, 0, attachments[i].internal_format, size[0], size[1], 0, attachments[i].format, attachments[i].type, NULL);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0 + i, GL_TEXTURE_2D, buffer->textures[i], 0);
        atts[i] = GL_COLOR_ATTACHMENT0 + i;
    }
    glDrawBuffers(n, atts);
    free(atts);

    if (depth) {
        glGenRenderbuffers(1, &buffer->depth);
        glBindRenderbuffer(GL_RENDERBUFFER, buffer->depth);
        glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, size[0], size[1]);
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, buffer->depth);
    }

    if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE) {
        fprintf(stderr, "ERROR: Framebuffer incomplete!\n");
    }
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
}


void framebuffer_delete(Framebuffer* buffer) {
    glDeleteRenderbuffers(1, &buffer->depth);
    glDeleteFramebuffers(1, &buffer->buffer);
    glDeleteTextures(buffer->n, buffer->textures);

    free(buffer->textures);
    buffer->buffer = 0;
    buffer->textures = NULL;
    buffer->n = 0;
}


void framebuffer_bind(Framebuffer* buffer) {
    glBindFramebuffer(GL_FRAMEBUFFER, buffer->buffer);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}


void framebuffer_unbind() {
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
}


void framebuffer_bind_textures(Framebuffer* buffer, Shader* shader) {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    shader_bind(shader);
    for (int i = 0; i < buffer->n; i++) {
        glActiveTexture(GL_TEXTURE0 + i);
        glBindTexture(GL_TEXTURE_2D, buffer->textures[i]);
    }
}


void framebuffer_blit_depth(Framebuffer* buffer) {
    glBindFramebuffer(GL_READ_FRAMEBUFFER, buffer->buffer);
    glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
    glBlitFramebuffer(0, 0, buffer->size[0], buffer->size[1], 0, 0, buffer->size[0], buffer->size[1], GL_DEPTH_BUFFER_BIT, GL_NEAREST);
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
}

