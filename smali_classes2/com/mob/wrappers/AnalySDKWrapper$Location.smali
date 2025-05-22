.class public final Lcom/mob/wrappers/AnalySDKWrapper$Location;
.super Ljava/lang/Object;
.source "AnalySDKWrapper.java"

# interfaces
.implements Lcom/mob/wrappers/AnalySDKWrapper$Committer;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/AnalySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/wrappers/AnalySDKWrapper$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mob/wrappers/AnalySDKWrapper$Location;-><init>()V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .line 56
    invoke-static {}, Lcom/mob/wrappers/AnalySDKWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-wide v0, p0, Lcom/mob/wrappers/AnalySDKWrapper$Location;->longitude:D

    iget-wide v2, p0, Lcom/mob/wrappers/AnalySDKWrapper$Location;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/mob/analysdk/AnalySDK;->setLocation(DD)V

    :cond_0
    return-void
.end method

.method public latitude(D)Lcom/mob/wrappers/AnalySDKWrapper$Location;
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$Location;->latitude:D

    return-object p0
.end method

.method public longitude(D)Lcom/mob/wrappers/AnalySDKWrapper$Location;
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/mob/wrappers/AnalySDKWrapper$Location;->longitude:D

    return-object p0
.end method
