.class Lcom/powervision/gcs/usb2/GcsUsbManager$3;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;->trySend(Landroid/hardware/usb/UsbAccessory;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$3;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, " \u8d85\u65f6\u4e86 "

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$3;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->tryConnected()V

    return-void
.end method
