.class public Lcom/lewis/edit/model/entries/VideoSeparateBean;
.super Ljava/lang/Object;
.source "VideoSeparateBean.java"


# instance fields
.field private currentTime:I

.field private imagePath:Ljava/lang/String;

.field private isCutFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTime()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->currentTime:I

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public isCutFlag()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->isCutFlag:Z

    return v0
.end method

.method public setCurrentTime(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->currentTime:I

    return-void
.end method

.method public setCutFlag(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->isCutFlag:Z

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSeparateBean{imagePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->currentTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCutFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lewis/edit/model/entries/VideoSeparateBean;->isCutFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
