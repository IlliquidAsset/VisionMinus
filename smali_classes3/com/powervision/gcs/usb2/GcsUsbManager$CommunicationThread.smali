.class Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;
.super Ljava/lang/Thread;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommunicationThread"
.end annotation


# instance fields
.field communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1460
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager$1;)V
    .locals 0

    .line 1460
    invoke-direct {p0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "lzqUsb"

    .line 1469
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1472
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    if-eqz v1, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->work()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-interface {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->destory()V

    return-void

    :cond_1
    :try_start_1
    const-string v1, "\u81ea\u5df1\u629b\u51fa\u7684"

    .line 1473
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string v1, "IOException lastIn = false"

    .line 1491
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    const-string v1, "Thread IOException"

    invoke-interface {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->onMsg(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-interface {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->destory()V

    return-void

    :catch_1
    const-string v1, "InterruptedException"

    .line 1487
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-interface {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->destory()V

    return-void
.end method

.method public setCommunicateListener(Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;)V
    .locals 0

    .line 1464
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    return-void
.end method
