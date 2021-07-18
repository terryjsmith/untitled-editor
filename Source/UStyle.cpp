
#include <UStyle.h>

UStyle::UStyle() {
    m_backgroundImage = 0;
    
    // Transparent
    m_backgroundColor = vector4(0, 0, 0, 0);
    
    for(int i = 0; i < 4; i++) {
        m_borderColors[i] = vector4(0, 0, 0, 0);
        m_borderWidths[i] = 0;
        m_margins[i] = 0;
        m_paddings[i] = 0;
    }
    
    // Set to -1 (based on content size)
    m_fixedHeight = m_fixedWidth = -1;
    m_minWidth = m_minHeight = m_maxWidth = m_maxHeight = -1;
    
    // Stretch by default
    m_stretch = 1;
    
    // Position (unfixed by default)
    m_position = vector2(-1, -1);
    
    // Left align to start
    m_alignment = ALIGN_LEFT;
}

void UStyle::BorderColor(vector4 color) {
    for(int i = 0; i < 4; i++) {
        m_borderColors[i] = color;
    }
}

void UStyle::BorderWidth(float width) {
    for(int i = 0; i < 4; i++) {
        m_borderWidths[i] = width;
    }
}

void UStyle::Margin(float margin) {
    for(int i = 0; i < 4; i++) {
        m_margins[i] = margin;
    }
}

void UStyle::Padding(float padding) {
    for(int i = 0; i < 4; i++) {
        m_paddings[i] = padding;
    }
}
