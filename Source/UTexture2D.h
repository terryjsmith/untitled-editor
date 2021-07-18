
#ifndef utexture2d_h
#define utexture2d_h

class UTexture2D {
public:
    UTexture2D();
    ~UTexture2D();
    
    /**
     * Create a new texture
     */
    void Create(int width, int height, int format, int type, void* data);
    
    /**
     * Get info
     */
    int Width() { return m_width; }
    int Height() { return m_height; }
    int Channels() { return m_channels; }
    
    /**
     * Bind / use texture
     */
    void Bind(int slot);
    unsigned int GetTexture() { return m_texture; }
    
protected:
    // Internal texture handle
    unsigned int m_texture;
    
    // Saved width and height
    int m_width, m_height;
    
    // Number of channels
    int m_channels;
};

#endif
