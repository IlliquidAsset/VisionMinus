.class Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;
.super Ljava/lang/Thread;
.source "FirmWareDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/activity/FirmWareDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckSDCardThread"
.end annotation


# instance fields
.field checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

.field over:Z

.field retryCount:I


# direct methods
.method public constructor <init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;)V
    .locals 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x5

    .line 406
    iput v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->retryCount:I

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    .line 411
    iput-object p1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    return-void
.end method


# virtual methods
.method public error(I)V
    .locals 3

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sd\u5361 error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 524
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 526
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string p1, "sd\u5361 \u6e05\u9664\u56de\u8c03"

    .line 528
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetEmmcStorageSizeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetEmmcStorageSizeListener;)V

    return-void
.end method

.method public pause()V
    .locals 4

    .line 511
    const-class v0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 512
    :try_start_1
    iput-boolean v1, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    const-string v1, "lzqFirm"

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sd\u5361 \u9501\u4f4f\u7ebf\u7a0b id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1770

    .line 514
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 515
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 418
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "lzqFirm"

    const-string v1, "sd\u5361 \u5f00\u59cb\u68c0\u6d4bSD\u5361"

    .line 419
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 420
    :goto_0
    iget v2, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->retryCount:I

    if-ge v1, v2, :cond_3

    .line 422
    invoke-static {}, Lcom/powervision/natives/connect/CameraConnectSDK;->get()Lcom/powervision/natives/connect/CameraConnectSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/natives/connect/CameraConnectSDK;->getCurrentCam_C_ConnectState()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sd\u5361 \u6307\u4ee4\u94fe\u8def \u6ca1\u6709\u8fde\u63a5"

    .line 423
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 424
    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->error(I)V

    goto :goto_1

    :cond_0
    const-string v2, "sd\u5361 \u6ce8\u518c\u56de\u8c03"

    .line 429
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v2

    new-instance v3, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;

    invoke-direct {v3, p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread$1;-><init>(Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;)V

    invoke-virtual {v2, v3}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyGetSDStorageSizeListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyGetSDStorageSizeListener;)V

    .line 478
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    .line 481
    invoke-static {}, Lcom/powervision/natives/JniCameraNative;->getSDStorageSize()I

    move-result v2

    const-string v3, "\u62ffSD\u5361\u5bb9\u91cf"

    .line 482
    invoke-static {v0, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 484
    invoke-virtual {p0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->pause()V

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sd\u5361 \u7ebf\u7a0b \u88ab\u5524\u9192 over\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-boolean v2, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_1
    const-string v2, "sd\u5361 \u8c03\u7528\u63a5\u53e3\u8fd4\u56de-1\uff1a"

    .line 490
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 491
    invoke-virtual {p0, v2}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->error(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->over:Z

    if-nez v0, :cond_4

    .line 498
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    if-eqz v0, :cond_4

    .line 499
    invoke-interface {v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;->canUpgrade()V

    .line 503
    :cond_4
    iget-object v0, p0, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSDCardThread;->checkSdCardListener:Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;

    if-eqz v0, :cond_5

    .line 504
    invoke-interface {v0}, Lcn/powervision/upgrade/activity/FirmWareDetailActivity$CheckSdCardListener;->destory()V

    :cond_5
    return-void
.end method
