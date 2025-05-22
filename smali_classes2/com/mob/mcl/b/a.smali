.class Lcom/mob/mcl/b/a;
.super Ljava/lang/Object;
.source "MCLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mob/mcl/b/b;


# direct methods
.method constructor <init>(Lcom/mob/mcl/b/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/b/a;->b:Lcom/mob/mcl/b/b;

    iput p2, p0, Lcom/mob/mcl/b/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/mcl/b/a;->b:Lcom/mob/mcl/b/b;

    iget v1, p0, Lcom/mob/mcl/b/a;->a:I

    invoke-static {v0, v1}, Lcom/mob/mcl/b/b;->a(Lcom/mob/mcl/b/b;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
