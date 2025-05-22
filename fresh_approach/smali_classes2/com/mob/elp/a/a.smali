.class Lcom/mob/elp/a/a;
.super Ljava/lang/Object;
.source "ELPImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mob/elp/a/b;


# direct methods
.method constructor <init>(Lcom/mob/elp/a/b;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/elp/a/a;->c:Lcom/mob/elp/a/b;

    iput-object p2, p0, Lcom/mob/elp/a/a;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/mob/elp/a/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/elp/a/a;->a:Landroid/os/Bundle;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/mob/elp/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/elp/PushMessage;->createPushMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/elp/PushMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/mob/elp/a/a;->c:Lcom/mob/elp/a/b;

    invoke-static {v1}, Lcom/mob/elp/a/b;->a(Lcom/mob/elp/a/b;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/mob/elp/a/a;->c:Lcom/mob/elp/a/b;

    invoke-static {v1}, Lcom/mob/elp/a/b;->b(Lcom/mob/elp/a/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/elp/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mob/elp/a/a;->c:Lcom/mob/elp/a/b;

    invoke-static {v1, v0}, Lcom/mob/elp/a/b;->a(Lcom/mob/elp/a/b;Lcom/mob/elp/PushMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
