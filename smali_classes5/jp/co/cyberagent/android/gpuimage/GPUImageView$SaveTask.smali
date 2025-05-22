.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;
.super Landroid/os/AsyncTask;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
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


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mFolderName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private final mListener:Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

.field private final mWidth:I

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 0

    .line 415
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 416
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFolderName:Ljava/lang/String;

    .line 417
    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFileName:Ljava/lang/String;

    .line 418
    iput p4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mWidth:I

    .line 419
    iput p5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHeight:I

    .line 420
    iput-object p6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .line 421
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 411
    invoke-direct/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    return-void
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;
    .locals 0

    .line 401
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mListener:Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    return-object p0
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)Landroid/os/Handler;
    .locals 0

    .line 401
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 436
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 437
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 438
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 440
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 441
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x50

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 442
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x0

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;

    invoke-direct {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)V

    .line 442
    invoke-static {p1, p2, p3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 461
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 401
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 427
    :try_start_0
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mWidth:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mWidth:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mHeight:I

    invoke-virtual {p1, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture(II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 428
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFolderName:Ljava/lang/String;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
