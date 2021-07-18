
#ifndef ulabel_h
#define ulabel_h

#include <UWidget.h>
#include <UFont.h>
#include <string>

class ULabel : public UWidget {
public:
    ULabel();
    ~ULabel() = default;
    
    /**
     * Get / set text
     */
    void Text(std::string text);
    std::string Text() { return m_text; }
    
    /**
     * Set font / size (in pixels)
     */
    void Font(UFont* font) { m_font = font; }
    
    void FontSize(int size) { m_fontSize = size; }
    int FontSize() { return m_fontSize; }
    
    /**
     * Get / set color
     */
    void FontColor(vector4 color) { m_color = color; }
    vector4 FontColor() { return m_color; }
    
    /**
     * Get the actual width and height of the element (based on all children)
     */
    virtual float Width(float maxWidth);
    virtual float Height(float maxHeight);
    
protected:
    void Redraw();
    
protected:
    // What does it say?
    std::string m_text;
    
    // What font are we using?
    UFont* m_font;
    
    // Font size
    int m_fontSize;
    
    // Text color
    vector4 m_color;
};

#endif
