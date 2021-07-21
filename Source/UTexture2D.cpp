
#include <UTexture2D.h>
#include <OpenGL.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

UTexture2D::UTexture2D() {
    m_texture = 0;
    m_width = m_height = 0;
    m_channels = 0;
}

UTexture2D::~UTexture2D() {
    if(m_texture) {
        GL_CHECK(glDeleteTextures(1, &m_texture));
    }
}

void UTexture2D::Create(int width, int height, int format, int type, void *data) {
    m_width = width;
    m_height = height;
    
    switch(format) {
        case GL_RED:
        case GL_ALPHA:
            m_channels = 1;
            break;
        case GL_RG:
            m_channels = 2;
            break;
        case GL_RGB:
            m_channels = 3;
            break;
        case GL_RGBA:
            m_channels = 4;
            break;
        default:
            m_channels = 0;
            break;
    };
    
    if(m_texture == 0) {
        GL_CHECK(glGenTextures(1, &m_texture));
    }
    
    GL_CHECK(glActiveTexture(GL_TEXTURE0));
    GL_CHECK(glBindTexture(GL_TEXTURE_2D, m_texture));
    GL_CHECK(glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format, type, data));
}

void UTexture2D::Bind(int slot) {
    GL_CHECK(glActiveTexture(GL_TEXTURE0 + slot));
    GL_CHECK(glBindTexture(GL_TEXTURE_2D, m_texture));

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
}

void UTexture2D::Save(std::string filename) {
    unsigned char* data = (unsigned char*)malloc((size_t)m_width * m_height * m_channels);

    GL_CHECK(glBindTexture(GL_TEXTURE_2D, m_texture));
    GL_CHECK(glGetTexImage(GL_TEXTURE_2D, 0, m_channels == 3 ? GL_RGB : GL_RGBA, GL_UNSIGNED_BYTE, data));

    if (stbi_write_png(filename.c_str(), m_width, m_height, m_channels, data, m_width * m_channels) == 0) {
        int error = 1;
    }

    free(data);
}