.class public Lcom/mob/wrappers/UMSSDKWrapper$User;
.super Ljava/lang/Object;
.source "UMSSDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/UMSSDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# instance fields
.field private user:Lcom/mob/ums/User;


# direct methods
.method private constructor <init>(Lcom/mob/ums/User;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/mob/wrappers/UMSSDKWrapper$User;->user:Lcom/mob/ums/User;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/ums/User;Lcom/mob/wrappers/UMSSDKWrapper$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/mob/wrappers/UMSSDKWrapper$User;-><init>(Lcom/mob/ums/User;)V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$User;->user:Lcom/mob/ums/User;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/mob/ums/User;->avatar:Lcom/mob/jimu/biz/ReadWriteProperty;

    invoke-virtual {v0}, Lcom/mob/jimu/biz/ReadWriteProperty;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$User;->user:Lcom/mob/ums/User;

    iget-object v0, v0, Lcom/mob/ums/User;->avatar:Lcom/mob/jimu/biz/ReadWriteProperty;

    invoke-virtual {v0}, Lcom/mob/jimu/biz/ReadWriteProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$User;->user:Lcom/mob/ums/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/mob/ums/User;->nickname:Lcom/mob/jimu/biz/ReadWriteProperty;

    invoke-virtual {v0}, Lcom/mob/jimu/biz/ReadWriteProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$User;->user:Lcom/mob/ums/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/mob/ums/User;->id:Lcom/mob/jimu/biz/ReadOnlyProperty;

    invoke-virtual {v0}, Lcom/mob/jimu/biz/ReadOnlyProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method
