.class Lcom/mob/tools/utils/BHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "BHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/BHelper;->registerBOperationReceiver(Ljava/lang/String;Lcom/mob/tools/utils/BHelper$BOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/BHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/BHelper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 98
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 100
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const/16 p2, 0xa

    if-eq v0, p2, :cond_2

    const/16 p2, 0xc

    if-eq v0, p2, :cond_0

    goto/16 :goto_6

    .line 109
    :cond_0
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p2}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p2}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 110
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p2}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/BHelper$BOperationCallback;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/mob/tools/utils/BHelper$BOperationCallback;->onEnabled()V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p2}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p2}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 127
    iget-object p2, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {p2}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/BHelper$BOperationCallback;

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v0}, Lcom/mob/tools/utils/BHelper$BOperationCallback;->onDisabled()V

    goto :goto_1

    :cond_4
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_9

    :try_start_1
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 146
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    .line 148
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 150
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 151
    iget-object v1, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v1, p2}, Lcom/mob/tools/utils/BHelper;->access$100(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto/16 :goto_6

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 161
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/utils/BHelper$BOperationCallback;

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 164
    invoke-virtual {v1, v2, p2}, Lcom/mob/tools/utils/BHelper$BOperationCallback;->onConnectionChanged(ZLjava/util/HashMap;)V

    goto :goto_2

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 178
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/utils/BHelper$BOperationCallback;

    if-eqz v1, :cond_8

    .line 181
    invoke-virtual {v1, p1, p2}, Lcom/mob/tools/utils/BHelper$BOperationCallback;->onConnectionChanged(ZLjava/util/HashMap;)V

    goto :goto_3

    :cond_9
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 192
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 193
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0, p2}, Lcom/mob/tools/utils/BHelper;->access$100(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object p2

    .line 194
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 195
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/utils/BHelper$BOperationCallback;

    if-eqz v1, :cond_a

    .line 198
    invoke-virtual {v1, p2}, Lcom/mob/tools/utils/BHelper$BOperationCallback;->onDeviceConnected(Ljava/util/HashMap;)V

    goto :goto_4

    :cond_b
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 206
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 207
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0, p2}, Lcom/mob/tools/utils/BHelper;->access$100(Lcom/mob/tools/utils/BHelper;Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object p2

    .line 208
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/mob/tools/utils/BHelper$1;->this$0:Lcom/mob/tools/utils/BHelper;

    invoke-static {v0}, Lcom/mob/tools/utils/BHelper;->access$000(Lcom/mob/tools/utils/BHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/utils/BHelper$BOperationCallback;

    if-eqz v1, :cond_c

    .line 212
    invoke-virtual {v1, p2}, Lcom/mob/tools/utils/BHelper$BOperationCallback;->onDeviceDisconnected(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p2

    .line 218
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

    :cond_d
    :goto_6
    return-void
.end method
