
#include <UButton.h>
#include <ULabel.h>
#include <OpenGL.h>

UButton::UButton() {
    // Push back two more styles for click and hover states
    m_styles.push_back(UStyle());
    m_styles.push_back(UStyle());

    // Create a child (label)
    m_label = new ULabel();
    m_label->FontColor(vector4(1, 1, 1, 1));
    m_label->Font(UFont::GetDefaultFont());

    AddChild(m_label);
}

void UButton::Redraw() {
    // Create data
    unsigned char* data = (unsigned char*)malloc((size_t)m_actualWidth * m_actualHeight * 4);
    
    // Start with full transparency
    memset(data, 0, (size_t)m_actualWidth * m_actualHeight * 4);

    // Background color first
    vector4 bgColor = m_styles[0].BackgroundColor();
    for (int y = 0; y < m_actualHeight; y++) {
        for (int x = 0; x < m_actualWidth; x++) {
            int dstOffset = ((y * m_actualWidth) + x) * 4;
            data[dstOffset + 0] = bgColor.r * 255;
            data[dstOffset + 1] = bgColor.g * 255;
            data[dstOffset + 2] = bgColor.b * 255;
            data[dstOffset + 3] = bgColor.a * 255;
        }
    }

    // Top border
    vector4 borderColor = m_styles[0].BorderColor(UStyle::Side::TOP);
    int borderWidth = m_styles[0].BorderWidth(UStyle::Side::TOP);
    for (int y = 0; y < borderWidth; y++) {
        for (int x = 0; x < m_actualWidth; x++) {
            int dstOffset = ((y * m_actualWidth) + x) * 4;
            data[dstOffset + 0] = borderColor.r * 255;
            data[dstOffset + 1] = borderColor.g * 255;
            data[dstOffset + 2] = borderColor.b * 255;
            data[dstOffset + 3] = borderColor.a * 255;
        }
    }

    // Bottom border
    borderColor = m_styles[0].BorderColor(UStyle::Side::BOTTOM);
    borderWidth = m_styles[0].BorderWidth(UStyle::Side::BOTTOM);
    for (int y = 0; y < borderWidth; y++) {
        for (int x = 0; x < m_actualWidth; x++) {
            int dstOffset = (((m_actualHeight - y) * m_actualWidth) + x) * 4;
            data[dstOffset + 0] = borderColor.r * 255;
            data[dstOffset + 1] = borderColor.g * 255;
            data[dstOffset + 2] = borderColor.b * 255;
            data[dstOffset + 3] = borderColor.a * 255;
        }
    }

    // Left border
    borderColor = m_styles[0].BorderColor(UStyle::Side::LEFT);
    borderWidth = m_styles[0].BorderWidth(UStyle::Side::LEFT);
    for (int y = 0; y < m_actualHeight; y++) {
        for (int x = 0; x < borderWidth; x++) {
            int dstOffset = ((y * m_actualWidth) + x) * 4;
            data[dstOffset + 0] = borderColor.r * 255;
            data[dstOffset + 1] = borderColor.g * 255;
            data[dstOffset + 2] = borderColor.b * 255;
            data[dstOffset + 3] = borderColor.a * 255;
        }
    }

    // Right border
    borderColor = m_styles[0].BorderColor(UStyle::Side::RIGHT);
    borderWidth = m_styles[0].BorderWidth(UStyle::Side::RIGHT);
    for (int y = 0; y < m_actualHeight; y++) {
        for (int x = 0; x < borderWidth; x++) {
            int dstOffset = ((y * m_actualWidth) + (m_actualWidth - x)) * 4;
            data[dstOffset + 0] = borderColor.r * 255;
            data[dstOffset + 1] = borderColor.g * 255;
            data[dstOffset + 2] = borderColor.b * 255;
            data[dstOffset + 3] = borderColor.a * 255;
        }
    }

    // Send data to texture
    if (m_texture == 0) {
        m_texture = new UTexture2D();
    }

    m_texture->Create(m_actualWidth, m_actualHeight, GL_RGBA, GL_UNSIGNED_BYTE, data);
    free(data);
}
