.class public Lcn/sharesdk/loopshare/beans/LinkData$Res;
.super Lcn/sharesdk/loopshare/beans/ServerData$Res;
.source "LinkData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/loopshare/beans/LinkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Res"
.end annotation


# instance fields
.field private domain:Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/sharesdk/loopshare/beans/ServerData$Res;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/beans/LinkData$Res;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/sharesdk/loopshare/beans/LinkData$Res;->link:Ljava/lang/String;

    return-object p0
.end method
