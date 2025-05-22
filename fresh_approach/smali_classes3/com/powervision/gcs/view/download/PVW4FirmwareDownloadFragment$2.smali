.class Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;
.super Ljava/lang/Object;
.source "PVW4FirmwareDownloadFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->download(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

.field final synthetic val$allInfos:Ljava/util/List;

.field final synthetic val$firmwareInfo:Lcom/powervision/gcs/manager/W4Firmware;

.field final synthetic val$localFile:Ljava/io/File;

.field final synthetic val$totalsize:J


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Ljava/util/List;Ljava/io/File;JLcom/powervision/gcs/manager/W4Firmware;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iput-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    iput-wide p4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$totalsize:J

    iput-object p6, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$firmwareInfo:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    const-string p1, "lzqW4Firm"

    const-string p2, "onFailure"

    .line 502
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget v0, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    .line 506
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allInfos "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u5230\u4e86\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget p2, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget v0, v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->RETRYRANGE:I

    if-ge p2, v0, :cond_1

    const-string p2, " \u4e0b\u8f7d\u5931\u8d25\uff01 \u91cd\u65b0\u4e0b\u8f7d"

    .line 510
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    iget-wide v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$totalsize:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->download(Ljava/util/List;J)V

    goto :goto_1

    :cond_1
    const-string p2, " \u4e0b\u8f7d\u5931\u8d25\uff01\uff01\uff01\uff012"

    .line 516
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_2

    .line 518
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    sget v0, Lcom/powervision/gcs/R$string;->download_failed:I

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onFailed(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 10

    const-string p1, "0"

    const-string v0, "md5"

    const-string v1, "lzqW4Firm"

    const/4 v2, 0x1

    .line 533
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/powervision/gcs/utils/FileUtil;->createFile(Ljava/lang/String;)Ljava/io/File;

    :cond_0
    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 542
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    .line 543
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 547
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    const-string v7, "rwd"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4ece"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " \u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v6, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 551
    :cond_1
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_2

    iget-object v7, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-boolean v7, v7, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    if-eqz v7, :cond_2

    .line 552
    invoke-virtual {v5, v3, v8, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 557
    iget-object v6, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-wide v6, v6, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->body_has_download:J

    iget-object v8, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    iget-wide v7, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$totalsize:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    .line 558
    iget-object v7, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v7, v7, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    if-eqz v7, :cond_1

    .line 559
    iget-object v7, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object v7, v7, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->pbProgress:Landroid/widget/ProgressBar;

    new-instance v8, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2$1;

    invoke-direct {v8, p0, v6}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2$1;-><init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;F)V

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 574
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 576
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-boolean p2, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    if-nez p2, :cond_3

    return-void

    .line 581
    :cond_3
    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$firmwareInfo:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object p2, p2, Lcom/powervision/gcs/manager/W4Firmware;->md5:Ljava/lang/String;

    .line 582
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-static {v3}, Lcom/powervision/gcs/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 585
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 588
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ser_md5  :"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "local_md5:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u6821\u9a8c\u5931\u8d25"

    .line 590
    invoke-static {v1, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 596
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-wide v3, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->body_has_download:J

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->body_has_download:J

    .line 597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u4e0b\u8f7d\u5b8c\u603b\u5927\u5c0f:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/manager/W4Firmware;

    .line 600
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\u5b8c\u4e00\u4e2a"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance p2, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {p2}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    .line 603
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 605
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$firmwareInfo:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v3, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    iput-object v3, p2, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    .line 606
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$firmwareInfo:Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v3, v3, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    iput-object v3, p2, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 608
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 609
    iget-object v3, p2, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 610
    iget-object v4, p2, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    .line 614
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 615
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/W4Firmware;

    .line 616
    iget-object p1, p1, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    iget-object v3, v3, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 619
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->renameItemDir(Lcom/powervision/gcs/manager/W4Firmware;)V

    .line 620
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p2, p2, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->access$000(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Ljava/lang/String;I)V

    goto :goto_2

    .line 627
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->renameItemDir(Lcom/powervision/gcs/manager/W4Firmware;)V

    .line 628
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p2, p2, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, p2, v3}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->access$000(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Ljava/lang/String;I)V

    .line 629
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->downLoadBodyComplete()V

    .line 630
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_7

    .line 631
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-static {p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->access$100(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onSucceed(I)V

    .line 635
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    iget-wide v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$totalsize:J

    invoke-virtual {p1, p2, v3, v4}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->download(Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException e:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 641
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->body_has_download:J

    .line 642
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$localFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 645
    :cond_8
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget p2, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    add-int/2addr p2, v2

    iput p2, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    .line 648
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget p2, p2, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->RETRYRANGE:I

    if-ge p1, p2, :cond_9

    const-string p1, " \u4e0b\u8f7d\u5931\u8d25 \u91cd\u8bd51"

    .line 650
    invoke-static {v1, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$allInfos:Ljava/util/List;

    iget-wide v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->val$totalsize:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->download(Ljava/util/List;J)V

    goto :goto_3

    :cond_9
    const-string p1, " \u4e0b\u8f7d\u5931\u8d25\uff01\uff01\uff01\uff01"

    .line 655
    invoke-static {v1, p1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_a

    .line 657
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    iget-object p1, p1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    iget-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;->this$0:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    sget v0, Lcom/powervision/gcs/R$string;->download_failed:I

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onFailed(ILjava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
