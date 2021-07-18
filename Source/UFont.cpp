
#include <UFont.h>
#include <assert.h>

FT_Library UFont::m_ft;
bool UFont::m_initialized = false;

UFont::UFont() {
    
}

UFont::~UFont() {
    
}

bool UFont::Load(std::string filename) {
    if(m_initialized == false) {
        if (FT_Init_FreeType(&m_ft)) {
            return(false);
        }
        m_initialized = true;
    }
    
    if (FT_New_Face(m_ft, filename.c_str(), 0, &m_face)) {
        return(false);
    }
    
    return(true);
}

unsigned char* UFont::GetCharacter(int size, unsigned long character, int height, int baseline) {
    FT_Set_Pixel_Sizes(m_face, 0, size);
    
    if (FT_Load_Char(m_face, character, FT_LOAD_RENDER)) {
        return(0);
    }
    
    unsigned char* data = (unsigned char*)malloc(m_face->glyph->advance.x * height);
    
    // Copy data from glyph into data variable based on where the baseline is
    for(int y = 0; y < m_face->glyph->bitmap.rows; y++) {
        // Start at the offset between the "highest top" (baseline) and the top of this image
        int baselineDiff = baseline - m_face->glyph->bitmap_top;
        
        assert(baselineDiff + y < height);
        
        // Start the source from the right row
        int startSrcByte = y * m_face->glyph->bitmap.width;
        
        // Into the destination ((baseline difference + y) * width of dest image) + offset from the left
        int startDestByte = ((baselineDiff + y) * m_face->glyph->advance.x) + m_face->glyph->bitmap_left;
        
        memcpy(data + startDestByte, m_face->glyph->bitmap.buffer + startSrcByte, m_face->glyph->bitmap.width);
    }
    
    return(data);
}

unsigned char* UFont::GetText(int size, std::string text, int width, int height, int baseline) {
    FT_Set_Pixel_Sizes(m_face, 0, size);
    
    // Create our data
    unsigned char* data = (unsigned char*)malloc(width * height);
    
    // Loop over characters
    int currentX = 0;
    for(int i = 0; i < text.length(); i++) {
        if (FT_Load_Char(m_face, text[i], FT_LOAD_RENDER)) {
            return(0);
        }
        
        // Copy data from glyph into data variable based on where the baseline is
        for(int y = 0; y < m_face->glyph->bitmap.rows; y++) {
            // Start at the offset between the "highest top" (baseline) and the top of this image
            int baselineDiff = baseline - m_face->glyph->bitmap_top;
            
            assert(baselineDiff + y < height);
            
            // Start the source from the right row
            int startSrcByte = y * m_face->glyph->bitmap.width;
            
            // Into the destination ((baseline difference + y) * width of dest image) + + current offset + offset from the left
            int startDestByte = ((baselineDiff + y) * m_face->glyph->advance.x) + currentX + m_face->glyph->bitmap_left;
            
            memcpy(data + startDestByte, m_face->glyph->bitmap.buffer + startSrcByte, m_face->glyph->bitmap.width);
        }
        
        currentX += m_face->glyph->advance.x;
    }
    
    return(data);
}

void UFont::GetTextureSize(std::string text, int size, int& width, int& height, int& baseline) {
    // Return a width based on rendered glyphs and a height based on maximum height for the font across standard characters
    char samples[] = {'A', 'T', 'P', 'j', 'q', 'i', 'l'};
    int count = 7;
    
    FT_Set_Pixel_Sizes(m_face, 0, size);
    
    // Record max above and below the baseline to determine ideal height consistenct across strings
    int maxUp = 0;
    int maxDown = 0;
    for(int i = 0; i < count; i++) {
        FT_Load_Char(m_face, samples[i], FT_LOAD_RENDER);
        
        maxUp = std::max(maxUp, m_face->glyph->bitmap_top);
        maxDown = std::max(maxDown, (int)m_face->glyph->bitmap.rows - m_face->glyph->bitmap_top);
    }
    
    // Iterate over actual string to get width
    int totalWidth = 0;
    for(int i = 0; i < text.length(); i++) {
        FT_Load_Char(m_face, text[i], FT_LOAD_RENDER);
        totalWidth += m_face->glyph->advance.x;
    }
    
    width = totalWidth;
    height = maxUp + maxDown;
    baseline = maxUp;
}
