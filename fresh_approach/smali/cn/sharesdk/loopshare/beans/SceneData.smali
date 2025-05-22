.class public Lcn/sharesdk/loopshare/beans/SceneData;
.super Lcn/sharesdk/loopshare/beans/ServerData;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/loopshare/beans/SceneData$Res;
    }
.end annotation


# instance fields
.field private res:Lcn/sharesdk/loopshare/beans/SceneData$Res;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/sharesdk/loopshare/beans/ServerData;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/loopshare/beans/SceneData$Res;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/sharesdk/loopshare/beans/SceneData;->res:Lcn/sharesdk/loopshare/beans/SceneData$Res;

    return-object v0
.end method

.method public a_()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lcn/sharesdk/loopshare/beans/ServerData;->a_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/beans/SceneData;->a()Lcn/sharesdk/loopshare/beans/SceneData$Res;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcn/sharesdk/loopshare/beans/SceneData$Res;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
