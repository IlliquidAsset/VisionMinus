.class public final Lcom/mob/wrappers/AnalySDKWrapper$Event;
.super Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;
.source "AnalySDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/AnalySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/wrappers/AnalySDKWrapper$MapCreator<",
        "Lcom/mob/wrappers/AnalySDKWrapper$Event;",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/mob/tools/proguard/PublicMemberKeeper;"
    }
.end annotation


# instance fields
.field private eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/mob/wrappers/AnalySDKWrapper$MapCreator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/wrappers/AnalySDKWrapper$1;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/mob/wrappers/AnalySDKWrapper$Event;-><init>()V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 2

    .line 103
    invoke-static {}, Lcom/mob/wrappers/AnalySDKWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/mob/wrappers/AnalySDKWrapper$Event;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mob/wrappers/AnalySDKWrapper$Event;->eventName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/analysdk/AnalySDK;->trackEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mob/wrappers/AnalySDKWrapper$Event;->eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/wrappers/AnalySDKWrapper$Event;->map:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/mob/analysdk/AnalySDK;->trackEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public withName(Ljava/lang/String;)Lcom/mob/wrappers/AnalySDKWrapper$Event;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$Event;->eventName:Ljava/lang/String;

    return-object p0
.end method
