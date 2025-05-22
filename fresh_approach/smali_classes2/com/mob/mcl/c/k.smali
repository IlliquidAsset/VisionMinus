.class Lcom/mob/mcl/c/k;
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
    iput-object p1, p0, Lcom/mob/mcl/c/k;->a:Lcom/mob/mcl/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/k;->a:Lcom/mob/mcl/c/i;

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mob/mcl/c/k;->a:Lcom/mob/mcl/c/i;

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mob/mcl/c/k;->a:Lcom/mob/mcl/c/i;

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->j()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/k;->a:Lcom/mob/mcl/c/i;

    const/16 v1, 0x1388

    .line 7
    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/i;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
