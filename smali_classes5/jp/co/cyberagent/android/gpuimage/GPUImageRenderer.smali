.class public Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field static final CUBE:[F

.field public static final NO_IMAGE:I = -0x1


# instance fields
.field private mAddedPadding:I

.field private mBackgroundBlue:F

.field private mBackgroundGreen:F

.field private mBackgroundRed:F

.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

.field private mFlipHorizontal:Z

.field private mFlipVertical:Z

.field private final mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLRgbBuffer:Ljava/nio/IntBuffer;

.field private final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLTextureId:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

.field private final mRunOnDraw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunOnDrawEnd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

.field public final mSurfaceChangedWaiter:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundRed:F

    .line 77
    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundGreen:F

    .line 78
    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundBlue:F

    .line 81
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 82
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    .line 83
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    .line 85
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 88
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 93
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    invoke-virtual {p0, p1, v0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljava/nio/IntBuffer;
    .locals 0

    .line 44
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    return-object p0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 0

    .line 44
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    return p0
.end method

.method static synthetic access$102(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0

    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    return p1
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 0

    .line 44
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    return p0
.end method

.method static synthetic access$202(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0

    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    return p1
.end method

.method static synthetic access$302(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0

    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    return p1
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    return-void
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 44
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$502(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 44
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 0

    .line 44
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object p0
.end method

.method static synthetic access$602(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 0

    .line 44
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object p1
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 0

    .line 44
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    return p0
.end method

.method static synthetic access$800(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 0

    .line 44
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    return p0
.end method

.method static synthetic access$902(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0

    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mAddedPadding:I

    return p1
.end method

.method private addDistance(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :goto_0
    return p2
.end method

.method private adjustImageScaling()V
    .locals 15

    .line 271
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    int-to-float v0, v0

    .line 272
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    int-to-float v1, v1

    .line 273
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    sget-object v3, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    sget-object v3, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    if-ne v2, v3, :cond_1

    .line 274
    :cond_0
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    int-to-float v0, v0

    .line 275
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    int-to-float v1, v1

    .line 278
    :cond_1
    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 279
    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    int-to-float v3, v3

    div-float v3, v1, v3

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 281
    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 282
    iget v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    int-to-float v0, v2

    div-float/2addr v0, v1

    .line 287
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    .line 288
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    iget-boolean v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipHorizontal:Z

    iget-boolean v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipVertical:Z

    invoke-static {v2, v4, v5}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)[F

    move-result-object v2

    .line 289
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v4, v5, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    sub-float v3, v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    div-float v0, v4, v0

    sub-float/2addr v4, v0

    div-float/2addr v4, v5

    new-array v0, v6, [F

    .line 292
    aget v5, v2, v14

    .line 293
    invoke-direct {p0, v5, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v5

    aput v5, v0, v14

    aget v5, v2, v13

    invoke-direct {p0, v5, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v5

    aput v5, v0, v13

    aget v5, v2, v12

    .line 294
    invoke-direct {p0, v5, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v5

    aput v5, v0, v12

    aget v5, v2, v11

    invoke-direct {p0, v5, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v5

    aput v5, v0, v11

    aget v5, v2, v10

    .line 295
    invoke-direct {p0, v5, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v5

    aput v5, v0, v10

    aget v5, v2, v9

    invoke-direct {p0, v5, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v5

    aput v5, v0, v9

    aget v5, v2, v8

    .line 296
    invoke-direct {p0, v5, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v3

    aput v3, v0, v8

    aget v2, v2, v7

    invoke-direct {p0, v2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->addDistance(FF)F

    move-result v2

    aput v2, v0, v7

    move-object v2, v0

    goto :goto_0

    :cond_2
    new-array v1, v6, [F

    .line 299
    sget-object v4, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v4, v14

    div-float/2addr v5, v0

    aput v5, v1, v14

    aget v5, v4, v13

    div-float/2addr v5, v3

    aput v5, v1, v13

    aget v5, v4, v12

    div-float/2addr v5, v0

    aput v5, v1, v12

    aget v5, v4, v11

    div-float/2addr v5, v3

    aput v5, v1, v11

    aget v5, v4, v10

    div-float/2addr v5, v0

    aput v5, v1, v10

    aget v5, v4, v9

    div-float/2addr v5, v3

    aput v5, v1, v9

    aget v5, v4, v8

    div-float/2addr v5, v0

    aput v5, v1, v8

    aget v0, v4, v7

    div-float/2addr v0, v3

    aput v0, v1, v7

    .line 307
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 308
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 309
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 310
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private runAll(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 141
    monitor-enter p1

    .line 142
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 145
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    .line 209
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$4;

    invoke-direct {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$4;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getFrameHeight()I
    .locals 1

    .line 267
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    return v0
.end method

.method protected getFrameWidth()I
    .locals 1

    .line 263
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    return v0
.end method

.method public getRotation()Ljp/co/cyberagent/android/gpuimage/Rotation;
    .locals 1

    .line 335
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    return-object v0
.end method

.method public isFlippedHorizontally()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipHorizontal:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipVertical:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/16 p1, 0x4100

    .line 118
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 119
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    .line 120
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 121
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    .line 122
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 150
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 151
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    if-nez v1, :cond_0

    .line 152
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v1, v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    .line 154
    :cond_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;

    invoke-direct {v1, p0, p1, v0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;[BLandroid/hardware/Camera$Size;Landroid/hardware/Camera;)V

    invoke-virtual {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 105
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    .line 106
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    const/4 p1, 0x0

    .line 107
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 108
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->getProgram()I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 109
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 110
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    .line 111
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    monitor-enter p1

    .line 112
    :try_start_0
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 98
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundRed:F

    iget p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundGreen:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundBlue:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0xb71

    .line 99
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 100
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->init()V

    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    .line 347
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runOnDrawEnd(Ljava/lang/Runnable;)V
    .locals 2

    .line 353
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBackgroundColor(FFF)V
    .locals 0

    .line 135
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundRed:F

    .line 136
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundGreen:F

    .line 137
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mBackgroundBlue:F

    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1

    .line 192
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$3;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V
    .locals 0

    .line 323
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRotation:Ljp/co/cyberagent/android/gpuimage/Rotation;

    .line 324
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V
    .locals 0

    .line 329
    iput-boolean p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipHorizontal:Z

    .line 330
    iput-boolean p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mFlipVertical:Z

    .line 331
    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V

    return-void
.end method

.method public setRotationCamera(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V
    .locals 0

    .line 319
    invoke-virtual {p0, p1, p3, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 0

    .line 259
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    return-void
.end method

.method public setUpSurfaceTexture(Landroid/hardware/Camera;)V
    .locals 1

    .line 174
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/hardware/Camera;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
