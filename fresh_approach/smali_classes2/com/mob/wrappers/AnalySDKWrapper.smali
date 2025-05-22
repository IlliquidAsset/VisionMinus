.class public Lcom/mob/wrappers/AnalySDKWrapper;
.super Lcom/mob/wrappers/SDKWrapper;
.source "AnalySDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/wrappers/AnalySDKWrapper$GenderWrapper;,
        Lcom/mob/wrappers/AnalySDKWrapper$User;,
        Lcom/mob/wrappers/AnalySDKWrapper$Event;,
        Lcom/mob/wrappers/AnalySDKWrapper$MapItem;,
        Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;,
        Lcom/mob/wrappers/AnalySDKWrapper$Location;,
        Lcom/mob/wrappers/AnalySDKWrapper$Committer;
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

.method static synthetic access$300()Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/mob/wrappers/AnalySDKWrapper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static identifyUser()Lcom/mob/wrappers/AnalySDKWrapper$User;
    .locals 2

    .line 30
    new-instance v0, Lcom/mob/wrappers/AnalySDKWrapper$User;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/wrappers/AnalySDKWrapper$User;-><init>(Lcom/mob/wrappers/AnalySDKWrapper$1;)V

    return-object v0
.end method

.method private static declared-synchronized isAvailable()Z
    .locals 3

    const-class v0, Lcom/mob/wrappers/AnalySDKWrapper;

    monitor-enter v0

    .line 12
    :try_start_0
    sget v1, Lcom/mob/wrappers/AnalySDKWrapper;->state:I

    if-nez v1, :cond_0

    const-string v1, "ANALYSDK"

    .line 13
    invoke-static {v1}, Lcom/mob/wrappers/AnalySDKWrapper;->isAvailable(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mob/wrappers/AnalySDKWrapper;->state:I

    .line 15
    :cond_0
    sget v1, Lcom/mob/wrappers/AnalySDKWrapper;->state:I
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

.method public static setLocation()Lcom/mob/wrappers/AnalySDKWrapper$Location;
    .locals 2

    .line 20
    new-instance v0, Lcom/mob/wrappers/AnalySDKWrapper$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/wrappers/AnalySDKWrapper$Location;-><init>(Lcom/mob/wrappers/AnalySDKWrapper$1;)V

    return-object v0
.end method

.method public static trackEvent()Lcom/mob/wrappers/AnalySDKWrapper$Event;
    .locals 2

    .line 25
    new-instance v0, Lcom/mob/wrappers/AnalySDKWrapper$Event;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/wrappers/AnalySDKWrapper$Event;-><init>(Lcom/mob/wrappers/AnalySDKWrapper$1;)V

    return-object v0
.end method
