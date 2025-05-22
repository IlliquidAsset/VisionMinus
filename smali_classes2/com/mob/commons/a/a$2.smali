.class Lcom/mob/commons/a/a$2;
.super Ljava/lang/Object;
.source "ActClt.java"

# interfaces
.implements Lcom/mob/commons/FBListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/a;->a_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/a;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBChanged(ZZJ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mob/commons/a/a;->a(Lcom/mob/commons/a/a;J)J

    .line 50
    iget-object v0, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {v0}, Lcom/mob/commons/a/a;->a(Lcom/mob/commons/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {v0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/commons/a/a;->a(Lcom/mob/commons/a/a;Landroid/os/Handler;)Landroid/os/Handler;

    .line 52
    iget-object v0, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {v0}, Lcom/mob/commons/a/a;->b(Lcom/mob/commons/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    .line 57
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {}, Lcom/mob/commons/b;->a()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/mob/commons/a/a;->a(Lcom/mob/commons/a/a;J)J

    .line 58
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {p1}, Lcom/mob/commons/a/a;->b(Lcom/mob/commons/a/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {p1}, Lcom/mob/commons/a/a;->c(Lcom/mob/commons/a/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 61
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {p1}, Lcom/mob/commons/a/a;->d(Lcom/mob/commons/a/a;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {p1}, Lcom/mob/commons/a/a;->a(Lcom/mob/commons/a/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 p1, 0x0

    cmp-long v1, p3, p1

    if-lez v1, :cond_3

    .line 64
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {p1}, Lcom/mob/commons/a/a;->e(Lcom/mob/commons/a/a;)V

    .line 65
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {p1}, Lcom/mob/commons/a/a;->f(Lcom/mob/commons/a/a;)V

    .line 66
    iget-object p1, p0, Lcom/mob/commons/a/a$2;->a:Lcom/mob/commons/a/a;

    invoke-static {p1}, Lcom/mob/commons/a/a;->b(Lcom/mob/commons/a/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return-void
.end method
