.class public Lcom/mob/mobapm/core/a;
.super Lcom/mob/mobapm/core/k;
.source "SourceFile"


# static fields
.field private static c:Lcom/mob/mobapm/core/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mob/mobapm/core/k;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/mob/mobapm/b/a;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/mob/mobapm/b/a;->f(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/mob/mobapm/b/a;->b(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized d()Lcom/mob/mobapm/core/a;
    .locals 2

    const-class v0, Lcom/mob/mobapm/core/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/core/a;->c:Lcom/mob/mobapm/core/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/mobapm/core/a;

    invoke-direct {v1}, Lcom/mob/mobapm/core/a;-><init>()V

    sput-object v1, Lcom/mob/mobapm/core/a;->c:Lcom/mob/mobapm/core/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/mob/mobapm/core/a;->c:Lcom/mob/mobapm/core/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v0

    new-instance v1, Lcom/mob/mobapm/core/a$a;

    invoke-direct {v1, p0}, Lcom/mob/mobapm/core/a$a;-><init>(Lcom/mob/mobapm/core/a;)V

    invoke-virtual {v0, v1}, Lcom/mob/mobapm/core/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 9
    invoke-direct {p0, p1}, Lcom/mob/mobapm/core/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-boolean p1, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/mob/mobapm/core/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
