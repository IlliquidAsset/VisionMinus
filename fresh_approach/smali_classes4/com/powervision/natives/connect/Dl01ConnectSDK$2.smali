.class Lcom/powervision/natives/connect/Dl01ConnectSDK$2;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "Dl01ConnectSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/Dl01ConnectSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/Dl01ConnectSDK;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 239
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$202(Lcom/powervision/natives/connect/Dl01ConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 240
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "Dl01ConnectSDK"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$202(Lcom/powervision/natives/connect/Dl01ConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 241
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 242
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    iget-object v0, v0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 243
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 244
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    :cond_0
    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_dl01_air"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->alterWiFI_a()V

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->alterUsb1_a()V

    goto :goto_0

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    .line 229
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectAir()V

    goto :goto_0

    .line 215
    :cond_3
    iget-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->reConnectToAir()V

    goto :goto_0

    .line 209
    :cond_4
    iget-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;->this$0:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->access$100(Lcom/powervision/natives/connect/Dl01ConnectSDK;)I

    :goto_0
    return-void
.end method
