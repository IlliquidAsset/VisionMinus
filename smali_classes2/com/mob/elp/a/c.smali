.class Lcom/mob/elp/a/c;
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
    iput-object p1, p0, Lcom/mob/elp/a/c;->c:Lcom/mob/elp/a/b;

    iput-object p2, p0, Lcom/mob/elp/a/c;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/mob/elp/a/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/elp/a/c;->a:Landroid/os/Bundle;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/mob/elp/a/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/elp/PushMessage;->createPushMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/elp/PushMessage;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v1, v1, Lcom/mob/elp/PushMessage$Unfold;->images:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v1, v1, Lcom/mob/elp/PushMessage$Unfold;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v4, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v4, v4, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-le v4, v3, :cond_1

    iget-object v4, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v4, v4, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->location:I

    if-ne v1, v3, :cond_3

    .line 10
    iget-object v1, p0, Lcom/mob/elp/a/c;->c:Lcom/mob/elp/a/b;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/elp/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/mob/elp/a/b;->a(Lcom/mob/elp/a/b;Landroid/content/Context;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->location:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lcom/mob/elp/a/c;->c:Lcom/mob/elp/a/b;

    iget-object v2, p0, Lcom/mob/elp/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mob/elp/a/b;->a(Lcom/mob/elp/a/b;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
