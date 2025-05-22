.class Lcom/powervision/gcs/usb2/GCSConnectionManager$2$1;
.super Ljava/lang/Object;
.source "GCSConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->onUsb2Confirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/usb2/GCSConnectionManager$2;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSConnectionManager$2;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2$1;->this$1:Lcom/powervision/gcs/usb2/GCSConnectionManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "lzqUsb"

    const-string v1, "\u5728\u7ebf\u7a0b\u5185\u90e8 \u5f00\u59cbUSB2\u8fde\u63a5SDK startSDKConnect"

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2$1;->this$1:Lcom/powervision/gcs/usb2/GCSConnectionManager$2;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$200(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqUsb"

    const-string v2, "onUsb2Confirm uninit before0"

    .line 383
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/powervision/natives/connect/W4ConnectSdk;->instance()Lcom/powervision/natives/connect/W4ConnectSdk;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/W4ConnectSdk;->postStatus(II)V

    .line 386
    invoke-static {}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v3}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    .line 387
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->postStatus(II)V

    .line 388
    invoke-static {}, Lcom/powervision/natives/connect/W49342ConnectSdk;->get()Lcom/powervision/natives/connect/W49342ConnectSdk;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    .line 389
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 392
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/CameraConnectSDK;->postCommandTask(II)V

    .line 393
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/CameraConnectSDK;->postStatusTask(II)V

    .line 394
    invoke-static {}, Lcom/powervision/natives/connect/ConnectActivationSDK;->getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    .line 395
    invoke-static {}, Lcom/powervision/natives/connect/AudioConnectSDK;->getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 396
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$2$1;->this$1:Lcom/powervision/gcs/usb2/GCSConnectionManager$2;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/GCSConnectionManager$2;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->notify_updateDisconnectUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x258

    .line 398
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 400
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v1, "lzqUsb"

    const-string v2, "onUsb2Confirm uninit before1"

    .line 402
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->uninitSdk()V

    const-string v1, "lzqUsb"

    const-string v2, "onUsb2Confirm uninit after2"

    .line 404
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->initSdkCallBack()V

    .line 407
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->initAOASdk()V

    const-string v1, "lzqUsb"

    const-string v2, "onUsb2Confirm init over"

    .line 408
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->connect()V

    .line 411
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "lzqUsb"

    const-string v1, "\u4ee3\u7801\u5757\u4e4b\u540e"

    .line 413
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 418
    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "lzqUsb"

    const-string v2, "\u8fde\u63a5W4"

    .line 419
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startSDKConnect(I)V

    goto :goto_1

    .line 422
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->get()Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSSDKConnManager;->startSDKConnect(I)V

    :goto_1
    return-void

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "openUsb2\u7684\u65f6\u5019\u6ca1\u6709\u62ff\u5230device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 411
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
