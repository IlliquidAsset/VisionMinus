.class Lcom/mob/tools/utils/BHelper$3;
.super Landroid/content/BroadcastReceiver;
.source "BHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/BHelper;->findLEAndClassic(ILcom/mob/tools/utils/BHelper$BScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/BHelper;

.field final synthetic val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$scanResult:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/BHelper;Ljava/util/ArrayList;Lcom/mob/tools/utils/BHelper$BScanCallback;Landroid/os/Handler;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper$3;->this$0:Lcom/mob/tools/utils/BHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/BHelper$3;->val$scanResult:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/mob/tools/utils/BHelper$3;->val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

    iput-object p4, p0, Lcom/mob/tools/utils/BHelper$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x0

    .line 383
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 387
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 388
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper$3;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v1, v0}, Lcom/mob/tools/utils/BHelper;->access$100(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.RSSI"

    .line 392
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p2

    const-string v1, "rssi"

    .line 393
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$3;->val$scanResult:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 395
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 396
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const-string v0, "started"

    new-array v1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 397
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 398
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const-string v0, "done"

    new-array v1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 399
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$3;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p2, p1}, Lcom/mob/tools/utils/BHelper;->access$202(Lcom/mob/tools/utils/BHelper;Z)Z

    .line 400
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$3;->val$bScanCallback:Lcom/mob/tools/utils/BHelper$BScanCallback;

    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$3;->val$scanResult:Ljava/util/ArrayList;

    invoke-interface {p2, v0}, Lcom/mob/tools/utils/BHelper$BScanCallback;->onScan(Ljava/util/ArrayList;)V

    .line 402
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$3;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-virtual {p2}, Lcom/mob/tools/utils/BHelper;->unRegisterBScanReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 407
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method
