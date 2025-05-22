.class Lcom/mob/commons/a/m$2;
.super Ljava/lang/Object;
.source "FBManager.java"

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/m;->b()V
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

    .line 148
    iput-object p1, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->c(Lcom/mob/commons/a/m;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/mob/commons/a/m$2;->onStopped(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->c(Lcom/mob/commons/a/m;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;J)J

    .line 160
    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->d(Lcom/mob/commons/a/m;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->d(Lcom/mob/commons/a/m;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->e(Lcom/mob/commons/a/m;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {v0}, Lcom/mob/commons/a/m;->e(Lcom/mob/commons/a/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {p1}, Lcom/mob/commons/a/m;->d(Lcom/mob/commons/a/m;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {p1}, Lcom/mob/commons/a/m;->c(Lcom/mob/commons/a/m;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {p1}, Lcom/mob/commons/a/m;->c(Lcom/mob/commons/a/m;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 178
    :goto_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x2

    .line 179
    iput v4, p1, Landroid/os/Message;->what:I

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iget-object v2, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {v2}, Lcom/mob/commons/a/m;->d(Lcom/mob/commons/a/m;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    invoke-static {p1, v0, v1}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;J)J

    .line 184
    iget-object p1, p0, Lcom/mob/commons/a/m$2;->a:Lcom/mob/commons/a/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mob/commons/a/m;->a(Lcom/mob/commons/a/m;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void
.end method
