.class Lcom/powervision/gcs/usb2/GCSConnectionManager$2;
.super Ljava/lang/Object;
.source "GCSConnectionManager.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didNotGetAccessory()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUSB2_CONFIRM(Z)V

    .line 469
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUsb2Avaliable(Z)V

    .line 470
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->goToUsb1()V

    return-void
.end method

.method public getAccessoryAndDoNotHasPermission()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "\u5947\u602a\u7684\u56de\u8c03 \u8fd9\u4e2a\u5730\u65b9\u5e94\u8be5\u4e0d\u7528\u5904\u7406"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 462
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUSB2_CONFIRM(Z)V

    return-void
.end method

.method public getAccessoryAndHasPermission()V
    .locals 0

    return-void
.end method

.method public needRestartActivity()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method

.method public onUsb2CanConnected()V
    .locals 1

    const/4 v0, 0x1

    .line 434
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUsb2Avaliable(Z)V

    .line 435
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_modechange()V

    return-void
.end method

.method public onUsb2Confirm()V
    .locals 4

    const-string v0, "lzqUsb"

    const-string v1, "onUsb2Confirm"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->needShowAskForDialog:Z

    const/4 v0, 0x1

    .line 362
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUSB2_CONFIRM(Z)V

    const/4 v1, 0x2

    .line 363
    invoke-static {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setCurrectType(I)V

    .line 364
    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->setIsUsb2(Z)V

    .line 365
    invoke-static {}, Lcom/powervision/natives/PV_REMOTE_API;->getInstance()Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PV_REMOTE_API;->setConnectType(I)V

    .line 366
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$100(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqUsb"

    const-string v2, "onUsb2Confirm releaseAll"

    .line 367
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->releaseAll()V

    const-string v1, "lzqUsb"

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryopenUsb2 isW4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/powervision/gcs/usb2/GCSConnectionManager$2$1;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$2$1;-><init>(Lcom/powervision/gcs/usb2/GCSConnectionManager$2;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 426
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 428
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUsb2Disconnected()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object v0

    const-string v1, "onUsb2Disconnected"

    invoke-interface {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;->msg(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 448
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUsb2Avaliable(Z)V

    return-void
.end method

.method public onUsbIn()V
    .locals 1

    const/4 v0, 0x1

    .line 475
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUsbMounted(Z)V

    .line 476
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->goToUsb2()V

    return-void
.end method

.method public onUsbOut()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->needShowAskForDialog:Z

    .line 484
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isRemoteConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 485
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isBodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isGroundConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 487
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAirConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 488
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isFtp_Aconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 489
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isFtp_BConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 490
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isDl01_Data_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isDl01_Con_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 492
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03BodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraStatusConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraCommandConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    invoke-static {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUSB2_CONFIRM(Z)V

    .line 496
    invoke-static {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUsbMounted(Z)V

    .line 497
    invoke-static {v1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->setIsUsb2(Z)V

    .line 498
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_onUsbOut()V

    .line 499
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const-string v1, "lzqUsb"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string v0, "\u5f53\u524d\u4e0d\u662fWIFI \u6a21\u5f0f \u9700\u8981\u5207\u6362\u5230WIFI \u6a21\u5f0f"

    .line 500
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->goToWifi()V

    goto :goto_0

    :cond_0
    const-string v0, "\u5f53\u524d\u662fWIFI \u6a21\u5f0f \u4e0d\u9700\u8981\u5207\u6362\u5230WIFI \u6a21\u5f0f"

    .line 503
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
