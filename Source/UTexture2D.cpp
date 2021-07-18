
#include <UTexture2D.h>
#include <GL/gl3w.h>

UTexture2D::UTexture2D() {
    m_texture = 0;
    m_width = m_height = 0;
    m_channels = 0;
}

UTexture2D::~UTexture2D() {
    if(m_texture) {
        glDeleteTextures(1, &m_texture);
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
        glGenTextures(1, &m_texture);
    }
    
    glBindTexture(GL_TEXTURE_2D, m_texture);
    glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format, type, data);
}

void UTexture2D::Bind(int slot) {
    glActiveTexture(GL_TEXTURE0 + slot);
    glBindTexture(GL_TEXTURE_2D, m_texture);
}
