.class public Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;
.super Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
.source "GPUImageFilterGroup.java"


# instance fields
.field protected mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameBufferTextures:[I

.field private mFrameBuffers:[I

.field private final mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private final mGLTextureFlipBuffer:Ljava/nio/FloatBuffer;

.field protected mMergedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>()V

    .line 60
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->updateMergedFilters()V

    .line 67
    :goto_0
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 70
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 73
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 75
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)[F

    move-result-object p1

    .line 78
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureFlipBuffer:Ljava/nio/FloatBuffer;

    .line 81
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private destroyFramebuffers()V
    .locals 4

    .line 118
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 119
    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 120
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    .line 122
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 123
    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 124
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    :cond_1
    return-void
.end method


# virtual methods
.method public addFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->updateMergedFilters()V

    return-void
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getMergedFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->destroyFramebuffers()V

    .line 111
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 112
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->destroy()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDestroy()V

    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    .line 185
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->runPendingOnDrawTasks()V

    .line 186
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    if-nez v0, :cond_0

    goto :goto_4

    .line 189
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    .line 193
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const v6, 0x8d40

    if-eqz v5, :cond_2

    .line 196
    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    aget v7, v7, v2

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v7, 0x0

    .line 197
    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    :cond_2
    if-nez v2, :cond_3

    .line 201
    invoke-virtual {v3, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_3

    :cond_3
    if-ne v2, v4, :cond_5

    .line 203
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_4

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureFlipBuffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_4
    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    :goto_2
    invoke-virtual {v3, p1, v4, v7}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_3

    .line 205
    :cond_5
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, p1, v4, v7}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_3
    if-eqz v5, :cond_6

    .line 209
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 210
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    aget p1, p1, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public onInit()V
    .locals 2

    .line 98
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onInit()V

    .line 99
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 100
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 136
    invoke-super/range {p0 .. p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 137
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    if-eqz v1, :cond_0

    .line 138
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->destroyFramebuffers()V

    .line 141
    :cond_0
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 143
    iget-object v4, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual {v4, v14, v15}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move/from16 v14, p1

    move/from16 v15, p2

    .line 146
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 147
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 148
    new-array v4, v1, [I

    iput-object v4, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    .line 149
    new-array v4, v1, [I

    iput-object v4, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    .line 152
    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 153
    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 154
    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    aget v5, v5, v4

    const/16 v13, 0xde1

    invoke-static {v13, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/16 v16, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    const/16 v3, 0xde1

    move-object/from16 v13, v16

    .line 155
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v5, 0x2800

    const v6, 0x46180400    # 9729.0f

    .line 157
    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2801

    .line 159
    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    const v6, 0x47012f00    # 33071.0f

    .line 161
    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2803

    .line 163
    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 166
    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBuffers:[I

    aget v5, v5, v4

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    .line 167
    iget-object v7, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFrameBufferTextures:[I

    aget v7, v7, v4

    invoke-static {v6, v5, v3, v7, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 170
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateMergedFilters()V
    .locals 3

    .line 230
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    goto :goto_0

    .line 237
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 242
    instance-of v2, v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;

    if-eqz v2, :cond_4

    .line 243
    check-cast v1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->updateMergedFilters()V

    .line 244
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->getMergedFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 245
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 247
    :cond_3
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 250
    :cond_4
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;->mMergedFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method
