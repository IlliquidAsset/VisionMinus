.class Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager;Lcom/powervision/gcs/usb2/GcsUsbManager$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.example.USB_PERMISSION"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 273
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$300(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string p1, "permission"

    .line 275
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "lzqUsb"

    const-string v1, "\u83b7\u5f97\u6743\u9650!!!!!!!!"

    .line 277
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver$1;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;Landroid/content/Intent;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/GcsUsbManager;->listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    const-string p2, "usbReceiver   NotHavePermission"

    invoke-interface {p1, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;->onMsg(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->tryConnected()V

    .line 309
    :goto_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "lzqUsb_1"

    const-string p2, "ACTION_USB_ACCESSORY_DETACHED"

    .line 312
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "lzqUsb"

    const-string p2, "\u63d2\u5165----------ACTION_USB_ACCESSORY_ATTACHED-------------"

    .line 315
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "lzqUsb"

    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "connected"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u63d2\u5165"

    goto :goto_1

    :cond_4
    const-string v0, "\u62d4\u51fa"

    :goto_1
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "connected"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 321
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->onUsbStateChanged(Z)V

    goto :goto_2

    .line 325
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$UsbBroadcastReceiver;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->onUsbStateChanged(Z)V

    :cond_6
    :goto_2
    return-void
.end method
