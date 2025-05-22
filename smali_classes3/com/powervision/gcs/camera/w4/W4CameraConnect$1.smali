.class Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;
.super Lcom/powervision/natives/connect/ConnectTool;
.source "W4CameraConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/camera/w4/W4CameraConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/camera/w4/W4CameraConnect;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectTool;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iput-object v1, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    invoke-static {v0}, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->access$100(Lcom/powervision/gcs/camera/w4/W4CameraConnect;)Lcom/powervision/natives/connect/ConnectTool;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    invoke-static {v0}, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->access$100(Lcom/powervision/gcs/camera/w4/W4CameraConnect;)Lcom/powervision/natives/connect/ConnectTool;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    new-instance v1, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "W4CameraConnect"

    invoke-direct {v1, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    :cond_0
    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->notifyThis()V

    :cond_0
    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    iget-object v0, v0, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->clearBuffer()V

    return-void
.end method

.method public work(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/camera/w4/W4CameraConnect$1;->this$0:Lcom/powervision/gcs/camera/w4/W4CameraConnect;

    invoke-static {p1}, Lcom/powervision/gcs/camera/w4/W4CameraConnect;->access$000(Lcom/powervision/gcs/camera/w4/W4CameraConnect;)V

    goto :goto_0

    :cond_1
    const-string p1, "huangActivation"

    const-string v0, "connectActivationLink"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
