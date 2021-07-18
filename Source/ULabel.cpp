
#include <ULabel.h>
#include <GL/gl3w.h>

ULabel::ULabel() {
    m_font = 0;
    m_fontSize = 10;
}

void ULabel::Text(std::string text) {
    m_text = text;
    
    // Mark as dirty so we redraw content
    this->MarkDirty();
}

float ULabel::Width(float maxWidth) {
    return(m_texture->Width());
}

float ULabel::Height(float maxHeight) {
    return(m_texture->Height());
}

void ULabel::Redraw() {
    assert(m_font != 0);
    
    // Determine width, height, and max baseline for string
    int width, height, baseline;
    m_font->GetTextureSize(m_text, m_fontSize, width, height, baseline);
    
    // Get our texture data (in single byte format)
    unsigned char* data = m_font->GetText(m_fontSize, m_text, width, height, baseline);
    
    // Convert our data to our preferred texture color
    int channels = 4;
    unsigned char* textureData = (unsigned char*)malloc(width * height * channels);
    memset(textureData, 0, width * height * channels);
    
    for(int y = 0; y < height; y++) {
        for(int x = 0; x < width; x++) {
            int srcOffset = ((y * width) + x);
            int dstOffset = ((y * width) + x) * channels;
            
            textureData[dstOffset + 0] = data[srcOffset] * m_color.r;
            textureData[dstOffset + 1] = data[srcOffset] * m_color.g;
            textureData[dstOffset + 2] = data[srcOffset] * m_color.b;
            textureData[dstOffset + 3] = data[srcOffset] * m_color.a;
        }
    }
    
    // Create or re-create our texture
    if(m_texture == 0) {
        m_texture = new UTexture2D();
    }
    
    m_texture->Create(width, height, GL_RGBA, GL_UNSIGNED_BYTE, textureData);
    
    free(textureData);
    free(data);
}
