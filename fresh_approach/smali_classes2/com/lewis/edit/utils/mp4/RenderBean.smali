.class public Lcom/lewis/edit/utils/mp4/RenderBean;
.super Ljava/lang/Object;
.source "RenderBean.java"


# instance fields
.field private egl:Lcom/lewis/edit/utils/mp4/EglHelper;

.field private endFlag:Z

.field private sourceHeight:I

.field private sourceWidth:I

.field private textureId:I

.field private textureTime:J

.field private threadId:J

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEgl()Lcom/lewis/edit/utils/mp4/EglHelper;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->egl:Lcom/lewis/edit/utils/mp4/EglHelper;

    return-object v0
.end method

.method public getSourceHeight()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->sourceHeight:I

    return v0
.end method

.method public getSourceWidth()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->sourceWidth:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->textureId:I

    return v0
.end method

.method public getTextureTime()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->textureTime:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->threadId:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->timeStamp:J

    return-wide v0
.end method

.method public isEndFlag()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->endFlag:Z

    return v0
.end method

.method public setEgl(Lcom/lewis/edit/utils/mp4/EglHelper;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->egl:Lcom/lewis/edit/utils/mp4/EglHelper;

    return-void
.end method

.method public setEndFlag(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->endFlag:Z

    return-void
.end method

.method public setSourceHeight(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->sourceHeight:I

    return-void
.end method

.method public setSourceWidth(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->sourceWidth:I

    return-void
.end method

.method public setTextureId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->textureId:I

    return-void
.end method

.method public setTextureTime(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->textureTime:J

    return-void
.end method

.method public setThreadId(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->threadId:J

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->timeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderBean{egl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->egl:Lcom/lewis/edit/utils/mp4/EglHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->sourceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->sourceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->textureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->endFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", textureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->textureTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lewis/edit/utils/mp4/RenderBean;->threadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
