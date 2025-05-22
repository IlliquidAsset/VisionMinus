.class Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;
.super Landroid/os/AsyncTask;
.source "MGPUImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/widgets/MGPUImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTempTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFileName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

.field final synthetic this$0:Lcom/lewis/edit/widgets/MGPUImage;


# direct methods
.method public constructor <init>(Lcom/lewis/edit/widgets/MGPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->this$0:Lcom/lewis/edit/widgets/MGPUImage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    iput-object p3, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mFileName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    .line 64
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->this$0:Lcom/lewis/edit/widgets/MGPUImage;

    invoke-static {v1}, Lcom/lewis/edit/widgets/MGPUImage;->access$000(Lcom/lewis/edit/widgets/MGPUImage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, p1, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    iget-object p1, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/lewis/edit/widgets/-$$Lambda$MGPUImage$SaveTempTask$SBvi4TXL_DaVXmoDUdR_PDBPFwE;

    invoke-direct {p2, p0, v0}, Lcom/lewis/edit/widgets/-$$Lambda$MGPUImage$SaveTempTask$SBvi4TXL_DaVXmoDUdR_PDBPFwE;-><init>(Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;Ljava/io/File;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->this$0:Lcom/lewis/edit/widgets/MGPUImage;

    iget-object v0, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/widgets/MGPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 70
    iget-object p1, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mFileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$saveImage$0$MGPUImage$SaveTempTask(Ljava/io/File;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;->onPictureSaved(Landroid/net/Uri;)V

    return-void
.end method
