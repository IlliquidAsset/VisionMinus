.class public Lcom/powervision/gcs/model/SubmissionModel;
.super Ljava/lang/Object;
.source "SubmissionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/SubmissionModel$SubmissType;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private focus:Z

.field private imgUrl:Ljava/lang/String;

.field private strToken:Ljava/lang/String;

.field private type:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

.field private videoId:Ljava/lang/String;

.field private videoUnique:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStrToken()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->strToken:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/powervision/gcs/model/SubmissionModel$SubmissType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->type:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUnique()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->videoUnique:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isFocus()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/powervision/gcs/model/SubmissionModel;->focus:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->content:Ljava/lang/String;

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->focus:Z

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setStrToken(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->strToken:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/powervision/gcs/model/SubmissionModel$SubmissType;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->type:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoUnique(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->videoUnique:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/powervision/gcs/model/SubmissionModel;->videoUrl:Ljava/lang/String;

    return-void
.end method
