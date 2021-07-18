
#ifndef ufont_h
#define ufont_h

#include <ft2build.h>
#include FT_FREETYPE_H
#include <string>

class UFont {
public:
    UFont();
    ~UFont();
    
    /**
     * Load a font face
     */
    bool Load(std::string filename);
    
    /**
     * Get a character bitmap
     */
    unsigned char* GetCharacter(int size, unsigned long character, int height, int baseline);
    unsigned char* GetText(int size, std::string text, int width, int height, int baseline);
    
    /**
     * Analyze a string to get render width and heights (max up and down from baseline/origin)
     */
    void GetTextureSize(std::string text, int size, int& width, int& height, int& baseline);
    
protected:
    // Font face
    FT_Face m_face;
    
    // FreeType library
    static FT_Library m_ft;
    static bool m_initialized;
};

#endif 
