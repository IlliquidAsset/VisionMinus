.class public Lcn/powervision/upgrade/model/MatchMd5;
.super Ljava/lang/Object;
.source "MatchMd5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/upgrade/model/MatchMd5$MatchBean;
    }
.end annotation


# instance fields
.field private code:I

.field private match:Lcn/powervision/upgrade/model/MatchMd5$MatchBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcn/powervision/upgrade/model/MatchMd5;->code:I

    return v0
.end method

.method public getMatch()Lcn/powervision/upgrade/model/MatchMd5$MatchBean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/powervision/upgrade/model/MatchMd5;->match:Lcn/powervision/upgrade/model/MatchMd5$MatchBean;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcn/powervision/upgrade/model/MatchMd5;->code:I

    return-void
.end method

.method public setMatch(Lcn/powervision/upgrade/model/MatchMd5$MatchBean;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/powervision/upgrade/model/MatchMd5;->match:Lcn/powervision/upgrade/model/MatchMd5$MatchBean;

    return-void
.end method
