
#include <stdio.h>
#include <GL/gl3w.h>
#include <GLFW/glfw3.h>
#include <UWindow.h>
#include <UButton.h>
#include <UHBoxLayout.h>
#include <URenderer.h>

int main(int argc, char** argv) {
	// Initialize GLFW
    glfwInit();
    
    // Specify the minimum OpenGL version
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GLFW_TRUE);
    glfwWindowHint(GLFW_DOUBLEBUFFER, GLFW_TRUE);
    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_MAXIMIZED, GLFW_TRUE);
    
    // Create our window
    GLFWwindow* glfwWindow = glfwCreateWindow(800, 600, "Application Name", NULL, NULL);
    if (glfwWindow == NULL) {
        glfwTerminate();
        return(-1);
    }
    
    // Make our OpenGL context current
    glfwMakeContextCurrent(glfwWindow);

    int framebufferWidth, framebufferHeight;
    glfwGetFramebufferSize(glfwWindow, &framebufferWidth, &framebufferHeight);
    
    // Next, initialize gl3w to load extensions
    if (gl3wInit()) {
        return(-1);
    }

    if (!gl3wIsSupported(4, 0)) {
        fprintf(stderr, "OpenGL 4.0 not supported\n");
        return(-1);
    }

    // Load a font
    UFont* arial = new UFont();
    arial->Load("arial.ttf");

    UFont::SetDefaultFont(arial);

    // Define the "root" widget
    URenderer* renderer = new URenderer();
    renderer->Initialize(framebufferWidth, framebufferHeight);

    UWindow* root = new UWindow();

    UHBoxLayout* hbox = new UHBoxLayout();
    root->AddChild(hbox);

    UButton* button = new UButton();
    button->Style(0)->BackgroundColor(vector4(1, 0, 0, 1));
    button->Label()->Text("Test");
    button->Label()->FontSize(20);

    hbox->AddChild(button);

    UButton* button2 = new UButton();
    button2->Style(0)->BackgroundColor(vector4(0, 1, 0, 1));
    button2->Label()->Text("Test");
    button2->Label()->FontSize(20);

    hbox->AddChild(button2);

    UButton* button3 = new UButton();
    button3->Style(0)->BackgroundColor(vector4(0, 0, 1, 1));
    button3->Label()->Text("Test");
    button3->Label()->FontSize(20);

    hbox->AddChild(button3);
    
    while(glfwWindowShouldClose(glfwWindow) == false) {
        // Do rendering stuff
        renderer->Render(root);
        
        glfwPollEvents();
        glfwSwapBuffers(glfwWindow);
    }
}
