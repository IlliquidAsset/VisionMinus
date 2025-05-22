.class public Lcn/sharesdk/loopshare/beans/ConfigData$Res;
.super Lcn/sharesdk/loopshare/beans/ServerData$Res;
.source "ConfigData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/loopshare/beans/ConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Res"
.end annotation


# instance fields
.field private appLink:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private port:I

.field private scheme:Ljava/lang/String;

.field private sslPort:I

.field private timeout:I

.field private timestamp:J

.field private yyb:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/sharesdk/loopshare/beans/ServerData$Res;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/beans/ConfigData$Res;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcn/sharesdk/loopshare/beans/ConfigData$Res;->yyb:Z

    return p0
.end method

.method static synthetic b(Lcn/sharesdk/loopshare/beans/ConfigData$Res;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/sharesdk/loopshare/beans/ConfigData$Res;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/loopshare/beans/ConfigData$Res;)I
    .locals 0

    .line 10
    iget p0, p0, Lcn/sharesdk/loopshare/beans/ConfigData$Res;->port:I

    return p0
.end method

.method static synthetic d(Lcn/sharesdk/loopshare/beans/ConfigData$Res;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/sharesdk/loopshare/beans/ConfigData$Res;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/loopshare/beans/ConfigData$Res;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/sharesdk/loopshare/beans/ConfigData$Res;->appLink:Ljava/lang/String;

    return-object p0
.end method
