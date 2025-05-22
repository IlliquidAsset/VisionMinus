.class public Lcom/mob/commons/utag/UserTag;
.super Ljava/lang/Object;
.source "UserTag.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserTags()Lcom/mob/commons/utag/TagRequester;
    .locals 1

    .line 18
    new-instance v0, Lcom/mob/commons/utag/TagRequester;

    invoke-direct {v0}, Lcom/mob/commons/utag/TagRequester;-><init>()V

    return-object v0
.end method

.method public static tagUser()Lcom/mob/commons/utag/UserTager;
    .locals 1

    .line 14
    new-instance v0, Lcom/mob/commons/utag/UserTager;

    invoke-direct {v0}, Lcom/mob/commons/utag/UserTager;-><init>()V

    return-object v0
.end method
