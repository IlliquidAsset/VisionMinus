.class Lcom/powervision/gcs/usb2/SonarManager$1;
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

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager$1;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

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

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$1;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarManager;->access$000(Lcom/powervision/gcs/usb2/SonarManager;)Lcom/powervision/gcs/usb2/MsgTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$1;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarManager;->access$000(Lcom/powervision/gcs/usb2/SonarManager;)Lcom/powervision/gcs/usb2/MsgTask;

    move-result-object v0

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
    .locals 4

    if-eqz p1, :cond_2

    .line 47
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v1, 0x1

    const-string v2, "SONAR_IMAGE \u63a5\u5230Cancel \u53d1Start"

    const-string v3, "lzqSonar_i"

    if-ne v0, v1, :cond_0

    .line 48
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager$1;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/SonarManager;->dataStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;

    if-eqz p1, :cond_2

    .line 52
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager$1;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/SonarManager;->dataStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;

    invoke-interface {p1}, Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;->onSuccess()V

    goto :goto_0

    .line 55
    :cond_0
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 57
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4a39

    .line 58
    invoke-static {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$1;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/SonarManager;->listener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager$1;->this$0:Lcom/powervision/gcs/usb2/SonarManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/SonarManager;->listener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/Msg;->packet:[B

    invoke-interface {v0, p1}, Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;->onReceiveImageData([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/powervision/gcs/usb2/Msg;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/SonarManager$1;->work(Lcom/powervision/gcs/usb2/Msg;)V

    return-void
.end method
