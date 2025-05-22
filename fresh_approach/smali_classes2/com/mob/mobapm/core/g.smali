.class public Lcom/mob/mobapm/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/mob/mobapm/core/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/mob/mobapm/core/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mobapm/core/g;->a:Lcom/mob/mobapm/core/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mobapm/core/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/core/g;->a:Lcom/mob/mobapm/core/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mobapm/core/g;

    invoke-direct {v1}, Lcom/mob/mobapm/core/g;-><init>()V

    sput-object v1, Lcom/mob/mobapm/core/g;->a:Lcom/mob/mobapm/core/g;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mobapm/core/g;->a:Lcom/mob/mobapm/core/g;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/mobapm/core/e;->b()Lcom/mob/mobapm/core/e;

    move-result-object v0

    new-instance v1, Lcom/mob/mobapm/core/g$a;

    invoke-direct {v1, p0}, Lcom/mob/mobapm/core/g$a;-><init>(Lcom/mob/mobapm/core/g;)V

    invoke-virtual {v0, v1}, Lcom/mob/mobapm/core/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method
