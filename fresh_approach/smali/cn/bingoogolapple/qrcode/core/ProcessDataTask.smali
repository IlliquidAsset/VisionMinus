.class Lcn/bingoogolapple/qrcode/core/ProcessDataTask;
.super Landroid/os/AsyncTask;
.source "ProcessDataTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcn/bingoogolapple/qrcode/core/ScanResult;",
        ">;"
    }
.end annotation


# static fields
.field private static sLastStartTime:J


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCamera:Landroid/hardware/Camera;

.field private mData:[B

.field private mIsPortrait:Z

.field private mPicturePath:Ljava/lang/String;

.field private mQRCodeViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/bingoogolapple/qrcode/core/QRCodeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mQRCodeViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>(Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/QRCodeView;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mCamera:Landroid/hardware/Camera;

    .line 21
    iput-object p2, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    .line 22
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mQRCodeViewRef:Ljava/lang/ref/WeakReference;

    .line 23
    iput-boolean p4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mIsPortrait:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mPicturePath:Ljava/lang/String;

    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mQRCodeViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processData(Lcn/bingoogolapple/qrcode/core/QRCodeView;)Lcn/bingoogolapple/qrcode/core/ScanResult;
    .locals 12

    .line 56
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    :try_start_0
    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 66
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :try_start_1
    iget v4, v4, Landroid/hardware/Camera$Size;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :try_start_2
    iget-boolean v6, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mIsPortrait:Z

    if-eqz v6, :cond_3

    .line 70
    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    array-length v6, v6

    new-array v0, v6, [B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    mul-int v8, v7, v4

    add-int/2addr v8, v4

    sub-int/2addr v8, v6

    sub-int/2addr v8, v2

    .line 73
    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    mul-int v10, v6, v5

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v11, v5

    move v5, v4

    move v4, v11

    .line 81
    :cond_3
    invoke-virtual {p1, v0, v5, v4, v3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->processData([BIIZ)Lcn/bingoogolapple/qrcode/core/ScanResult;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v3, v4

    const/4 v4, 0x0

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 83
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    :try_start_3
    const-string v3, "\u8bc6\u522b\u5931\u8d25\u91cd\u8bd5"

    .line 86
    invoke-static {v3}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v0, v5, v4, v2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->processData([BIIZ)Lcn/bingoogolapple/qrcode/core/ScanResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v1
.end method


# virtual methods
.method cancelTask()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcn/bingoogolapple/qrcode/core/ScanResult;
    .locals 5

    .line 100
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mQRCodeViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/bingoogolapple/qrcode/core/QRCodeView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 106
    invoke-static {v1}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->getDecodeAbleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->processBitmapData(Landroid/graphics/Bitmap;)Lcn/bingoogolapple/qrcode/core/ScanResult;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p1, v1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->processBitmapData(Landroid/graphics/Bitmap;)Lcn/bingoogolapple/qrcode/core/ScanResult;

    move-result-object p1

    .line 109
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1

    .line 112
    :cond_2
    invoke-static {}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e24\u6b21\u4efb\u52a1\u6267\u884c\u7684\u65f6\u95f4\u95f4\u9694\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->sLastStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->sLastStartTime:J

    .line 116
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->processData(Lcn/bingoogolapple/qrcode/core/QRCodeView;)Lcn/bingoogolapple/qrcode/core/ScanResult;

    move-result-object p1

    .line 120
    invoke-static {}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    if-eqz p1, :cond_4

    .line 122
    iget-object v0, p1, Lcn/bingoogolapple/qrcode/core/ScanResult;->result:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bc6\u522b\u6210\u529f\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bc6\u522b\u5931\u8d25\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bingoogolapple/qrcode/core/BGAQRCodeUtil;->e(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->doInBackground([Ljava/lang/Void;)Lcn/bingoogolapple/qrcode/core/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 50
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mQRCodeViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    return-void
.end method

.method protected onPostExecute(Lcn/bingoogolapple/qrcode/core/ScanResult;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mQRCodeViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mPicturePath:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->onPostParseData(Lcn/bingoogolapple/qrcode/core/ScanResult;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 142
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->onPostParseBitmapOrPicture(Lcn/bingoogolapple/qrcode/core/ScanResult;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcn/bingoogolapple/qrcode/core/ScanResult;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->onPostExecute(Lcn/bingoogolapple/qrcode/core/ScanResult;)V

    return-void
.end method

.method perform()Lcn/bingoogolapple/qrcode/core/ProcessDataTask;
    .locals 2

    .line 37
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method
