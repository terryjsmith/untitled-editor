
#include <ULabel.h>
#include <GL/gl3w.h>

ULabel::ULabel() {
    m_font = 0;
    m_fontSize = 20;
    m_width = m_height = m_baseline = 0;
}

void ULabel::Text(std::string text) {
    m_text = text;

    assert(m_font != 0);

    // Determine width, height, and max baseline for string
    m_font->GetTextureSize(m_text, m_fontSize, m_width, m_height, m_baseline);
    
    // Mark as dirty so we redraw content
    this->MarkDirty();
}

void ULabel::Font(UFont* font) {
    m_font = font;

    assert(m_font != 0);

    // Determine width, height, and max baseline for string
    m_font->GetTextureSize(m_text, m_fontSize, m_width, m_height, m_baseline);

    // Mark as dirty so we redraw content
    this->MarkDirty();
}

void ULabel::FontSize(int size) {
    m_fontSize = size;

    assert(m_font != 0);

    // Determine width, height, and max baseline for string
    m_font->GetTextureSize(m_text, m_fontSize, m_width, m_height, m_baseline);

    // Mark as dirty so we redraw content
    this->MarkDirty();
}

float ULabel::Width(float maxWidth) {
    m_actualWidth = m_width;
    return(m_width);
}

float ULabel::Height(float maxHeight) {
    m_actualHeight = m_height;
    return(m_height);
}

void ULabel::Redraw() {
    assert(m_font != 0);
    
    // Get our texture data (in single byte format)
    unsigned char* data = m_font->GetText(m_fontSize, m_text, m_width, m_height, m_baseline);
    
    // Convert our data to our preferred texture color
    int channels = 4;
    unsigned char* textureData = (unsigned char*)malloc((size_t)m_width * m_height * channels);
    memset(textureData, 0, (size_t)m_width * m_height * channels);
    
    for(int y = 0; y < m_height; y++) {
        for(int x = 0; x < m_width; x++) {
            int srcOffset = ((y * m_width) + x);
            int dstOffset = ((y * m_width) + x) * channels;
            
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
   
    m_texture->Create(m_width, m_height, GL_RGBA, GL_UNSIGNED_BYTE, textureData);
    
    free(textureData);
    free(data);

    //m_texture->Save("text.png");
}
