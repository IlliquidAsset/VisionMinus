.class public Lcn/sharesdk/loopshare/beans/LinkData;
.super Lcn/sharesdk/loopshare/beans/ServerData;
.source "LinkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/loopshare/beans/LinkData$Res;
    }
.end annotation


# instance fields
.field private res:Lcn/sharesdk/loopshare/beans/LinkData$Res;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcn/sharesdk/loopshare/beans/ServerData;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/sharesdk/loopshare/beans/LinkData;->res:Lcn/sharesdk/loopshare/beans/LinkData$Res;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/sharesdk/loopshare/beans/LinkData$Res;->a(Lcn/sharesdk/loopshare/beans/LinkData$Res;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
