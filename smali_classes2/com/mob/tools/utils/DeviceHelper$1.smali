.class Lcom/mob/tools/utils/DeviceHelper$1;
.super Ljava/lang/Object;
.source "DeviceHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DeviceHelper;->saInUI(Landroid/content/Context;Landroid/content/Intent;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/DeviceHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$res:[I


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DeviceHelper;[ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2469
    iput-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$1;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    iput-object p2, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$res:[I

    iput-object p3, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 2471
    iget-object p1, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$res:[I

    monitor-enter p1

    const/4 v0, 0x0

    .line 2473
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$res:[I

    iget-object v2, p0, Lcom/mob/tools/utils/DeviceHelper$1;->this$0:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/utils/DeviceHelper;->sa(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$res:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2475
    :try_start_2
    iget-object v2, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$res:[I

    const/4 v3, 0x2

    aput v3, v2, v0

    .line 2476
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2478
    :try_start_3
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$res:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2480
    :goto_0
    monitor-exit p1

    return v0

    :catchall_1
    move-exception v0

    .line 2478
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper$1;->val$res:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0

    :catchall_2
    move-exception v0

    .line 2480
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
