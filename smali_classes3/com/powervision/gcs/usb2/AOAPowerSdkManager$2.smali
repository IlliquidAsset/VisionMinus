.class Lcom/powervision/gcs/usb2/AOAPowerSdkManager$2;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "AOAPowerSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/AOAPowerSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/usb2/MsgHandle<",
        "Lcom/powervision/gcs/usb2/Msg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/AOAPowerSdkManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$2;->this$0:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    invoke-direct {p0}, Lcom/powervision/gcs/usb2/MsgHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 0

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$2;->this$0:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$2;->this$0:Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 0

    return-void
.end method

.method public work(Lcom/powervision/gcs/usb2/Msg;)V
    .locals 16

    move-object/from16 v0, p1

    .line 210
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/16 v5, 0x2aa2

    const/16 v6, 0x2a89

    const/16 v7, 0x2a88

    const/16 v8, 0x29aa

    const/16 v9, 0x2fbe

    const/16 v10, 0x2bd6

    const/16 v11, 0x2afa

    const/16 v12, 0x285d

    const/16 v13, 0x29ab

    const/16 v14, 0x28cb

    const/16 v15, 0x28ca

    const/16 v2, 0x2ee2

    const/16 v3, 0x293b

    const/4 v4, 0x2

    if-ne v1, v4, :cond_10

    .line 211
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    if-eq v1, v12, :cond_f

    if-eq v1, v3, :cond_e

    if-eq v1, v11, :cond_d

    if-eq v1, v10, :cond_c

    if-eq v1, v2, :cond_b

    if-eq v1, v9, :cond_a

    if-eq v1, v15, :cond_9

    if-eq v1, v14, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v13, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    const/16 v2, 0x2aa3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2b0c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b0d

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 255
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 251
    :cond_2
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 273
    :cond_3
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isNoFlyZoneConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 274
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 267
    :cond_4
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraStatusConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 268
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 261
    :cond_5
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraCommandConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 262
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 247
    :cond_6
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 244
    :cond_7
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 284
    :cond_8
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 280
    :cond_9
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 239
    :cond_a
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isAirConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 240
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 214
    :cond_b
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isBodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 215
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 234
    :cond_c
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isGroundConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 235
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 227
    :cond_d
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isRemoteConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 228
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 287
    :cond_e
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isAudioConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 289
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 220
    :cond_f
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isAp03BodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 221
    invoke-static {}, Lcom/powervision/gcs/usb2/SdkDataManager;->get()Lcom/powervision/gcs/usb2/SdkDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/usb2/SdkDataManager;->addApacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_0

    .line 293
    :cond_10
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->type:I

    const-string v4, "lzqAudio"

    const-string v5, "lzqup"

    const/4 v6, 0x1

    if-ne v1, v6, :cond_21

    .line 295
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/powervision/natives/JniAOAChannelNative;->onConnect(II)I

    .line 296
    iget v0, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    if-eq v0, v12, :cond_20

    if-eq v0, v3, :cond_1f

    if-eq v0, v11, :cond_1e

    if-eq v0, v10, :cond_1d

    if-eq v0, v2, :cond_1c

    if-eq v0, v9, :cond_1b

    if-eq v0, v15, :cond_1a

    if-eq v0, v14, :cond_19

    if-eq v0, v8, :cond_18

    if-eq v0, v13, :cond_17

    if-eq v0, v7, :cond_16

    const/16 v1, 0x2a89

    if-eq v0, v1, :cond_15

    const/16 v1, 0x2aa2

    if-eq v0, v1, :cond_14

    const/16 v1, 0x2aa3

    if-eq v0, v1, :cond_13

    const/16 v1, 0x2b0c

    if-eq v0, v1, :cond_12

    const/16 v1, 0x2b0d

    if-eq v0, v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const-string v0, " DL01_REMOTE_FTP_CON onConnect"

    .line 328
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isDl01_Con_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x1

    const-string v0, " DL01_REMOTE_FTP_DATA onConnect"

    .line 334
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isDl01_Data_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x1

    .line 360
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03ActivationConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x1

    .line 345
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isNoFlyZoneConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x1

    .line 342
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraStatusConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_16
    const/4 v1, 0x1

    .line 339
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraCommandConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x1

    .line 324
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isFtp_BConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x1

    .line 317
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isFtp_Aconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x1

    const-string v0, "AP03_UPGRADER_DATA onConnect needAP03_DataSendStart:true"

    .line 352
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sput-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needAP03_DataSendStart:Z

    goto/16 :goto_0

    :cond_1a
    const-string v0, "AP03_UPGRADER_COMMAND onConnect need_Dis:false"

    .line 348
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sput-boolean v6, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->need_Dis:Z

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x1

    .line 309
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAirConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x1

    .line 298
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isBodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_1d
    const/4 v1, 0x1

    .line 313
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isGroundConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x1

    .line 305
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isRemoteConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_1f
    const/4 v1, 0x1

    const-string v0, "onConnect==="

    .line 356
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAudioConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_20
    const/4 v1, 0x1

    .line 301
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03BodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 366
    :cond_21
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v6, 0x5

    if-ne v1, v6, :cond_26

    .line 369
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    if-ne v1, v14, :cond_22

    .line 370
    sget-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needAP03_DataSendStart:Z

    if-eqz v1, :cond_27

    const-string v1, "AP03_UPGRADER_DATA sendStartLinkCommand "

    .line 371
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget v0, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    goto :goto_0

    .line 374
    :cond_22
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    if-ne v1, v13, :cond_23

    .line 375
    sget-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->needW4_DataSendStart:Z

    if-eqz v1, :cond_27

    const-string v1, " BODY_DATA \u53d1Start"

    .line 376
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v0, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    goto :goto_0

    .line 379
    :cond_23
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    if-ne v1, v15, :cond_24

    .line 380
    sget-boolean v1, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->need_Dis:Z

    if-nez v1, :cond_27

    const-string v1, " AP03_UPGRADER_COMMAND REMOTE \u53d1Start"

    .line 381
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v0, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    goto :goto_0

    .line 386
    :cond_24
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    if-ne v1, v3, :cond_25

    const-string v1, " AUDIO \u53d1Start"

    .line 387
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_25
    iget v0, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    goto :goto_0

    .line 392
    :cond_26
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_27

    .line 394
    iget v1, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    if-ne v1, v2, :cond_27

    .line 396
    iget v0, v0, Lcom/powervision/gcs/usb2/Msg;->channel:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/natives/JniAOAChannelNative;->onConnect(II)I

    :cond_27
    :goto_0
    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Lcom/powervision/gcs/usb2/Msg;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager$2;->work(Lcom/powervision/gcs/usb2/Msg;)V

    return-void
.end method
