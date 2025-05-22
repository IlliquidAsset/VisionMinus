.class public Lcom/lewis/edit/widgets/GLVideoRenderer;
.super Ljava/lang/Object;
.source "GLVideoRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/lewis/edit/utils/mp4/ColorMixingInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;
    }
.end annotation


# static fields
.field private static final TEXTURE_VERTEX_DATA:[F

.field private static final VERTEX_DATA:[F


# instance fields
.field private mBrightness:F

.field private mColorTem:F

.field private mContext:Landroid/content/Context;

.field private mContrast:F

.field private mGLBrightness:I

.field private mGLColorTem:I

.field private mGLContrast:I

.field private mGLProgramId:I

.field private mGLSaturation:I

.field private mGLSharpness:I

.field private mGLTexture:I

.field private mGLTextureCo:I

.field private mGLTextureMatrix:I

.field private mGLVertexCo:I

.field private mGLVertexMatrix:I

.field private mGLVignette:I

.field private mGlSurface:Landroid/opengl/GLSurfaceView;

.field private mMediaCompletionListener:Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSaturation:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSharpness:F

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTexVertexBuffer:Ljava/nio/FloatBuffer;

.field private mTextureData:[I

.field private mTextureName:I

.field private final mUMatrix:[F

.field private mUSTMatrix:[F

.field private mUpdateSurfaceFlag:Z

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVignette:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->VERTEX_DATA:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 51
    fill-array-data v0, :array_1

    sput-object v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->TEXTURE_VERTEX_DATA:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 49
    iput-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUMatrix:[F

    new-array v0, v0, [F

    .line 73
    iput-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUSTMatrix:[F

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mBrightness:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iput v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mContrast:F

    .line 86
    iput v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSaturation:F

    .line 89
    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mColorTem:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 92
    iput v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mVignette:F

    .line 95
    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSharpness:F

    .line 103
    iput-object p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGlSurface:Landroid/opengl/GLSurfaceView;

    .line 105
    monitor-enter p0

    const/4 p1, 0x0

    .line 106
    :try_start_0
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUpdateSurfaceFlag:Z

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sget-object p2, Lcom/lewis/edit/widgets/GLVideoRenderer;->VERTEX_DATA:[F

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 110
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    sget-object v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->VERTEX_DATA:[F

    .line 112
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 113
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    sget-object p2, Lcom/lewis/edit/widgets/GLVideoRenderer;->TEXTURE_VERTEX_DATA:[F

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 116
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 117
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    sget-object v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->TEXTURE_VERTEX_DATA:[F

    .line 118
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTexVertexBuffer:Ljava/nio/FloatBuffer;

    .line 119
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iput-object p3, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaCompletionListener:Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;

    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private initShaderData()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mContext:Landroid/content/Context;

    sget v1, Lcom/lewis/edit/R$raw;->vertex_sharder:I

    invoke-static {v0, v1}, Lcom/lewis/edit/utils/ShaderHelper;->readTextFileFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mContext:Landroid/content/Context;

    sget v2, Lcom/lewis/edit/R$raw;->fragment_sharder:I

    invoke-static {v1, v2}, Lcom/lewis/edit/utils/ShaderHelper;->readTextFileFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/lewis/edit/utils/ShaderHelper;->createAndLinkProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "aVertexCo"

    .line 193
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLVertexCo:I

    .line 194
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "aTextureCo"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLTextureCo:I

    .line 197
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uVertexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLVertexMatrix:I

    .line 198
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uTextureMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLTextureMatrix:I

    .line 199
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLTexture:I

    .line 201
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uBrightness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLBrightness:I

    .line 203
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uContrast"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLContrast:I

    .line 205
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uSaturation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLSaturation:I

    .line 207
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uTemperature"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLColorTem:I

    .line 209
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uVignette"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLVignette:I

    .line 211
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    const-string v1, "uSharpness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLSharpness:I

    return-void
.end method

.method private updateProjection(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 365
    iget v1, v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v2, p1

    int-to-float v2, v2

    move/from16 v3, p2

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    .line 368
    iget-object v4, v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUMatrix:[F

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    neg-float v3, v2

    div-float v8, v3, v1

    div-float v9, v2, v1

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v12, v0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUMatrix:[F

    const/4 v13, 0x0

    neg-float v3, v1

    div-float v14, v3, v2

    div-float v15, v1, v2

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :goto_0
    return-void
.end method

.method private workShaderData()V
    .locals 8

    .line 293
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLVertexCo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 305
    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLVertexCo:I

    iget-object v7, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 309
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTexVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLTextureCo:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 313
    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLTextureCo:I

    iget-object v7, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTexVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v6, 0x8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c0

    .line 317
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 319
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTextureName:I

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 321
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 323
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLBrightness:I

    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mBrightness:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 325
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLContrast:I

    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mContrast:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 327
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLSaturation:I

    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSaturation:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 329
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLColorTem:I

    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mColorTem:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 331
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLVignette:I

    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mVignette:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 333
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLSharpness:I

    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSharpness:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 335
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mScreenHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 337
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public createTexFun()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 219
    iput-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTextureData:[I

    const/4 v2, 0x0

    .line 221
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 223
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTextureData:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTextureName:I

    const v1, 0x8d65

    .line 225
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 235
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 238
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 241
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTextureName:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 243
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 246
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 248
    iget-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 250
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public destroyRenderer()V
    .locals 1

    .line 458
    iget v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 459
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->workMediaDestroy()V

    .line 460
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method public getMediaPlayState()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlayCurrentPosition()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initMediaPlayer(Ljava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    .line 151
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 153
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 155
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 162
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 163
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    :goto_1
    iget-object p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 168
    iget-object p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/lewis/edit/widgets/-$$Lambda$jX_tASEdjv03obJy5rjdfXVUzvw;->INSTANCE:Lcom/lewis/edit/widgets/-$$Lambda$jX_tASEdjv03obJy5rjdfXVUzvw;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 169
    iget-object p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 488
    iget-object p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaCompletionListener:Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;

    if-eqz p1, :cond_0

    .line 489
    invoke-interface {p1}, Lcom/lewis/edit/widgets/GLVideoRenderer$OnVideoMediaCompletionListener;->onVideoMediaCompletion()V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const-string p1, "gl-renderer = "

    const-string v0, "onDrawFrame"

    .line 265
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4100

    .line 267
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUpdateSurfaceFlag:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 275
    iget-object p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUSTMatrix:[F

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 276
    iput-boolean v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUpdateSurfaceFlag:Z

    .line 278
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLProgramId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 282
    iget p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLVertexMatrix:I

    iget-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUMatrix:[F

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 283
    iget p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mGLTextureMatrix:I

    iget-object v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUSTMatrix:[F

    invoke-static {p1, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 285
    invoke-direct {p0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->workShaderData()V

    return-void

    :catchall_0
    move-exception p1

    .line 278
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "gl-renderer = "

    const-string v0, "onFrameAvailable"

    .line 345
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mUpdateSurfaceFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const-string p1, "gl-renderer = "

    const-string v0, "onSurfaceChange"

    .line 258
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput p2, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mScreenWidth:I

    .line 260
    iput p3, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mScreenHeight:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const-string p1, "gl-renderer = "

    const-string p2, "onSurfaceCreated"

    .line 174
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->initShaderData()V

    .line 178
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/GLVideoRenderer;->createTexFun()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    const-string p1, "gl-renderer = "

    const-string v0, "onVideoSizeChanged"

    .line 354
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0, p2, p3}, Lcom/lewis/edit/widgets/GLVideoRenderer;->updateProjection(II)V

    return-void
.end method

.method public pauseVideoPlay()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .line 382
    iput p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mBrightness:F

    return-void
.end method

.method public setColorInit()V
    .locals 2

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mBrightness:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 131
    iput v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mContrast:F

    .line 133
    iput v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSaturation:F

    .line 135
    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mColorTem:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 137
    iput v1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mVignette:F

    .line 139
    iput v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSharpness:F

    return-void
.end method

.method public setColorTem(F)V
    .locals 0

    .line 412
    iput p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mColorTem:F

    return-void
.end method

.method public setContrast(F)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mContrast:F

    return-void
.end method

.method public setSaturation(F)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSaturation:F

    return-void
.end method

.method public setSharpness(F)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mSharpness:F

    return-void
.end method

.method public setVignette(F)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mVignette:F

    return-void
.end method

.method public startVideoPlay()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public workMediaDestroy()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mTextureData:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 471
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/lewis/edit/widgets/GLVideoRenderer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method
