
#include <URenderer.h>
#include <OpenGL.h>

URenderer::URenderer() {
    m_framebuffer = 0;
    m_output = 0;
    m_program = 0;
    m_width = m_height = 0;
    m_vertexArray = 0;
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
        GL_CHECK(glGenFramebuffers(1, &m_framebuffer));
    }
    
    // Add texture to framebuffer
    GL_CHECK(glBindFramebuffer(GL_FRAMEBUFFER, m_framebuffer));
    GL_CHECK(glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, m_output->GetTexture(), 0));
    GL_CHECK(glBindFramebuffer(GL_FRAMEBUFFER, 0));
    
    // Create shader program
    if(m_program == 0) {
        const char* vertexShaderSrc = R"V0(
        #version 400 core

        layout(location = 0) in vec2 vertex_position;
        layout(location = 1) in vec2 vertex_texcoord;

        uniform mat4 ortho;
        uniform mat4 model;

        out vec2 frag_texcoord;
        
        void main () {
            frag_texcoord = vertex_texcoord;
            gl_Position = ortho * model * vec4(vertex_position, 0.0, 1.0);
        }
        )V0";
        unsigned int vertexShader = glCreateShader(GL_VERTEX_SHADER);
        GL_CHECK(glShaderSource(vertexShader, 1, &vertexShaderSrc, NULL));
        GL_CHECK(glCompileShader(vertexShader));
        
        int success;
        GL_CHECK(glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success));
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
            out_diffuse = texture(inputTexture, frag_texcoord);
            if(out_diffuse.a < 0.1) discard;
        }
        )V0";
        unsigned int fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
        GL_CHECK(glShaderSource(fragmentShader, 1, &fragmentShaderSrc, NULL));
        GL_CHECK(glCompileShader(fragmentShader));
        
        GL_CHECK(glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success));
        if(success == false) {
            char infoLog[512];
            glGetShaderInfoLog(fragmentShader, 512, NULL, infoLog);
            assert(0);
        }
        
        m_program = glCreateProgram();
        GL_CHECK(glAttachShader(m_program, vertexShader));
        GL_CHECK(glAttachShader(m_program, fragmentShader));
        GL_CHECK(glLinkProgram(m_program));
        
        GL_CHECK(glGetProgramiv(m_program, GL_LINK_STATUS, &success));
        if(success == false) {
            char infoLog[512];
            glGetProgramInfoLog(m_program, 512, NULL, infoLog);
            assert(0);
        }
        
        GL_CHECK(glDeleteShader(vertexShader));
        GL_CHECK(glDeleteShader(fragmentShader));
    }
    
    // Create orthographic matrix
    m_ortho = glm::ortho(0.0f, (float)width, (float)height, 0.0f, -1.0f, 1.0f);
}

void URenderer::Render(UWidget* root) {
    // First, iterate over all objects to set sizes, starting with the screen width and height
    root->Width(m_width);
    root->Height(m_height);

    // Use framebuffer
    //GL_CHECK(glBindFramebuffer(GL_FRAMEBUFFER, m_framebuffer));
    GL_CHECK(glBindFramebuffer(GL_FRAMEBUFFER, 0));

    // Disable depth testing
    GL_CHECK(glDisable(GL_DEPTH_TEST));
    GL_CHECK(glDisable(GL_CULL_FACE));
    
    // Use shader program
    GL_CHECK(glUseProgram(m_program));
    
    // Use ortho matrix
    GL_CHECK(glViewport(0, 0, m_width, m_height));

    // Clear the screen
    GL_CHECK(glClearColor(0, 0, 0, 1));
    GL_CHECK(glClear(GL_COLOR_BUFFER_BIT));
    
    int location = glGetUniformLocation(m_program, "ortho");
    GL_CHECK(glUniformMatrix4fv(location, 1, GL_FALSE, &m_ortho[0][0]));
    
    // Render children recursively
    for (int i = 0; i < root->Children(); i++) {
        UWidget* widget = root->Child(i);
        RecursiveRender(widget, matrix4(1.0f));
    }

    //m_output->Save("screen.png");
}

void URenderer::RecursiveRender(UWidget* widget, matrix4 model) {
    // See if this widget has a texture
    UTexture2D* texture = widget->GetTexture();

    float top = widget->Style(0)->Padding(UStyle::Side::TOP);
    float left = widget->Style(0)->Padding(UStyle::Side::LEFT);

    model = glm::translate(model, vector3(left, top, 0.0f));

    int location = glGetUniformLocation(m_program, "model");
    GL_CHECK(glUniformMatrix4fv(location, 1, GL_FALSE, &model[0][0]));

    // If there is a texture, render
    if (texture) {
        // Bind texture for widget
        widget->GetTexture()->Bind(0);
        int location = glGetUniformLocation(m_program, "inputTexture");
        GL_CHECK(glUniform1i(location, 0));

        // Render each textured quad
        GL_CHECK(glBindVertexArray(widget->m_vertexArray));
        GL_CHECK(glBindBuffer(GL_ARRAY_BUFFER, widget->m_vertexBuffer));

        GL_CHECK(glDrawArrays(GL_TRIANGLE_STRIP, 0, 4));
    }

    // Render children recursively
    for (int i = 0; i < widget->Children(); i++) {
        UWidget* child = widget->Child(i);
        RecursiveRender(child, model);
    }
}
