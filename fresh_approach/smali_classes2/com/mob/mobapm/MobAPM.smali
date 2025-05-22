.class public Lcom/mob/mobapm/MobAPM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# static fields
.field public static goldenKey:Z = false

.field private static impl:Lcom/mob/mobapm/core/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mob/mobapm/MobAPM;->ensureInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureInit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mobapm/MobAPM;->impl:Lcom/mob/mobapm/core/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mobapm/MobAPM;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mobapm/MobAPM;->impl:Lcom/mob/mobapm/core/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mobapm/core/c;

    invoke-direct {v1}, Lcom/mob/mobapm/core/c;-><init>()V

    sput-object v1, Lcom/mob/mobapm/MobAPM;->impl:Lcom/mob/mobapm/core/c;

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

    :cond_1
    :goto_0
    return-void
.end method

.method public static setJson(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/mobapm/MobAPM;->ensureInit()V

    .line 2
    sget-object v0, Lcom/mob/mobapm/MobAPM;->impl:Lcom/mob/mobapm/core/c;

    invoke-virtual {v0, p0}, Lcom/mob/mobapm/core/c;->a(Ljava/lang/String;)V

    return-void
.end method
