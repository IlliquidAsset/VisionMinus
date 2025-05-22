.class Lcom/mob/mcl/c/d$a$a;
.super Ljava/lang/Object;
.source "HeartBeatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/d$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/d$a;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/c/d$a$a;->a:Lcom/mob/mcl/c/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/mcl/c/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tcp send ping success "

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mob/mcl/c/d$a$a;->a:Lcom/mob/mcl/c/d$a;

    iget-object v0, v0, Lcom/mob/mcl/c/d$a;->a:Lcom/mob/mcl/c/d;

    invoke-virtual {v0}, Lcom/mob/mcl/c/d;->d()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/d$a$a;->a:Lcom/mob/mcl/c/d$a;

    iget-object v0, v0, Lcom/mob/mcl/c/d$a;->a:Lcom/mob/mcl/c/d;

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/i;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mcl/c/i;->j()V

    .line 12
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v1

    const/16 v2, 0x1388

    .line 13
    invoke-virtual {v1, v2}, Lcom/mob/mcl/c/i;->a(I)Z

    .line 14
    invoke-virtual {v0}, Lcom/mob/mcl/c/d;->d()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 15
    throw v0
.end method
