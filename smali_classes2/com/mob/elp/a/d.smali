.class Lcom/mob/elp/a/d;
.super Ljava/lang/Object;
.source "ELPImpl.java"

# interfaces
.implements Lcom/mob/elp/d/e$b;


# instance fields
.field final synthetic a:Lcom/mob/elp/PushMessage;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mob/elp/a/b;


# direct methods
.method constructor <init>(Lcom/mob/elp/a/b;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/elp/a/d;->c:Lcom/mob/elp/a/b;

    iput-object p2, p0, Lcom/mob/elp/a/d;->a:Lcom/mob/elp/PushMessage;

    iput-object p3, p0, Lcom/mob/elp/a/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mob/elp/a/d;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mob/elp/a/d;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-eq v1, v2, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcom/mob/elp/a/d$a;

    invoke-direct {v2, p0, p1}, Lcom/mob/elp/a/d$a;-><init>(Lcom/mob/elp/a/d;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/mob/elp/a/d;->c:Lcom/mob/elp/a/b;

    iget-object v1, p0, Lcom/mob/elp/a/d;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v1}, Lcom/mob/mcl/MCLSDK;->deleteMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    .line 15
    iget-object p1, p0, Lcom/mob/elp/a/d;->c:Lcom/mob/elp/a/b;

    iget-object v1, p0, Lcom/mob/elp/a/d;->b:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 16
    invoke-static {v1}, Lcom/mob/mcl/MCLSDK;->deleteMsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    throw v0
.end method
