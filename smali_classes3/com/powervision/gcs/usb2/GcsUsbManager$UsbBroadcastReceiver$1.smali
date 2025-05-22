.class Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->this$1:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    iput-object p2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "accessory"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 282
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->this$1:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$400(Lcom/powervision/gcs/usb2/GcsUsbManager;Landroid/hardware/usb/UsbAccessory;I)I

    move-result v1

    const-string v3, "lzqUsb"

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 284
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->this$1:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 286
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    iput v2, v1, Landroid/os/Message;->what:I

    .line 288
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 289
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->this$1:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "getAccessoryList null"

    .line 291
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->this$1:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->tryConnected()V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const-string v0, "serial =  null try send"

    .line 296
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;->this$1:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->tryConnected()V

    :cond_2
    :goto_0
    return-void
.end method
