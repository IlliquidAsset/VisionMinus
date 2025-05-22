.class public Ljp/co/cyberagent/android/gpuimage/GPUImage;
.super Ljava/lang/Object;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field private mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 65
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->supportsOpenGLES2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    .line 70
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 71
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-direct {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OpenGL ES 2.0 is not supported on this phone."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 0

    .line 51
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object p0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .locals 0

    .line 51
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    return-object p0
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    .locals 0

    .line 51
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    return-object p0
.end method

.method public static getBitmapForMultipleFilters(Landroid/graphics/Bitmap;Ljava/util/List;Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;",
            "Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 338
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 342
    invoke-virtual {v0, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 343
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {v1, v2, p0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    .line 344
    invoke-virtual {v1, v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 346
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 347
    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 348
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p2, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;->response(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->destroy()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 352
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    return-void
.end method

.method private getOutputHeight()I
    .locals 2

    .line 419
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v0

    return v0

    .line 421
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 424
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 426
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method private getOutputWidth()I
    .locals 2

    .line 406
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v0

    return v0

    .line 408
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 411
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 413
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    .line 252
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 255
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 256
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 257
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 259
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private setUpCameraGingerbread(Landroid/hardware/Camera;)V
    .locals 1

    .line 166
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setUpSurfaceTexture(Landroid/hardware/Camera;)V

    return-void
.end method

.method private supportsOpenGLES2(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 84
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    .line 85
    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    .line 228
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 230
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public getBitmapWithFilterApplied()Landroid/graphics/Bitmap;
    .locals 1

    .line 272
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 282
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 284
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;

    invoke-direct {v1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 294
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    monitor-enter v0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :try_start_1
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 299
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 301
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 304
    :cond_0
    :goto_1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 305
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .line 306
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedHorizontally()Z

    move-result v2

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedVertically()Z

    move-result v3

    .line 305
    invoke-virtual {v0, v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    .line 307
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 308
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    .line 309
    invoke-virtual {v1, v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v2, 0x0

    .line 310
    invoke-virtual {v0, p1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 311
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 312
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;->destroy()V

    .line 313
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 314
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    .line 316
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 317
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 318
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v1, v0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 320
    :cond_1
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-object p1
.end method

.method public requestRender()V
    .locals 1

    .line 118
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 402
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDrawEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    new-instance v6, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1

    .line 111
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setBackgroundColor(FFF)V

    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1

    .line 176
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 177
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 178
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 8

    .line 94
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x2

    .line 95
    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 96
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 97
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 98
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 99
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 100
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 187
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 188
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 189
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 1

    .line 239
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/net/Uri;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 1

    .line 248
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljava/io/File;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V
    .locals 1

    .line 212
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V
    .locals 1

    .line 221
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1

    .line 199
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mScaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 200
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 201
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 203
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0, v0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;IZZ)V

    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;IZZ)V
    .locals 2

    .line 142
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCameraGingerbread(Landroid/hardware/Camera;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 147
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 149
    :goto_0
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/Rotation;

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    goto :goto_1

    .line 155
    :cond_2
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/Rotation;

    goto :goto_1

    .line 152
    :cond_3
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    .line 161
    :goto_1
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRenderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p2, p1, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotationCamera(Ljp/co/cyberagent/android/gpuimage/Rotation;ZZ)V

    return-void
.end method
