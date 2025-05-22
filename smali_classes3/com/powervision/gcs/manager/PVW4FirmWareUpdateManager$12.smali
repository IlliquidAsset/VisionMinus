.class Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private needRestart:Z

.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1181
    iput-boolean p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->needRestart:Z

    return-void
.end method


# virtual methods
.method public checkRemote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "lzqRu"

    const-string v1, "========checkRemote========"

    .line 1188
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    sget v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->lastBootloaderStatus:I

    if-nez v0, :cond_0

    const-string p1, "1000"

    const-string v0, "1000"

    .line 1191
    sput-object v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->MCUVERSION:Ljava/lang/String;

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$800(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$300(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 1205
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v2, v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1206
    iget-object v2, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    iget-object v2, v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;

    invoke-interface {v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$ViewStateListener;->hideRemoteDownLoad()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1209
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v0, ""

    .line 1214
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DL01_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "DL01_0,"

    .line 1221
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MCU_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1224
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MCU_0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz p4, :cond_6

    .line 1229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",WIFI_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1232
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",WIFI_0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    :cond_6
    :goto_4
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_7

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_7

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    .line 1239
    :cond_7
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v1

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveConnectionType(I)V

    if-eqz p4, :cond_8

    .line 1241
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveRemote_A_MergeVersion(Ljava/lang/String;)V

    .line 1242
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveRemote_A_Mcu(Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveRemoteWifi(Ljava/lang/String;)V

    const-string p1, "lzqRu"

    .line 1244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A  \u5b58 dl01 = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveRemote_A_Dl01(Ljava/lang/String;)V

    goto :goto_5

    .line 1247
    :cond_8
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveRemote_B_Dl01(Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveRemote_B_Mcu(Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/utils/SPHelperUtils_FirmWare;->saveRemote_B_MergeVersion(Ljava/lang/String;)V

    .line 1254
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {p1, v0, p4}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$900(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 1209
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public needRestart(Z)V
    .locals 0

    .line 1273
    iput-boolean p1, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->needRestart:Z

    return-void
.end method

.method public onDestory()V
    .locals 3

    .line 1261
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$1002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    .line 1262
    iget-boolean v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->needRestart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1263
    iput-boolean v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->needRestart:Z

    .line 1264
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    new-instance v2, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    invoke-direct {v2, v1}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;-><init>(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$1;)V

    invoke-static {v0, v2}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$1002(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    .line 1265
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$1000(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->setLisetener(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteListener;)V

    .line 1266
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$12;->this$0:Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    invoke-static {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->access$1000(Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;)Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RemoteThread;->start()V

    :cond_0
    return-void
.end method
