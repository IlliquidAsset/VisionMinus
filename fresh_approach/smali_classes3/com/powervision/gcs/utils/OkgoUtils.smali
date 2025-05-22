.class public Lcom/powervision/gcs/utils/OkgoUtils;
.super Ljava/lang/Object;
.source "OkgoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OkgoUtils"

.field public static final TYPE_FIRMWARE:I = 0x2

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRemoteFirmwareInstance()Lcom/lzy/okserver/OkDownload;
    .locals 3

    const-string v0, "OkgoUtils"

    const-string v1, "getRemoteFirmwareInstance: "

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getFirmwareDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/lzy/okserver/OkDownload;->setFolder(Ljava/lang/String;)Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getThreadPool()Lcom/lzy/okserver/download/DownloadThreadPool;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lzy/okserver/download/DownloadThreadPool;->setCorePoolSize(I)V

    return-object v1
.end method

.method public static getShipImageInstance()Lcom/lzy/okserver/OkDownload;
    .locals 3

    const-string v0, "OkgoUtils"

    const-string v1, "getShipImageInstance: "

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipImageDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/lzy/okserver/OkDownload;->setFolder(Ljava/lang/String;)Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getThreadPool()Lcom/lzy/okserver/download/DownloadThreadPool;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/lzy/okserver/download/DownloadThreadPool;->setCorePoolSize(I)V

    return-object v1
.end method

.method public static getShipVideoInstance()Lcom/lzy/okserver/OkDownload;
    .locals 3

    const-string v0, "OkgoUtils"

    const-string v1, "getShipVideoInstance: "

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipVideoDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Lcom/lzy/okserver/OkDownload;->setFolder(Ljava/lang/String;)Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getThreadPool()Lcom/lzy/okserver/download/DownloadThreadPool;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lzy/okserver/download/DownloadThreadPool;->setCorePoolSize(I)V

    return-object v1
.end method
