.class Lcom/powervision/gcs/usb2/GcsUsbManager$1;
.super Landroid/os/Handler;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager;Landroid/os/Looper;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 190
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " \u5207\u6362\u6210USB-A"

    const/4 v2, 0x0

    const-string v3, "lzqUsb"

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto/16 :goto_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->closeAccessoryComm()V

    .line 220
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/usb/UsbAccessory;

    invoke-static {v0, v5}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$200(Lcom/powervision/gcs/usb2/GcsUsbManager;Landroid/hardware/usb/UsbAccessory;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    const-string v0, "\u91cd\u8bd5TRY_SEND"

    .line 222
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 225
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget v2, v2, Lcom/powervision/gcs/usb2/GcsUsbManager;->countRange:I

    if-ge v0, v2, :cond_1

    .line 227
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 228
    iput v4, v1, Landroid/os/Message;->what:I

    .line 229
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    add-int/2addr v0, v4

    .line 230
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 232
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 234
    :cond_1
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_didNotGetAccessory()V

    goto/16 :goto_1

    :cond_2
    if-ne v0, v4, :cond_3

    const-string p1, "\u6210\u529f\u5f00\u542fAOA"

    .line 240
    invoke-static {v3, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->startAccessoryComm(I)V

    .line 242
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_onUsb2Confirm()V

    goto/16 :goto_1

    :cond_3
    const-string p1, "\u51fa\u4e86\u6545\u969c"

    .line 245
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->tryConnected()V

    goto :goto_1

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    .line 194
    :cond_5
    aget-object v4, v0, v2

    :goto_0
    if-eqz v4, :cond_6

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62ff\u5230\u4e86 accessory len "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/usb2/GcsUsbManager;->askAoaPermisison(Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_1

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, " mHandler TRY_CONNECT "

    .line 203
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 205
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 206
    iput v2, v0, Landroid/os/Message;->what:I

    add-int/lit8 v2, p1, 0x1

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget v2, v2, Lcom/powervision/gcs/usb2/GcsUsbManager;->countRange:I

    if-ge p1, v2, :cond_7

    .line 210
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object p1, p1, Lcom/powervision/gcs/usb2/GcsUsbManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 212
    :cond_7
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$1;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_didNotGetAccessory()V

    :cond_8
    :goto_1
    return-void
.end method
