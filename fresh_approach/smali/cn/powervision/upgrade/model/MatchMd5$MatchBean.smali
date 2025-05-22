.class public Lcn/powervision/upgrade/model/MatchMd5$MatchBean;
.super Ljava/lang/Object;
.source "MatchMd5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/model/MatchMd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchBean"
.end annotation


# instance fields
.field private addTime:Ljava/lang/String;

.field private id:I

.field private matchType:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 60
    iget v0, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->id:I

    return v0
.end method

.method public getMatchType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->matchType:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->size:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->addTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->id:I

    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->matchType:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/powervision/upgrade/model/MatchMd5$MatchBean;->size:Ljava/lang/String;

    return-void
.end method
