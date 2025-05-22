.class public Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.super Landroid/widget/FrameLayout;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$LoadingView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;
    }
.end annotation


# instance fields
.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

.field public mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    .line 51
    invoke-direct {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    .line 56
    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 41
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 61
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->addView(Landroid/view/View;)V

    .line 62
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .line 63
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public capture()Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 301
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 303
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getMeasuredWidth()I

    move-result v7

    .line 304
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getMeasuredHeight()I

    move-result v8

    mul-int v0, v7, v8

    .line 307
    new-array v9, v0, [I

    .line 308
    iget-object v10, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v11, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;

    move-object v0, v11

    move-object v1, p0

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;II[ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v10, v11}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 324
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 325
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 327
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0
.end method

.method public capture(II)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 236
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    invoke-direct {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;-><init>(II)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 238
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 241
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 252
    new-instance p2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;

    invoke-direct {p2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    .line 261
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 264
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p2, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 271
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 272
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 275
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mForceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 276
    new-instance p2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;

    invoke-direct {p2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    .line 282
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 284
    new-instance p2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;

    invoke-direct {p2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p2, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call this method from the UI thread!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 1

    .line 153
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method public getGPUImage()Ljp/co/cyberagent/android/gpuimage/GPUImage;
    .locals 1

    .line 96
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 68
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p1

    .line 74
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    div-float v2, v0, v1

    int-to-float v3, p2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    div-float/2addr v0, v1

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0

    :cond_0
    mul-float v3, v3, v1

    .line 79
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 82
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 83
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 336
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 343
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 184
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 8

    .line 219
    new-instance v7, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v7, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 1

    .line 200
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1

    .line 107
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setBackgroundColor(FFF)V

    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1

    .line 142
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 143
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 144
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 162
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 1

    .line 171
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/net/Uri;)V

    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 1

    .line 180
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Ljava/io/File;)V

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 112
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mRatio:F

    .line 113
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    .line 114
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->deleteImage()V

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V
    .locals 1

    .line 132
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setRotation(Ljp/co/cyberagent/android/gpuimage/Rotation;)V

    .line 133
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1

    .line 123
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    return-void
.end method
