.class public Lcom/mob/mobapm/core/i;
.super Lcom/mob/mobapm/core/k;
.source "SourceFile"


# static fields
.field private static c:Lcom/mob/mobapm/core/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/mobapm/core/k;-><init>()V

    return-void
.end method

.method public static declared-synchronized d()Lcom/mob/mobapm/core/i;
    .locals 2

    const-class v0, Lcom/mob/mobapm/core/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/core/i;->c:Lcom/mob/mobapm/core/i;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mob/mobapm/core/i;

    invoke-direct {v1}, Lcom/mob/mobapm/core/i;-><init>()V

    sput-object v1, Lcom/mob/mobapm/core/i;->c:Lcom/mob/mobapm/core/i;

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/mobapm/b/e;->a(Landroid/content/Context;)Lcom/mob/mobapm/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/b/e;->c()V

    .line 6
    :cond_0
    sget-object v1, Lcom/mob/mobapm/core/i;->c:Lcom/mob/mobapm/core/i;
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
.method public a(Lcom/mob/mobapm/core/Transaction;)V
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

    const-string v2, "trans"

    .line 3
    :try_start_1
    invoke-static {}, Lcom/mob/mobapm/e/h;->a()Lcom/mob/mobapm/e/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mob/mobapm/e/h;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/mobapm/b/e;->a(Landroid/content/Context;)Lcom/mob/mobapm/b/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mob/mobapm/b/e;->b(Landroid/content/ContentValues;)V

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
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v0

    new-instance v1, Lcom/mob/mobapm/core/i$a;

    invoke-direct {v1, p0}, Lcom/mob/mobapm/core/i$a;-><init>(Lcom/mob/mobapm/core/i;)V

    invoke-virtual {v0, v1}, Lcom/mob/mobapm/core/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method
