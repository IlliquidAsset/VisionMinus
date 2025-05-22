.class Lcom/powervision/gcs/usb2/GCSConnectionManager$4;
.super Ljava/lang/Object;
.source "GCSConnectionManager.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSConnectionManager;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 575
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object p1

    const-string v0, "onError"

    if-eqz p1, :cond_0

    .line 576
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;->msg(Ljava/lang/String;)V

    :cond_0
    const-string p1, "lzqUsb"

    .line 578
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMsg(Ljava/lang/String;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;->msg(Ljava/lang/String;)V

    .line 586
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqUsb"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceive([BI)V
    .locals 1

    .line 567
    iget-object p2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {p2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 568
    iget-object p2, p0, Lcom/powervision/gcs/usb2/GCSConnectionManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSConnectionManager;

    invoke-static {p2}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->access$300(Lcom/powervision/gcs/usb2/GCSConnectionManager;)Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p2, v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager$MsgListener;->msg(Ljava/lang/String;)V

    :cond_0
    const-string p1, "lzqUsb"

    const-string p2, "onReceive"

    .line 570
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
