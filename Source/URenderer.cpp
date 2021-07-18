
#include <URenderer.h>
#include <GL/gl3w.h>

URenderer::URenderer() {
    m_framebuffer = 0;
    m_output = 0;
    m_program = 0;
    m_width = m_height = 0;
}

void URenderer::Initialize(int width, int height) {
    m_width = width;
    m_height = height;
    
    // Create texture
    if(m_output == 0) {
        m_output = new UTexture2D();
    }
    
    m_output->Create(width, height, GL_RGBA, GL_UNSIGNED_BYTE, 0);
    
    // Create framebuffer
    if(m_framebuffer == 0) {
        glGenFramebuffers(1, &m_framebuffer);
    }
    
    // Add texture to framebuffer
    glBindFramebuffer(GL_FRAMEBUFFER, m_framebuffer);
    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, m_output->GetTexture(), 0);
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    
    // Create shader program
    if(m_program == 0) {
        const char* vertexShaderSrc = R"V0(
        #version 400 core

        layout(location = 0) in vec2 vertex_position;
        layout(location = 3) in vec2 vertex_texcoord;

        uniform mat4 ortho;

        out vec2 frag_texcoord;
        
        void main () {
            frag_texcoord = vertex_texcoord;
            gl_Position = ortho * vec4(vertex_position, 0.0, 1.0);
        }
        )V0";
        unsigned int vertexShader = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(vertexShader, 1, &vertexShaderSrc, NULL);
        glCompileShader(vertexShader);
        
        int success;
        glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
        if(success == false) {
            char infoLog[512];
            glGetShaderInfoLog(vertexShader, 512, NULL, infoLog);
            assert(0);
        }
        
        const char* fragmentShaderSrc = R"V0(
        #version 400 core

        in vec2 frag_texcoord;
        uniform sampler2D inputTexture;

        out vec4 out_diffuse;

        void main () {
            out_diffuse = vec4(texture(inputTexture, frag_texcoord.st).rgb, 1.0);
        }
        )V0";
        unsigned int fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(fragmentShader, 1, &fragmentShaderSrc, NULL);
        glCompileShader(fragmentShader);
        
        glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
        if(success == false) {
            char infoLog[512];
            glGetShaderInfoLog(fragmentShader, 512, NULL, infoLog);
            assert(0);
        }
        
        m_program = glCreateProgram();
        glAttachShader(m_program, vertexShader);
        glAttachShader(m_program, fragmentShader);
        glLinkProgram(m_program);
        
        glGetProgramiv(m_program, GL_LINK_STATUS, &success);
        if(success == false) {
            char infoLog[512];
            glGetProgramInfoLog(m_program, 512, NULL, infoLog);
            assert(0);
        }
        
        glDeleteShader(vertexShader);
        glDeleteShader(fragmentShader);
    }
    
    // Create orthographic matrix
    m_ortho = glm::ortho(0, width, height, 0);
}

void URenderer::Render(UWidget* root) {
    // Use framebuffer
    glBindFramebuffer(GL_FRAMEBUFFER, m_framebuffer);
    
    // Use shader program
    glUseProgram(m_program);
    
    // Use ortho matrix
    glViewport(0, 0, m_width, m_height);
    
    int location = glGetUniformLocation(m_program, "ortho");
    glUniformMatrix4fv(location, 1, GL_FALSE, &m_ortho[0][0]);
    
    // Bind texture for widget
    root->GetTexture()->Bind(0);
    location = glGetUniformLocation(m_program, "inputTexture");
    glUniform1i(location, 0);
    
    // Render each textured quad
}
