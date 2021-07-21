
#ifndef uwidget_h
#define uwidget_h

#include <UTexture2D.h>
#include <UStyle.h>
#include <vector>

class URenderer;

class UWidget {
public:
    UWidget();
    virtual ~UWidget();

    enum SizePolicy {
        POLICY_GROWTOFIT = 1,
        POLICY_EXPANDING
    };
    
    /**
     * Get / set parent
     */
    void Parent(UWidget* parent) { m_parent = parent; }
    UWidget* Parent() { return(m_parent); }
    
    /**
     * Get style
     */
    UStyle* Style(int index = 0);
    
    /**
     * Children
     */
    void AddChild(UWidget* child);
    UWidget* Child(int index);
    
    /**
     * Count of children
     */
    int Children();
    
    /**
     * Get the actual width and height of the element (based on all children)
     */
    virtual float Width(float maxWidth);
    virtual float Height(float maxHeight);
    
    /**
     * Set as dirty (needs to be redrawn)
     */
    void MarkDirty();
    
    /**
     * Get texture (will re-draw if necessary)
     */
    UTexture2D* GetTexture();

    /**
     * Set / get expanding status
     */
    void SizePolicy(int horizontal, int vertical);
    int SizePolicyHorizontal() { return m_sizePolicyHorizontal; }
    int SizePolicyVertical() { return m_sizePolicyVertical; }

    /**
     * Get / set offset
     */
    void OffsetX(float x) { m_actualX = x; }
    void OffsetY(float y) { m_actualY = y; }
    
protected:
    // Should be overridden to populate texture data
    virtual void Redraw() = 0;

    friend class URenderer;
    
protected:
    // Parent
    UWidget* m_parent;
    
    // Style
    std::vector<UStyle> m_styles;
    
    // Is this item expanding by default or a fixed size but stretchable?
    int m_sizePolicyHorizontal;
    int m_sizePolicyVertical;
    
    // Children
    std::vector<UWidget*> m_children;
    
    // Whether the element is dirty and needs to be re-drawn
    bool m_dirty;
    
    // Rendered output image
    UTexture2D* m_texture;
    
    // Actual width and height based on calculations
    int m_actualWidth, m_actualHeight;

    // Offset into parent widget
    int m_actualX, m_actualY;

    // Vertex buffer / array object
    unsigned int m_vertexBuffer;
    unsigned int m_vertexArray;
};


#endif
