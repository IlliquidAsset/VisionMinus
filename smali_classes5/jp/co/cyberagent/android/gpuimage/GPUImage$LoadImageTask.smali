.class abstract Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;)V
    .locals 0

    .line 572
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 573
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    return-void
.end method

.method private checkSize(ZZ)Z
    .locals 4

    .line 682
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$700(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    move-result-object v0

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private getScaleSize(II)[I
    .locals 6

    int-to-float p1, p1

    .line 665
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float p2, p2

    .line 666
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputHeight:I

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 668
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$700(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    move-result-object v2

    sget-object v3, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 672
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputHeight:I

    int-to-float v0, v0

    div-float p2, v0, p2

    mul-float p2, p2, p1

    goto :goto_2

    .line 675
    :cond_2
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputWidth:I

    int-to-float v0, v0

    div-float p1, v0, p1

    mul-float p1, p1, p2

    move p2, v0

    move v0, p1

    :goto_2
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 678
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    aput p2, p1, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    aput p2, p1, v4

    return-object p1
.end method

.method private loadResizedImage()Landroid/graphics/Bitmap;
    .locals 7

    .line 602
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 603
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 604
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 606
    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v2

    iget v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputWidth:I

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v2

    iget v6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputHeight:I

    if-le v4, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-direct {p0, v3, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->checkSize(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ge v2, v1, :cond_3

    const/4 v2, 0x1

    .line 614
    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 615
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 616
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 617
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const v1, 0x8000

    new-array v1, v1, [B

    .line 618
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 619
    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 623
    :cond_4
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->rotateImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 624
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private rotateImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 695
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->getImageOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 698
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 699
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 700
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    .line 699
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 704
    :goto_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 630
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 631
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 632
    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->getScaleSize(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 633
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {p1, v2, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 635
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 637
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object p1, v2

    .line 640
    :cond_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$700(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    move-result-object v2

    sget-object v4, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    if-ne v2, v4, :cond_1

    .line 642
    aget v2, v0, v1

    iget v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputWidth:I

    sub-int/2addr v2, v4

    .line 643
    aget v4, v0, v3

    iget v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputHeight:I

    sub-int/2addr v4, v5

    .line 644
    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v4, 0x2

    aget v1, v0, v1

    sub-int/2addr v1, v2

    aget v0, v0, v3

    sub-int/2addr v0, v4

    invoke-static {p1, v5, v6, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 647
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected abstract decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .line 578
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    move-result-object p1

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result p1

    if-nez p1, :cond_0

    .line 580
    :try_start_0
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    move-result-object p1

    iget-object p1, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :try_start_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    move-result-object v0

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 582
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 584
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 587
    :cond_0
    :goto_0
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$500(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I

    move-result p1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputWidth:I

    .line 588
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$600(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I

    move-result p1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mOutputHeight:I

    .line 589
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->loadResizedImage()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 565
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getImageOrientation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 594
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->deleteImage()V

    .line 596
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->mGPUImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 565
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
