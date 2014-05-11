/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.opengl3.types;

alias GLenum = uint;
alias GLvoid = void;
alias GLboolean = ubyte;
alias GLbitfield = uint;
alias GLchar = char;
alias GLbyte = byte;
alias GLshort = short;
alias GLint = int;
alias GLsizei = int;
alias GLubyte = ubyte;
alias GLushort = ushort;
alias GLuint = uint;
alias GLhalf = ushort;
alias GLfloat = float;
alias GLclampf = float;
alias GLdouble = double;
alias GLclampd = double;
alias GLintptr = ptrdiff_t;
alias GLsizeiptr = ptrdiff_t;

    // ARB_vertex_buffer_object
alias GLintptrARB = ptrdiff_t;
alias GLsizeiptrARB = ptrdiff_t;

    // ARB_shader_objects
alias GLcharARB = byte;
alias GLhandleARB = uint;

    // ARB_half_float_pixel
alias GLhalfARB = ushort;

    // NV_half_float
alias GLhalfNV = ushort;

    // EXT_timer_query
alias GLint64EXT = long;
alias GLuint64EXT = ulong;

    // ARB_sync
alias GLint64 = long;
alias GLuint64 = ulong;

struct __GLsync;
alias __GLsync* GLsync;

// ARB_cl_event
struct _cl_context;
struct _cl_event;

// ARB_debug_output
extern( System ) nothrow @nogc {
    // ARB_debug_output
    alias GLDEBUGPROCARB = void function( GLenum, GLenum, GLuint, GLenum, GLsizei, in GLchar*, GLvoid* );

    // AMD_debug_output
    alias GLDEBUGPROCAMD = void function( GLuint, GLenum, GLenum, GLsizei, in GLchar*, GLvoid* );
}

// This is a Derelict type, not from OpenGL
enum GLVersion {
    None,
    GL11 = 11,
    GL12 = 12,
    GL13 = 13,
    GL14 = 14,
    GL15 = 15,
    GL20 = 20,
    GL21 = 21,
    GL30 = 30,
    GL31 = 31,
    GL32 = 32,
    GL33 = 33,
    GL40 = 40,
    GL41 = 41,
    GL42 = 42,
    GL43 = 43,
    HighestSupported = GL43,
}
