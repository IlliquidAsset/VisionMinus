.class public Lcom/powervision/livestreaming/tools/GLESTools;
.super Ljava/lang/Object;
.source "GLESTools.java"


# static fields
.field public static FLOAT_SIZE_BYTES:I = 0x0

.field public static final NO_TEXTURE:I = -0x1

.field public static SHORT_SIZE_BYTES:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/powervision/livestreaming/tools/GLESTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/livestreaming/tools/GLESTools;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    .line 18
    sput v0, Lcom/powervision/livestreaming/tools/GLESTools;->FLOAT_SIZE_BYTES:I

    const/4 v0, 0x2

    .line 19
    sput v0, Lcom/powervision/livestreaming/tools/GLESTools;->SHORT_SIZE_BYTES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    sget-object v0, Lcom/powervision/livestreaming/tools/GLESTools;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFrameBuff([I[III)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 111
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 112
    aget v0, p1, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v6, p2

    move v7, p3

    .line 113
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const-string p2, "createCamFrameBuff"

    .line 114
    invoke-static {p2}, Lcom/powervision/livestreaming/tools/GLESTools;->checkGlError(Ljava/lang/String;)V

    const/16 p3, 0x2800

    const v0, 0x46180400    # 9729.0f

    .line 115
    invoke-static {v2, p3, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 117
    invoke-static {v2, p3, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const v0, 0x47012f00    # 33071.0f

    .line 119
    invoke-static {v2, p3, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 121
    invoke-static {v2, p3, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 123
    aget p0, p0, v1

    const p3, 0x8d40

    invoke-static {p3, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 124
    aget p0, p1, v1

    const p1, 0x8ce0

    invoke-static {p3, p1, v2, p0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 125
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 126
    invoke-static {p3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 127
    invoke-static {p2}, Lcom/powervision/livestreaming/tools/GLESTools;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static createProgram(Landroid/content/res/Resources;II)I
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/powervision/livestreaming/tools/GLESTools;->readTextFile(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p0, p2}, Lcom/powervision/livestreaming/tools/GLESTools;->readTextFile(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p1, p0}, Lcom/powervision/livestreaming/tools/GLESTools;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const v0, 0x8b31

    .line 48
    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const v1, 0x8b30

    .line 49
    invoke-static {v1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 51
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 52
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 54
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const p1, 0x8b81

    const/4 v2, 0x0

    .line 55
    invoke-static {v0, p1, p0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 56
    aget v3, p0, v2

    if-eqz v3, :cond_2

    .line 59
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 60
    invoke-static {v1, p1, p0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 61
    aget p1, p0, v2

    if-eqz p1, :cond_1

    .line 64
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    .line 65
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 66
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 67
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v0, 0x8b82

    .line 68
    invoke-static {p1, v0, p0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 69
    aget p0, p0, v2

    if-eqz p0, :cond_0

    return p1

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link program,failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment shader compile,failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vertext shader compile,failed:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "invalid shader code"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 89
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 90
    aget p1, v1, v3

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const v0, 0x46180400    # 9729.0f

    .line 91
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    .line 93
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v0, 0x47012f00    # 33071.0f

    .line 95
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 97
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 99
    invoke-static {v2, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 100
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    invoke-static {v2, v3, v3, v3, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    aput p1, v1, v3

    .line 106
    :goto_0
    aget p0, v1, v3

    return p0
.end method

.method public static readTextFile(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 23
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
