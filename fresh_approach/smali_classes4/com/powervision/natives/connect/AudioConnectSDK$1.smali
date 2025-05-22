.class Lcom/powervision/natives/connect/AudioConnectSDK$1;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "AudioConnectSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/AudioConnectSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/AudioConnectSDK;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/AudioConnectSDK;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$202(Lcom/powervision/natives/connect/AudioConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 110
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$300(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTool;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 111
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$300(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTool;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 112
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "AudioConnectSDK"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$202(Lcom/powervision/natives/connect/AudioConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 113
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 114
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    :cond_0
    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/AudioConnectSDK$1;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$100(Lcom/powervision/natives/connect/AudioConnectSDK;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$000(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$000(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PowerCamSDK;->disConnetAudio()I

    goto :goto_0

    :cond_2
    const-string p1, "lzqAudio"

    const-string v0, "connectActivationLink"

    .line 83
    invoke-static {p1, v0}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$000(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PowerCamSDK;->disConnetAudio()I

    .line 85
    iget-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK$1;->this$0:Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/AudioConnectSDK;->access$000(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/PowerCamSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PowerCamSDK;->connectAudio()I

    :cond_3
    :goto_0
    return-void
.end method
