.class Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;
.super Ljava/lang/Object;
.source "PVW4FirmwareDownloadFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->downLoadRemote(Lcom/powervision/gcs/manager/W4Firmware;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

.field final synthetic val$localFile:Ljava/io/File;

.field final synthetic val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Ljava/lang/String;Ljava/io/File;Lcom/powervision/gcs/manager/W4Firmware;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iput-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    iput-object p4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 269
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-boolean p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget p2, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "url "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4e0b\u8f7d\u5230\u4e86\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqW4_r"

    invoke-static {p2, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget v1, v1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->RETRYRANGE:I

    if-ge p1, v1, :cond_2

    const-string p1, " \u4e0b\u8f7d\u5931\u8d25\uff01 \u91cd\u65b0\u4e0b\u8f7d"

    .line 279
    invoke-static {p2, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->downLoadRemote(Lcom/powervision/gcs/manager/W4Firmware;)V

    goto :goto_1

    :cond_2
    const-string p1, " \u4e0b\u8f7d\u5931\u8d25\uff01\uff01\uff01\uff012"

    .line 284
    invoke-static {p2, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_3

    .line 288
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    sget v1, Lcom/powervision/gcs/R$string;->download_failed:I

    invoke-virtual {p2, v1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onFailed(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "lzqW4_r"

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/FileUtil;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-wide v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->content_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 308
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->content_length:J

    :cond_1
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 312
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    .line 313
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 317
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    const-string v4, "rwd"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-boolean v4, v4, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 321
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 326
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-wide v3, v3, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->haveDownLoadFileSize:J

    iget-object v5, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-wide v4, v4, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->content_length:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    .line 327
    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {v4}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v4, v4, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_2

    .line 328
    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v4, v4, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_2

    .line 329
    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v4, v4, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    new-instance v5, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;

    invoke-direct {v5, p0, v3}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1$1;-><init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;F)V

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 346
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 348
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object p2, p2, Lcom/powervision/gcs/manager/W4Firmware;->md5:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-static {v0}, Lcom/powervision/gcs/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " content_length:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-wide v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->content_length:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-wide v0, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->haveDownLoadFileSize:J

    iget-object v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->haveDownLoadFileSize:J

    .line 360
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->clearRemoteDir(Lcom/powervision/gcs/manager/W4Firmware;)V

    .line 361
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->rename_Remote(Lcom/powervision/gcs/manager/W4Firmware;)V

    .line 362
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->unZipFirware(Lcom/powervision/gcs/manager/W4Firmware;)V

    goto :goto_1

    :cond_4
    const-string p2, "md5\u6821\u9a8c\u5931\u8d25"

    .line 352
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 365
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-boolean v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    if-nez v0, :cond_5

    return-void

    .line 368
    :cond_5
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "md5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 369
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->haveDownLoadFileSize:J

    .line 370
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$localFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 373
    :cond_6
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget v0, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    .line 376
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget p2, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->RETRYRANGE:I

    if-ge p2, v0, :cond_7

    const-string p2, " \u4e0b\u8f7d\u5931\u8d25 \u91cd\u8bd51"

    .line 379
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->val$remoteFirmIno:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->downLoadRemote(Lcom/powervision/gcs/manager/W4Firmware;)V

    goto :goto_1

    :cond_7
    const-string p2, " \u4e0b\u8f7d\u5931\u8d25\uff01\uff01\uff01\uff01"

    .line 384
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_8

    .line 386
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    sget v0, Lcom/powervision/gcs/R$string;->download_failed:I

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onFailed(ILjava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method
