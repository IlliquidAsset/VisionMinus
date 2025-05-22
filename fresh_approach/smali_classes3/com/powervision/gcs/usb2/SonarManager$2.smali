.class Lcom/powervision/gcs/usb2/SonarManager$2;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "SonarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/SonarManager;
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
.field final synthetic this$0:Lcom/powervision/gcs/usb2/SonarManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/SonarManager;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager$2;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

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

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$2;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/SonarManager;->contrlTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$2;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/SonarManager;->contrlTask:Lcom/powervision/gcs/usb2/MsgTask;

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
    .locals 2

    if-eqz p1, :cond_2

    .line 117
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager$2;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/SonarManager;->cmdStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager$2;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/SonarManager;->cmdStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;

    invoke-interface {p1}, Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;->onSuccess()V

    goto :goto_0

    .line 123
    :cond_0
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string p1, "lzqSonar"

    const-string v0, "SONAR_CTRL \u63a5\u5230Cancel \u53d1Start"

    .line 125
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4a3a

    .line 126
    invoke-static {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$2;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/SonarManager;->listener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$2;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/SonarManager;->listener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/Msg;->packet:[B

    invoke-interface {v0, p1}, Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;->onReceiveContrlData([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/powervision/gcs/usb2/Msg;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/SonarManager$2;->work(Lcom/powervision/gcs/usb2/Msg;)V

    return-void
.end method
