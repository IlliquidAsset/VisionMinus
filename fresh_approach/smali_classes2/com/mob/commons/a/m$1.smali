.class Lcom/mob/commons/a/m$1;
.super Ljava/lang/Object;
.source "FBManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/m;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/m;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/m;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto :goto_2

    .line 105
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mob/commons/FBListener;

    if-eqz p1, :cond_6

    .line 108
    iget-object v0, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->b(Lcom/mob/commons/a/m;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->c(Lcom/mob/commons/a/m;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, v4, v1, v2}, Lcom/mob/commons/FBListener;->onFBChanged(ZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 112
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v4}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;JZ)V

    goto :goto_2

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-static {p1, v4}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;Z)V

    goto :goto_2

    .line 89
    :cond_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->amIOnForeground()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 90
    iget-object p1, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;J)J

    .line 91
    iget-object p1, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-static {p1, v3}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;Z)V

    goto :goto_1

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-static {p1, v1, v2, v3}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;JZ)V

    .line 95
    :goto_1
    iget-object p1, p0, Lcom/mob/commons/a/m$1;->a:Lcom/mob/commons/a/m;

    invoke-static {p1}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;)V

    :cond_6
    :goto_2
    return v3
.end method
