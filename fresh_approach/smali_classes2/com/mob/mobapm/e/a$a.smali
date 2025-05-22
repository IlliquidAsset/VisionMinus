.class Lcom/mob/mobapm/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/ActivityTracker$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mobapm/e/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mobapm/e/a;


# direct methods
.method constructor <init>(Lcom/mob/mobapm/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

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

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    invoke-static {v0}, Lcom/mob/mobapm/e/a;->a(Lcom/mob/mobapm/e/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/mob/mobapm/e/a$a;->onStopped(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    invoke-static {v0}, Lcom/mob/mobapm/e/a;->a(Lcom/mob/mobapm/e/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mob/mobapm/e/a;->a(Lcom/mob/mobapm/e/a;J)J

    .line 3
    invoke-static {}, Lcom/mob/mobapm/core/b;->e()Lcom/mob/mobapm/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mobapm/core/b;->c()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mob/mobapm/e/a;->a(Lcom/mob/mobapm/e/a;Ljava/lang/String;)Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    invoke-static {v0}, Lcom/mob/mobapm/e/a;->b(Lcom/mob/mobapm/e/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    invoke-static {v0}, Lcom/mob/mobapm/e/a;->b(Lcom/mob/mobapm/e/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/mob/mobapm/e/a;->a(Lcom/mob/mobapm/e/a;J)J

    .line 3
    iget-object p1, p0, Lcom/mob/mobapm/e/a$a;->a:Lcom/mob/mobapm/e/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mob/mobapm/e/a;->a(Lcom/mob/mobapm/e/a;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/mob/mobapm/core/b;->e()Lcom/mob/mobapm/core/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mobapm/core/b;->a()V

    :cond_1
    return-void
.end method
