.class Lcom/powervision/natives/connect/ConnectRemoteSDK$1;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "ConnectRemoteSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/ConnectRemoteSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/ConnectRemoteSDK;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    return-void
.end method

.method public free()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 291
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iput-object v1, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 292
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 293
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 294
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "ConnectActivationSDK"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 295
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 296
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqRemote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "\u8fdb\u5165bootloader"

    .line 280
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->getBootLoaderStatus()I

    .line 282
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->getBooterLoader()V

    goto/16 :goto_0

    .line 273
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->alterIp_Wifi()V

    goto/16 :goto_0

    .line 270
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->alterIp_USB1()V

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->access$000(Lcom/powervision/natives/connect/ConnectRemoteSDK;)V

    goto :goto_0

    .line 262
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->reChain()V

    goto :goto_0

    .line 254
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->access$000(Lcom/powervision/natives/connect/ConnectRemoteSDK;)V

    goto :goto_0

    .line 247
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object p1, p1, Lcom/powervision/natives/connect/ConnectRemoteSDK;->onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

    if-eqz p1, :cond_7

    .line 248
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    iget-object p1, p1, Lcom/powervision/natives/connect/ConnectRemoteSDK;->onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

    invoke-interface {p1}, Lcom/powervision/natives/callback/OnDisConnectLinkListener;->onDisCommplete()V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->access$100(Lcom/powervision/natives/connect/ConnectRemoteSDK;)Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PV_REMOTE_API;->disConnectRemote()V

    .line 277
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->access$100(Lcom/powervision/natives/connect/ConnectRemoteSDK;)Lcom/powervision/natives/PV_REMOTE_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PV_REMOTE_API;->disConnectLink()V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->reChain()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->connectRemote()V

    goto :goto_0

    :cond_3
    const-string p1, "remote  case chain timeout"

    .line 238
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->reChain()V

    goto :goto_0

    :cond_4
    const-string p1, "11111111111111==============="

    .line 225
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->reChain()V

    const-string p1, "22222222222222==============="

    .line 229
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_5
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->reChain()V

    goto :goto_0

    .line 214
    :cond_6
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectRemoteSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectRemoteSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->ideal()V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
