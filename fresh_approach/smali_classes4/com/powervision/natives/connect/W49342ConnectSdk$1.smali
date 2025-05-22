.class Lcom/powervision/natives/connect/W49342ConnectSdk$1;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "W49342ConnectSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/W49342ConnectSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/W49342ConnectSdk;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 125
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iput-object v1, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 126
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 127
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 128
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "W49342ConnectSdk"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 129
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    :cond_0
    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    iget-object v0, v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_W4_API;->disconnect9342()V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->alterWIFI()V

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->alterUsb()V

    goto :goto_0

    .line 105
    :pswitch_4
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-static {p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->access$000(Lcom/powervision/natives/connect/W49342ConnectSdk;)V

    goto :goto_0

    .line 102
    :pswitch_5
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-static {p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->access$000(Lcom/powervision/natives/connect/W49342ConnectSdk;)V

    goto :goto_0

    .line 99
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-static {p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->access$000(Lcom/powervision/natives/connect/W49342ConnectSdk;)V

    goto :goto_0

    .line 96
    :pswitch_7
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-static {p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->access$000(Lcom/powervision/natives/connect/W49342ConnectSdk;)V

    goto :goto_0

    .line 90
    :pswitch_8
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->init()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
