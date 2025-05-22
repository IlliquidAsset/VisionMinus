.class public Lcom/mob/mobapm/core/h;
.super Lcom/mob/mobapm/core/k;
.source "SourceFile"


# static fields
.field private static c:Lcom/mob/mobapm/core/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/mobapm/core/k;-><init>()V

    return-void
.end method

.method public static declared-synchronized d()Lcom/mob/mobapm/core/h;
    .locals 2

    const-class v0, Lcom/mob/mobapm/core/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/core/h;->c:Lcom/mob/mobapm/core/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/mobapm/core/h;

    invoke-direct {v1}, Lcom/mob/mobapm/core/h;-><init>()V

    sput-object v1, Lcom/mob/mobapm/core/h;->c:Lcom/mob/mobapm/core/h;

    .line 4
    :cond_0
    sget-object v1, Lcom/mob/mobapm/core/h;->c:Lcom/mob/mobapm/core/h;
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
.method public a(Lcom/mob/mobapm/bean/SocketTransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/core/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "sockets"

    .line 3
    :try_start_1
    invoke-static {}, Lcom/mob/mobapm/e/h;->a()Lcom/mob/mobapm/e/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mob/mobapm/e/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/mobapm/b/c;->a(Landroid/content/Context;)Lcom/mob/mobapm/b/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mob/mobapm/b/c;->a(Landroid/content/ContentValues;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v0

    new-instance v1, Lcom/mob/mobapm/core/h$a;

    invoke-direct {v1, p0}, Lcom/mob/mobapm/core/h$a;-><init>(Lcom/mob/mobapm/core/h;)V

    invoke-virtual {v0, v1}, Lcom/mob/mobapm/core/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method
