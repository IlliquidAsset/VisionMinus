.class Lcom/powervision/natives/connect/ConnectActivationSDK$1;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "ConnectActivationSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/ConnectActivationSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/ConnectActivationSDK;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$202(Lcom/powervision/natives/connect/ConnectActivationSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 107
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$300(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTool;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 108
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$300(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTool;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 109
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "ConnectActivationSDK"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$202(Lcom/powervision/natives/connect/ConnectActivationSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;

    .line 110
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 111
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    :cond_0
    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/16 v0, 0xc

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

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->connected()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$100(Lcom/powervision/natives/connect/ConnectActivationSDK;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$000(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 95
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$000(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->disconnectActivationLink()I

    goto :goto_0

    :cond_3
    const-string p1, "huangActivation"

    const-string v0, "connectActivationLink"

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$000(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 81
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$000(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->disconnectActivationLink()I

    .line 82
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-static {p1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->access$000(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->connectActivationLink()I

    :cond_4
    :goto_0
    return-void
.end method
