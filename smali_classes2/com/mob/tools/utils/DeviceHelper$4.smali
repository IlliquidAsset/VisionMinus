.class Lcom/mob/tools/utils/DeviceHelper$4;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->bs(Landroid/content/Context;Landroid/content/Intent;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DeviceHelper;[ZLandroid/content/Context;)V
    .locals 0

    .line 2987
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$4;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$result:[Z

    iput-object p3, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 2990
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$result:[Z

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2991
    :try_start_1
    iget-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$result:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p2, v0

    .line 2992
    iget-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$result:[Z

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 2993
    iget-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2994
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 2996
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 3002
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$result:[Z

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3003
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper$4;->val$result:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3004
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 3006
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
