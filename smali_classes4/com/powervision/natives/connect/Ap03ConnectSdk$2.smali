.class Lcom/powervision/natives/connect/Ap03ConnectSdk$2;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "Ap03ConnectSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/Ap03ConnectSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/Ap03ConnectSdk;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP03 FREE \u91cd\u542f\u7ebf\u7a0b  size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    iget-object v1, v1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v1, v1, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAp03"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 184
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$102(Lcom/powervision/natives/connect/Ap03ConnectSdk;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 185
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "Ap03ConnectSdk"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$102(Lcom/powervision/natives/connect/Ap03ConnectSdk;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 186
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 187
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 188
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    iget-object v1, v1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 189
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP03BODY \u5e72\u6389\u7ebf\u7a0b size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    iget-object v1, v1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iget-object v1, v1, Lcom/powervision/natives/connect/ConnectTool;->queue:Ljava/util/LinkedList;

    .line 203
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAp03"

    .line 202
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ap03 work connectStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAp03"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectSuccess()V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->relink()V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectSuccess()V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->relink()V

    goto :goto_0

    :pswitch_4
    const-string p1, "connectDevice  "

    .line 146
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$000(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->connectDevice()I

    .line 148
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->relink()V

    goto :goto_0

    :pswitch_6
    const-string p1, "ideal \u5f00\u59cb\u8fde\u63a5\u94fe\u8def"

    .line 127
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ideal()V

    goto :goto_0

    :cond_1
    const-string p1, " disConnectDevice ======"

    .line 169
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$000(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectDevice()I

    .line 171
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-static {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->access$000(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectLink()I

    goto :goto_0

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->alterIp_Wifi()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
