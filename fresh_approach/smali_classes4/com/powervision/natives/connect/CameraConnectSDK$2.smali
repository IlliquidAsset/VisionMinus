.class Lcom/powervision/natives/connect/CameraConnectSDK$2;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "CameraConnectSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/CameraConnectSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/CameraConnectSDK;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/CameraConnectSDK;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 220
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$802(Lcom/powervision/natives/connect/CameraConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 222
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "CameraConnectSDK"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$802(Lcom/powervision/natives/connect/CameraConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 223
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 224
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    :cond_0
    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$800(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/CameraConnectSDK$2;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCam_status"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "lzqCam_c"

    const-string v0, "status \u8fde\u63a5\u6210\u529f"

    .line 201
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$600(Lcom/powervision/natives/connect/CameraConnectSDK;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$300(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 210
    iget-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$300(Lcom/powervision/natives/connect/CameraConnectSDK;)Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PowerCamSDK;->statusDisConnect()I

    goto :goto_0

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$700(Lcom/powervision/natives/connect/CameraConnectSDK;)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object p1, p0, Lcom/powervision/natives/connect/CameraConnectSDK$2;->this$0:Lcom/powervision/natives/connect/CameraConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/CameraConnectSDK;->access$500(Lcom/powervision/natives/connect/CameraConnectSDK;)V

    :cond_5
    :goto_0
    return-void
.end method
