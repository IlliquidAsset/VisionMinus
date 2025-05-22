.class public Lcom/lewis/edit/utils/mp4/FrameBufferTool;
.super Ljava/lang/Object;
.source "FrameBufferTool.java"


# instance fields
.field private lastHeight:I

.field private lastWidth:I

.field private mFrameTemp:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->lastWidth:I

    iput v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->lastHeight:I

    return-void
.end method


# virtual methods
.method public bindFrameBuffer()I
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const v1, 0x8ca6

    const/4 v2, 0x3

    .line 98
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const v0, 0x8d40

    .line 99
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 100
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    return v0
.end method

.method public bindFrameBuffer(II)I
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->bindFrameBuffer(IIZ)I

    move-result p1

    return p1
.end method

.method public bindFrameBuffer(IIZ)I
    .locals 11

    .line 32
    iget v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->lastWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->lastHeight:I

    if-eq v0, p2, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->destroyFrameBuffer()V

    .line 34
    iput p1, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->lastWidth:I

    .line 35
    iput p2, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->lastHeight:I

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    if-nez v0, :cond_2

    const/16 v5, 0xde1

    const/16 v6, 0x1908

    const/16 v7, 0x2601

    const/16 v8, 0x2601

    const v9, 0x812f

    const v10, 0x812f

    move-object v1, p0

    move v2, p3

    move v3, p1

    move v4, p2

    .line 38
    invoke-virtual/range {v1 .. v10}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->createFrameBuffer(ZIIIIIIII)I

    move-result p1

    return p1

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->bindFrameBuffer()I

    move-result p1

    return p1
.end method

.method public createFrameBuffer(ZIIIIIIII)I
    .locals 13

    move-object v0, p0

    move/from16 v10, p4

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 61
    iput-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 62
    invoke-static {v11, v1, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 63
    iget-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    invoke-static {v11, v1, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 64
    iget-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    aget v1, v1, v11

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move/from16 v1, p4

    move/from16 v3, p5

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    .line 65
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2801

    move/from16 v2, p6

    .line 68
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    move/from16 v2, p7

    .line 70
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    move/from16 v2, p8

    .line 72
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    move/from16 v2, p9

    .line 74
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 76
    iget-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    const v2, 0x8ca6

    const/4 v3, 0x3

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 77
    iget-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    aget v1, v1, v12

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 78
    iget-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    aget v1, v1, v11

    const v3, 0x8ce0

    invoke-static {v2, v3, v10, v1, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    if-eqz p1, :cond_0

    .line 81
    iget-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    const/4 v3, 0x2

    invoke-static {v11, v1, v3}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 82
    iget-object v1, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    aget v1, v1, v3

    const v4, 0x8d41

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    move v5, p2

    move/from16 v6, p3

    .line 83
    invoke-static {v4, v1, p2, v6}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v1, 0x8d00

    .line 84
    iget-object v5, v0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    aget v3, v5, v3

    invoke-static {v2, v1, v4, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 86
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    return v1
.end method

.method public destroyFrameBuffer()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 126
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 127
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    invoke-static {v2, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 128
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    const/4 v1, 0x2

    aget v3, v0, v1

    if-lez v3, :cond_0

    .line 129
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    :cond_0
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    :cond_1
    return-void
.end method

.method public getCacheTextureId()I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public unBindFrameBuffer()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->mFrameTemp:[I

    if-eqz v0, :cond_0

    const v1, 0x8d40

    const/4 v2, 0x3

    .line 108
    aget v0, v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_0
    return-void
.end method
