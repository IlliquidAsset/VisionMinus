.class Lcom/mob/mcl/c/j;
.super Ljava/lang/Object;
.source "TcpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/i;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/c/j;->a:Lcom/mob/mcl/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/j;->a:Lcom/mob/mcl/c/i;

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->j()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/j;->a:Lcom/mob/mcl/c/i;

    const/16 v1, 0x1388

    .line 5
    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x1388

    .line 6
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/mob/mcl/c/j;->a:Lcom/mob/mcl/c/i;

    .line 12
    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/i;->a(I)Z

    :cond_1
    return-void
.end method
