.class public abstract Lcom/lewis/edit/utils/mp4/BaseGLFilter;
.super Ljava/lang/Object;
.source "BaseGLFilter.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/Renderer;


# instance fields
.field private TEXTURE_MATRIX:[F

.field private VERTEX_MATRIX:[F

.field private mFragmentShader:Ljava/lang/String;

.field private mFrameTool:Lcom/lewis/edit/utils/mp4/FrameBufferTool;

.field protected mGLProgram:I

.field protected mGLTexture:I

.field private mGLTextureCo:I

.field private mGLTextureMatrix:I

.field private mGLVertexCo:I

.field private mGLVertexMatrix:I

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/lewis/edit/utils/mp4/MatrixUtils;->getOriginalMatrix()[F

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->VERTEX_MATRIX:[F

    .line 19
    invoke-static {}, Lcom/lewis/edit/utils/mp4/MatrixUtils;->getOriginalMatrix()[F

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->TEXTURE_MATRIX:[F

    .line 54
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexShader:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mFragmentShader:Ljava/lang/String;

    .line 56
    new-instance p1, Lcom/lewis/edit/utils/mp4/FrameBufferTool;

    invoke-direct {p1}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mFrameTool:Lcom/lewis/edit/utils/mp4/FrameBufferTool;

    .line 57
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->initBuffer()V

    return-void
.end method

.method private initBuffer()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->VERTEX_MATRIX:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/lewis/edit/utils/mp4/MatrixUtils;->getOriginalVertexCo()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->TEXTURE_MATRIX:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/lewis/edit/utils/mp4/MatrixUtils;->getOriginalTextureCo()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 75
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private onGenericDraw()V
    .locals 7

    .line 167
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLVertexCo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 177
    iget v1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLVertexCo:I

    iget-object v6, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 180
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTextureCo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 182
    iget v1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTextureCo:I

    iget-object v6, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 185
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 187
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLVertexCo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 188
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTextureCo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method


# virtual methods
.method public final create()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mFragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->onCreate()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mFrameTool:Lcom/lewis/edit/utils/mp4/FrameBufferTool;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->destroyFrameBuffer()V

    .line 150
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public draw(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 136
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 138
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 140
    invoke-virtual {p0}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->onSetExpandData()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->onBindTexture(I)V

    .line 144
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->onGenericDraw()V

    return-void
.end method

.method public getTextureMatrix()[F
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->TEXTURE_MATRIX:[F

    return-object v0
.end method

.method public getVertexMatrix()[F
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->VERTEX_MATRIX:[F

    return-object v0
.end method

.method protected onBindTexture(I)V
    .locals 1

    const v0, 0x84c0

    .line 195
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 196
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 197
    iget p1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTexture:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method protected onCreate()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lewis/edit/utils/ShaderHelper;->createAndLinkProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLProgram:I

    const-string v1, "aVertexCo"

    .line 103
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLVertexCo:I

    .line 104
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLProgram:I

    const-string v1, "aTextureCo"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTextureCo:I

    .line 106
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLProgram:I

    const-string v1, "uVertexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLVertexMatrix:I

    .line 107
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLProgram:I

    const-string v1, "uTextureMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTextureMatrix:I

    .line 108
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLProgram:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTexture:I

    return-void
.end method

.method protected onSetExpandData()V
    .locals 4

    .line 158
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLVertexMatrix:I

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->VERTEX_MATRIX:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 159
    iget v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mGLTextureMatrix:I

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->TEXTURE_MATRIX:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public setTextureCo([F)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 93
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setVertexCo([F)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 83
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 84
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/BaseGLFilter;->mFrameTool:Lcom/lewis/edit/utils/mp4/FrameBufferTool;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->destroyFrameBuffer()V

    return-void
.end method
