
#ifndef urenderer_h
#define urenderer_h

#include <UWidget.h>
#include <UTexture2D.h>

class URenderer {
public:
    URenderer();
    ~URenderer() = default;
    
    /**
     * Initialize with screen with and height (or size of output GUI)
     */
    void Initialize(int width, int height);
    
    /**
     * Render to our texture (or to the screen)
     */
    void Render(UWidget* root);

protected:
    // Recursively render all child widgets
    void RecursiveRender(UWidget* widget, matrix4 model);
    
protected:
    // Output texture for drawing
    UTexture2D* m_output;
    
    // Framebuffer (GL handle)
    unsigned int m_framebuffer;
    
    // Orthographic matrix
    matrix4 m_ortho;
    
    // Screen width and height
    int m_width, m_height;
    
    // Shaders
    unsigned int m_program;
    
    // Vertex array object
    unsigned int m_vertexArray;
};

#endif 
