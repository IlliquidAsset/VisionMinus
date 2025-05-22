.class Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;
.super Ljava/lang/Thread;
.source "RetryMechine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/utils/RetryMechine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetryThread"
.end annotation


# instance fields
.field listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

.field final synthetic this$0:Lcn/powervision/upgrade/utils/RetryMechine;

.field ud:Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/utils/RetryMechine;Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->this$0:Lcn/powervision/upgrade/utils/RetryMechine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 65
    new-instance p1, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    invoke-direct {p1, p2}, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;-><init>(Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;)V

    iput-object p1, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->ud:Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    .line 66
    iput-object p3, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 71
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 80
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->ud:Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    iget v0, v0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x1388

    const/16 v3, 0xc

    const/4 v4, 0x0

    const-string v5, "lzqFirm"

    const/4 v6, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 83
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " retry ap03:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    iget-object v7, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    if-eqz v7, :cond_0

    .line 89
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryAp03()V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v0

    goto/16 :goto_5

    .line 97
    :cond_2
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->ud:Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    iget v0, v0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->ud:Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    iget v0, v0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_8

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " retry mcu:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 101
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v7

    invoke-virtual {v7}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isBootloader()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_3

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_MCUVERSION()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    if-eqz v0, :cond_8

    .line 104
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryRemote()V

    :goto_3
    const/4 v4, 0x1

    goto :goto_5

    .line 113
    :cond_5
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->ud:Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    iget v0, v0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->ud:Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;

    iget v0, v0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    if-ne v0, v6, :cond_7

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_8

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " retry dl01:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 118
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_6

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 119
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    if-eqz v0, :cond_8

    .line 121
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryRemote()V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const-string v0, " retry === wrong device"

    .line 129
    invoke-static {v5, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    if-nez v4, :cond_b

    .line 134
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    if-eqz v0, :cond_9

    const-string v0, " retry === not Success"

    .line 135
    invoke-static {v5, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$RetryThread;->listener:Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/RetryMechine$ReTryListener;->reTryFailed()V

    goto :goto_6

    :cond_9
    const-string v0, " retry === \u80af\u5b9a\u662f\u5f02\u5e38\u903b\u8f91 \u8d70\u5230\u4e86 \u8fd9\u91cc"

    .line 138
    invoke-static {v5, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 77
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_b
    :goto_6
    return-void
.end method
