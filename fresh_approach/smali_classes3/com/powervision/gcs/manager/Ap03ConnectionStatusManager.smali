.class public Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;
.super Ljava/lang/Object;
.source "Ap03ConnectionStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;
    }
.end annotation


# static fields
.field private static Ap03ConnectionStatusManager:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;


# instance fields
.field private deviceConnectType:I

.field private lastNotifyTime:J

.field mAp03DeviceConnectionChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$1;-><init>(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->deviceConnectType:I

    const-wide/16 v0, 0x0

    .line 134
    iput-wide v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->lastNotifyTime:J

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->onDeviceStatusChanged(Z)V

    return-void
.end method

.method public static getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;
    .locals 2

    .line 16
    sget-object v0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->Ap03ConnectionStatusManager:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->Ap03ConnectionStatusManager:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    invoke-direct {v1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;-><init>()V

    sput-object v1, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->Ap03ConnectionStatusManager:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->Ap03ConnectionStatusManager:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    return-object v0
.end method

.method private onDeviceStatusChanged(Z)V
    .locals 7

    .line 140
    iget v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->deviceConnectType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    iput v1, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->deviceConnectType:I

    goto :goto_0

    .line 142
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->deviceConnectType:I

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->deviceConnectType:I

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->deviceConnectType:I

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 146
    iget-wide v2, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->lastNotifyTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 147
    iput-wide v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->lastNotifyTime:J

    goto :goto_0

    :cond_2
    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    return-void

    .line 151
    :cond_3
    iput-wide v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->lastNotifyTime:J

    .line 154
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   onDeviceStatusChanged()...isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect_status"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u5730\u8bbe\u7f6e\u503c...isConnected= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "...deviceConnectType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->deviceConnectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_conned"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    .line 159
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->stopRecordLog()V

    .line 161
    :cond_5
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->notifyAllListeners(Z)V

    return-void
.end method


# virtual methods
.method public addBootConectionCallBack()V
    .locals 2

    .line 27
    sget-object v0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->Ap03ConnectionStatusManager:Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    :cond_0
    return-void
.end method

.method public addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public notifyAllListeners(Z)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;

    .line 188
    invoke-interface {v1, p1}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;->onDeviceConnectionChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->mAp03DeviceConnectionChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
