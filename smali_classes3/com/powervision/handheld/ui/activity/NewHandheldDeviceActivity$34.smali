.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->onConnect(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 3640
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 3643
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6600(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    const-string v0, "nemo_record_info"

    const-string v1, "\u8d70\u5e7f\u64ad\uff0c\u4ece\u5916\u653e\u6536\u58f0\u53d8\u6210\u84dd\u7259\u6536\u58f0 \u6536\u5230\u4e86\u56de\u8c03\u4e86"

    .line 3644
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    :goto_0
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6700(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->isStartRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x32

    .line 3647
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3649
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d0

    .line 3654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3656
    :cond_1
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget-object v4, v4, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    const/4 v6, 0x2

    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v7, 0x64

    .line 3660
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 3662
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3664
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    int-to-long v9, v1

    cmp-long v4, v7, v9

    if-ltz v4, :cond_1

    .line 3667
    :goto_2
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget-object v1, v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    if-ne v6, v1, :cond_3

    const-string v1, "\u8d70\u5e7f\u64ad\uff0c\u84dd\u7259\u8033\u673a\u8fde\u63a5\u4e0a\uff0c\u6253\u5f00SCO\u8fde\u63a5"

    .line 3668
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->closeSco()V

    .line 3670
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-virtual {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/handheld/utils/BluetoothUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/handheld/utils/BluetoothUtil;

    move-result-object v0

    new-instance v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34$1;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34$1;-><init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;)V

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/utils/BluetoothUtil;->openSco(Lcom/powervision/handheld/utils/BluetoothUtil$IBluetoothConnectListener;)V

    goto :goto_3

    :cond_3
    const-string v1, "\u8d70\u5e7f\u64ad\uff0c\u6ca1\u6709\u84dd\u7259\u8033\u673a\u8fde\u63a5\uff0c\u91c7\u7528\u624b\u673a\u7aef\u6536\u97f3"

    .line 3682
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$34;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    :goto_3
    return-void
.end method
