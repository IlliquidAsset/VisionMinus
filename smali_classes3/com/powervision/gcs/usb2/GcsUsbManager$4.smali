.class Lcom/powervision/gcs/usb2/GcsUsbManager$4;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/usb2/MsgHandle<",
        "[B>;"
    }
.end annotation


# instance fields
.field h:I

.field start:J

.field final synthetic this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V
    .locals 2

    .line 819
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-direct {p0}, Lcom/powervision/gcs/usb2/MsgHandle;-><init>()V

    const/4 p1, 0x0

    .line 820
    iput p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->h:I

    const-wide/16 v0, 0x0

    .line 821
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->start:J

    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    const-string v0, "lzqUsb"

    const-string v1, "free"

    .line 837
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$600(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$700(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "lzqUsb"

    const-string v2, "out close"

    .line 840
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    :try_start_1
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$700(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 843
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$702(Lcom/powervision/gcs/usb2/GcsUsbManager;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 845
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 848
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyTheMaster()V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgTask;->notifyThis(I)V

    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public stopTheMasterInmedratily()V
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    const-string v0, "lzqUsb"

    const-string v1, "send interrupt"

    .line 869
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/MsgTask;->interrupt()V

    :cond_0
    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 819
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->work([B)V

    return-void
.end method

.method public work([B)V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$4;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->write([B)V

    return-void
.end method
