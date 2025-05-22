.class public Lcom/mob/wrappers/MobLinkWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "MobLinkWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;
    }
.end annotation


# static fields
.field private static state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/mob/wrappers/SDKWrapper;-><init>()V

    return-void
.end method

.method public static getMobId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;",
            ")Z"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/mob/wrappers/MobLinkWrapper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/mob/moblink/Scene;

    invoke-direct {v0}, Lcom/mob/moblink/Scene;-><init>()V

    .line 40
    iput-object p0, v0, Lcom/mob/moblink/Scene;->path:Ljava/lang/String;

    .line 41
    iput-object p1, v0, Lcom/mob/moblink/Scene;->source:Ljava/lang/String;

    .line 42
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p0, v0, Lcom/mob/moblink/Scene;->params:Ljava/util/HashMap;

    .line 43
    new-instance p0, Lcom/mob/wrappers/MobLinkWrapper$1;

    invoke-direct {p0, p3}, Lcom/mob/wrappers/MobLinkWrapper$1;-><init>(Lcom/mob/wrappers/MobLinkWrapper$MobIdCallback;)V

    invoke-static {v0, p0}, Lcom/mob/moblink/MobLink;->getMobID(Lcom/mob/moblink/Scene;Lcom/mob/moblink/ActionListener;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/MobLinkWrapper;

    monitor-enter v0

    .line 12
    :try_start_0
    sget v1, Lcom/mob/wrappers/MobLinkWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "MOBLINK"

    .line 13
    invoke-static {v1}, Lcom/mob/wrappers/MobLinkWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/MobLinkWrapper;->state:I

    .line 15
    :cond_0
    sget v1, Lcom/mob/wrappers/MobLinkWrapper;->state:I
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
