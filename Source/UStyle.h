
#ifndef ustyle_h
#define ustyle_h

#include <UTexture2D.h>
#include <MathTypes.h>

class UStyle {
public:
    UStyle();
    ~UStyle() = default;
    
    enum Side {
        TOP = 0,
        RIGHT,
        BOTTOM,
        LEFT
    };
    
    enum Alignment {
        ALIGN_INHERIT = 0,
        ALIGN_LEFT,
        ALIGN_CENTER,
        ALIGN_RIGHT
    };
    
    /**
     * Get / set background color
     */
    void BackgroundColor(vector4 color) { m_backgroundColor = color; }
    vector4 BackgroundColor() { return m_backgroundColor; }
    
    /**
     * Background image
     */
    void BackgroundImage(UTexture2D* image) { m_backgroundImage = image; }
    UTexture2D* BackgroundImage() { return m_backgroundImage; }
    
    /**
     * Border colors
     */
    void BorderColor(Side side, vector4 color) { m_borderColors[side] = color; }
    void BorderColor(vector4 color);
    vector4 BorderColor(Side side) { return m_borderColors[side]; }
    
    /**
     * Border widths
     */
    void BorderWidth(Side side, float width) { m_borderWidths[side] = width; }
    void BorderWidth(float width);
    float BorderWidth(Side side) { return m_borderWidths[side]; }
    
    /**
     * Margins
     */
    void Margin(Side side, float margin) { m_margins[side] = margin; }
    void Margin(float margin);
    float Margin(Side side) { return m_margins[side]; }
    
    /**
     * Padding
     */
    void Padding(Side side, float padding) { m_paddings[side] = padding; }
    void Padding(float padding);
    float Padding(Side side) { return m_paddings[side]; }
    
    /**
     * Dimensions
     */
    void FixedWidth(float width) { m_fixedWidth = width; }
    float FixedWidth() { return m_fixedWidth; }
    
    void FixedHeight(float height) { m_fixedHeight = height; }
    float FixedHeight() { return m_fixedHeight; }
    
    void MaximumWidth(float width) { m_maxWidth = width; }
    float MaximumWidth() { return m_maxWidth; }
    
    void MaximumHeight(float height) { m_maxHeight = height; }
    float MaximumHeight() { return m_maxHeight; }
    
    void MinimumWidth(float width) { m_minWidth = width; }
    float MinimumWidth() { return m_minWidth; }
    
    void MinimumHeight(float height) { m_minHeight = height; }
    float MinimumHeight() { return m_minHeight; }
    
    /**
     * Stretch factor
     */
    void Stretch(int stretch) { m_stretch = stretch; }
    int Stretch() { return m_stretch; }
    
    /**
     * Position
     */
    void Position(vector2 position) { m_position = position; }
    vector2 Position() { return m_position; }
    
    /**
     * Alignment
     */
    void Alignment(Alignment alignment) { m_alignment = (int)alignment; }
    int Alignment() { return m_alignment; }
    
protected:
    // Background color
    vector4 m_backgroundColor;
    
    // Background image
    UTexture2D* m_backgroundImage;
    
    // Border colors
    vector4 m_borderColors[4];
    
    // Border widths
    float m_borderWidths[4];
    
    // Margins
    float m_margins[4];
    
    // Padding
    float m_paddings[4];
    
    // Fixed width and height
    float m_fixedHeight, m_fixedWidth;
    
    // Minimum and maximum width and heights
    float m_minWidth, m_minHeight, m_maxWidth, m_maxHeight;
    
    // Stretch factor
    int m_stretch;
    
    // Position (relative to parent)
    vector2 m_position;
    
    // Alignment (of content)
    int m_alignment;
};

#endif
