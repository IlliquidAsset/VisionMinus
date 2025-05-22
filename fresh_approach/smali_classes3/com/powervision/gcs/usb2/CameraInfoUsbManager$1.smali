.class Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;
.super Lcom/powervision/gcs/usb2/MsgHandle;
.source "CameraInfoUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/CameraInfoUsbManager;
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
.field final synthetic this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/CameraInfoUsbManager;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    invoke-direct {p0}, Lcom/powervision/gcs/usb2/MsgHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    return-void
.end method

.method public notifyTheMaster()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgTask:Lcom/powervision/gcs/usb2/MsgTask;

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
    .locals 6

    .line 65
    iget v0, p1, Lcom/powervision/gcs/usb2/Msg;->type:I

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "lzq567"

    const-string v0, "======== \u63a5\u5230restart \u8fde\u63a5\u6210\u529f ========="

    .line 102
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "lzq567"

    const-string v2, "==========\u53d1\u9001Cancel==========="

    .line 73
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2947

    .line 74
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->timeOutLock()V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_4

    const-string v0, "lzq567"

    const-string v2, "\u8d85\u65f6"

    .line 80
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 83
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    iget-object v4, v4, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v4, v4, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 84
    iget-object v4, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    iget-object v4, v4, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->msgReceiveHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    iget-object v4, v4, Lcom/powervision/gcs/usb2/MsgHandle;->queue:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/usb2/Msg;

    .line 85
    iget v4, v4, Lcom/powervision/gcs/usb2/Msg;->type:I

    if-ne v4, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_6

    .line 91
    iget-object p1, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->connect()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    const-string p1, "lzq567"

    const-string v0, "\u5524\u9192\u4e86 \u8fde\u63a5\u6210\u529f"

    .line 95
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->commonCallback:Lorg/xutils/common/Callback$CommonCallback;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/Msg;->packet:[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic work(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/powervision/gcs/usb2/Msg;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager$1;->work(Lcom/powervision/gcs/usb2/Msg;)V

    return-void
.end method
