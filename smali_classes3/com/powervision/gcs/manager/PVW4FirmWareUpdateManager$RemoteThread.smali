.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;
.super Ljava/lang/Thread;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteThread"
.end annotation


# instance fields
.field remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1278
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;)V
    .locals 0

    .line 1278
    invoke-direct {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1288
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "lzqRu"

    const-string v1, "run"

    .line 1289
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xf

    const/4 v4, 0x2

    if-ge v2, v3, :cond_3

    const-wide/16 v5, 0x190

    .line 1297
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 1298
    sget v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->lastBootloaderStatus:I

    if-nez v3, :cond_0

    goto :goto_1

    .line 1301
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1303
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1307
    :cond_1
    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->WIFIVERSION:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v2, "before checkRemote"

    .line 1319
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1323
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    if-eqz v2, :cond_5

    .line 1325
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    if-ne v2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    const-string v2, "checkRemote"

    .line 1328
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    sget-object v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->WIFIVERSION:Ljava/lang/String;

    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->DL01VERSION:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;->checkRemote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1332
    :cond_5
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    if-eqz v0, :cond_8

    .line 1333
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    invoke-interface {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;->onDestory()V

    goto :goto_3

    .line 1321
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1292
    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 1337
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    if-eqz v0, :cond_8

    .line 1338
    invoke-interface {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;->onDestory()V

    :cond_8
    :goto_3
    return-void
.end method

.method setLisetener(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->remoteListener:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;

    return-void
.end method
