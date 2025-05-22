.class public Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;
.super Lcom/powervision/natives/model/BaseCallbackModel;
.source "PVW4RemoteConnectModel.java"

# interfaces
.implements Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/natives/model/BaseCallbackModel<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;",
        "Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;",
        "Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PVW4RemoteConnectModel"

.field private static mInstance:Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;


# instance fields
.field private isBatteryConnected:Z

.field private isDl01Connected:Z

.field private isMcuConnected:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Lcom/powervision/natives/model/BaseCallbackModel;-><init>()V

    .line 44
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    .line 45
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    .line 46
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback()Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isBatteryConnected:Z

    return-void
.end method

.method public static get()Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;
    .locals 1

    .line 37
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;-><init>()V

    sput-object v0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    .line 40
    :cond_0
    sget-object v0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->mInstance:Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;

    return-object v0
.end method

.method private isDl01AndBatteryDisconnect()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isBatteryConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDl01AndMcuDisconnect()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMcuAndBatteryDisconnect()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isBatteryConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isRemoteConnected()Z
    .locals 8

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRemoteConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PVW4RemoteConnectModel"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 321
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 322
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->isRemoteBatteryCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    return v4
.end method

.method public mt03RemoteControlBatterySurplus(I)V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mt03RemoteControlBatterySurplus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PVW4RemoteConnectModel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 275
    iget-boolean p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isBatteryConnected:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 276
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isBatteryConnected:Z

    .line 277
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndMcuDisconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-boolean p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isBatteryConnected:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isBatteryConnected:Z

    .line 284
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndMcuDisconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActive()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onActive()V

    .line 52
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    .line 54
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V

    .line 55
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    :cond_0
    return-void
.end method

.method public onAp03HeartbeatRecovery()V
    .locals 0

    return-void
.end method

.method public onAp03HeartbeatTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnectFailed()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnectTimeout()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteConnected()V
    .locals 0

    return-void
.end method

.method public onAp03RemoteDisConnect()V
    .locals 0

    return-void
.end method

.method public onCheckError()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onCheckError: "

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    .line 247
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuAndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCheckOk()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onCheckOk: "

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    .line 258
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuAndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onConnectLinkFailed: "

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onConnectLinkSuccess: "

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onConnectLinkTimeOut: "

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    .line 231
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuAndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->onInactive()V

    .line 65
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isHandMove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    .line 67
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V

    .line 68
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    :cond_0
    return-void
.end method

.method public onLinkDisconnect()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onLinkDisconnect: "

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01Connected:Z

    .line 220
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuAndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRemoteChainConnectFailed()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onRemoteChainConnectFailed: "

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "onW4RemoteDisConnect: "

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    .line 104
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRemoteChainConnectTimeout()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onRemoteChainConnectTimeout: "

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoteChainConnected()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onRemoteChainConnected: "

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoteChainDisconnected()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onRemoteChainDisconnected: "

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onW4HeartbeatRecovery()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onW4HeartbeatRecovery: "

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    .line 163
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onW4HeartbeatTimeout()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    .line 173
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onW4RemoteConnectFailed()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onW4RemoteConnectFailed: "

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onW4RemoteConnectTimeout()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onW4RemoteConnectTimeout: "

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    .line 152
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onW4RemoteConnected()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onW4RemoteConnected: "

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    .line 125
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onW4RemoteDisConnect()V
    .locals 2

    const-string v0, "PVW4RemoteConnectModel"

    const-string v1, "onW4RemoteDisConnect: "

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isMcuConnected:Z

    .line 141
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->isDl01AndBatteryDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/shipcallback/PVW4RemoteConnectModel;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->registerListener()V

    .line 78
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    .line 79
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V

    .line 80
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/powervision/natives/model/BaseCallbackModel;->unregisterListener()V

    .line 86
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Mt03RemoteControlBatterySurplusListener;)V

    .line 87
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeMcuConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnenctRemoteListener;)V

    .line 88
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeDl01GroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    return-void
.end method
