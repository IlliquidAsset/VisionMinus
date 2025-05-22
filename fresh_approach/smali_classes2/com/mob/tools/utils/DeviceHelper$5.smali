.class Lcom/mob/tools/utils/DeviceHelper$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->getBatteryState(Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;

.field final synthetic val$callback:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;)V
    .locals 0

    .line 3151
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$5;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$5;->val$callback:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 3153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3154
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3155
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3157
    :cond_0
    iget-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$5;->val$callback:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    if-eqz p2, :cond_1

    .line 3158
    invoke-interface {p2, v0}, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;->run(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    const-string p2, "unregisterReceiver"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array v0, v0, [Ljava/lang/Class;

    .line 3162
    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, v0, v2

    invoke-static {p1, p2, v1, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
