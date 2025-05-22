.class Lcom/mob/elp/a/b$b;
.super Ljava/lang/Object;
.source "ELPImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/elp/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/elp/a/b;


# direct methods
.method constructor <init>(Lcom/mob/elp/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/elp/a/b$b;->a:Lcom/mob/elp/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/elp/a/b$b;->a:Lcom/mob/elp/a/b;

    invoke-static {v0}, Lcom/mob/elp/a/b;->c(Lcom/mob/elp/a/b;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/elp/a/b$b;->a:Lcom/mob/elp/a/b;

    invoke-static {v0}, Lcom/mob/elp/a/b;->c(Lcom/mob/elp/a/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/elp/a/b$b;->a:Lcom/mob/elp/a/b;

    invoke-static {v0}, Lcom/mob/elp/a/b;->c(Lcom/mob/elp/a/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/mob/elp/a/b$b;->a:Lcom/mob/elp/a/b;

    invoke-static {v1}, Lcom/mob/elp/a/b;->c(Lcom/mob/elp/a/b;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/elp/PushMessage;

    .line 7
    iget-object v2, p0, Lcom/mob/elp/a/b$b;->a:Lcom/mob/elp/a/b;

    invoke-static {v2}, Lcom/mob/elp/a/b;->c(Lcom/mob/elp/a/b;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/mob/elp/a/b$b;->a:Lcom/mob/elp/a/b;

    invoke-static {v2, v1, v0}, Lcom/mob/elp/a/b;->a(Lcom/mob/elp/a/b;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
