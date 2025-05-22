.class Lcom/powervision/gcs/usb2/GcsUsbManager$6;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;->shot()V
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

    .line 1541
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$6;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0xfa0

    .line 1545
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1547
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "lzqTest"

    const-string v1, "\u5f00\u59cb\u9a8c\u8bc1\u662f\u5426\u8fde\u63a5\u4e0a\u8239"

    .line 1549
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$6;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.1.10/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cgi-bin/hi3559/photo.cgi?&-type=common&-cmd=start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "192.168.1.10"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
