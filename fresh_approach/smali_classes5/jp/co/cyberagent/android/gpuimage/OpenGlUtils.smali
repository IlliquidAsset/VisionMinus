.class public Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;
.super Ljava/lang/Object;
.source "OpenGlUtils.java"


# static fields
.field public static final NO_TEXTURE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b31

    .line 109
    invoke-static {p0, v1}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "Load Program"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "Vertex Shader Failed"

    .line 111
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const v3, 0x8b30

    .line 114
    invoke-static {p1, v3}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Fragment Shader Failed"

    .line 116
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 120
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 122
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 123
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 125
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v4, 0x8b82

    .line 127
    invoke-static {v3, v4, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 128
    aget v0, v0, v2

    if-gtz v0, :cond_2

    const-string p0, "Linking Failed"

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 132
    :cond_2
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 133
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method public static loadShader(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 93
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 94
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 95
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const p0, 0x8b81

    const/4 v1, 0x0

    .line 96
    invoke-static {p1, p0, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 97
    aget p0, v0, v1

    if-nez p0, :cond_0

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compilation\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Load Shader Failed"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return p1
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-static {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result p0

    return p0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 38
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 39
    aget p1, v1, v3

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const v0, 0x46180400    # 9729.0f

    .line 40
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    .line 42
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v0, 0x47012f00    # 33071.0f

    .line 44
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 46
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 49
    invoke-static {v2, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    invoke-static {v2, v3, v3, v3, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    aput p1, v1, v3

    :goto_0
    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    :cond_1
    aget p0, v1, v3

    return p0
.end method

.method public static loadTexture(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 23

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xde1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 64
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 65
    aget v1, v3, v4

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 66
    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    .line 68
    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 70
    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    .line 72
    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    .line 74
    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    move-object/from16 v14, p0

    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 78
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v20, 0x1908

    const/16 v21, 0x1401

    move/from16 v18, v2

    move/from16 v19, v0

    move-object/from16 v22, p0

    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    aput v1, v3, v4

    .line 82
    :goto_0
    aget v0, v3, v4

    return v0
.end method

.method public static loadTextureAsBitmap(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 2

    .line 87
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p0

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 88
    invoke-static {p0, p2}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method

.method public static rnd(FF)F
    .locals 2

    .line 138
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p1, p0

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    return p0
.end method
