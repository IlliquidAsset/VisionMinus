.class final Lcom/mob/tools/utils/DeviceHelper$3;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$mainThreadAct:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

.field final synthetic val$output:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;)V
    .locals 0

    .line 2695
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$output:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$mainThreadAct:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 2697
    iget-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 2699
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$output:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$mainThreadAct:Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2704
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 2706
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    .line 2701
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 2704
    :try_start_4
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    .line 2706
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    goto :goto_0

    .line 2709
    :goto_1
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v0

    :catchall_4
    move-exception v0

    .line 2704
    :try_start_6
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    .line 2706
    :try_start_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 2707
    :goto_2
    throw v0

    .line 2709
    :goto_3
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method
