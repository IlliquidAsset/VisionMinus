.class Lcom/mob/mcl/c/i$a;
.super Ljava/lang/Object;
.source "TcpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/i;->a(Lcom/mob/mcl/BusinessCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/BusinessCallBack;

.field final synthetic b:Lcom/mob/mcl/c/i;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/i;Lcom/mob/mcl/BusinessCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/c/i$a;->b:Lcom/mob/mcl/c/i;

    iput-object p2, p0, Lcom/mob/mcl/c/i$a;->a:Lcom/mob/mcl/BusinessCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/i$a;->b:Lcom/mob/mcl/c/i;

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    const/16 v2, 0xbb8

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/mob/mcl/c/i;->a(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v2, Lcom/mob/mcl/c/i$a$a;

    invoke-direct {v2, p0, v0}, Lcom/mob/mcl/c/i$a$a;-><init>(Lcom/mob/mcl/c/i$a;Z)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    if-nez v0, :cond_2

    .line 12
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->j()V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mob/mcl/c/i$a;->b:Lcom/mob/mcl/c/i;

    const/16 v1, 0x1388

    .line 16
    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/i;->a(I)Z

    :cond_2
    return-void
.end method
