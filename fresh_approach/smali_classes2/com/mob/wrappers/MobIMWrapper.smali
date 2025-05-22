.class public Lcom/mob/wrappers/MobIMWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "MobIMWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mob/wrappers/SDKWrapper;-><init>()V

    return-void
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/MobIMWrapper;

    monitor-enter v0

    .line 9
    :try_start_0
    sget v1, Lcom/mob/wrappers/MobIMWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "MOBIM"

    .line 10
    invoke-static {v1}, Lcom/mob/wrappers/MobIMWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/MobIMWrapper;->state:I

    .line 12
    :cond_0
    sget v1, Lcom/mob/wrappers/MobIMWrapper;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
