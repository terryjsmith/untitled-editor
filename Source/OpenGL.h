
#ifndef opengl_h
#define opengl_h

#include <GL/gl3w.h>
#include <stdio.h>
#include <assert.h>

#ifdef _DEBUG
#define GL_CHECK(stuff) stuff; { GLenum error = glGetError(); if(error) { printf("GL error %d\n", error); assert(error == 0); } }
#else
#define GL_CHECK(stuff) stuff;
#endif

#endif
