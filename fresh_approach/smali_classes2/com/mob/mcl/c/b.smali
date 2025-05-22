.class Lcom/mob/mcl/c/b;
.super Ljava/lang/Object;
.source "HeartBeatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->j()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    const/16 v1, 0x1388

    .line 6
    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/i;->a(I)Z

    :cond_1
    return-void
.end method
