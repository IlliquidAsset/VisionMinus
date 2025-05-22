.class public Lcom/powervision/handheld/DelayCaptureData;
.super Ljava/lang/Object;
.source "DelayCaptureData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bornTime:Ljava/lang/String;

.field private fileCount:I

.field private fps:I

.field private progress:Ljava/lang/String;

.field private restTime:Ljava/lang/String;

.field private result:I

.field private shutter:I

.field private time:I

.field private totalCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBornTime()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/handheld/DelayCaptureData;->bornTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/powervision/handheld/DelayCaptureData;->fileCount:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/powervision/handheld/DelayCaptureData;->fps:I

    return v0
.end method

.method public getProgress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/powervision/handheld/DelayCaptureData;->progress:Ljava/lang/String;

    return-object v0
.end method

.method public getRestTime()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/powervision/handheld/DelayCaptureData;->restTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/powervision/handheld/DelayCaptureData;->result:I

    return v0
.end method

.method public getShutter()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/powervision/handheld/DelayCaptureData;->shutter:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/powervision/handheld/DelayCaptureData;->time:I

    return v0
.end method

.method public getTotalCount()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/powervision/handheld/DelayCaptureData;->totalCount:Ljava/lang/String;

    return-object v0
.end method

.method public setBornTime(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/handheld/DelayCaptureData;->bornTime:Ljava/lang/String;

    return-void
.end method

.method public setFileCount(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/powervision/handheld/DelayCaptureData;->fileCount:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/powervision/handheld/DelayCaptureData;->fps:I

    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/handheld/DelayCaptureData;->progress:Ljava/lang/String;

    return-void
.end method

.method public setRestTime(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/handheld/DelayCaptureData;->restTime:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/powervision/handheld/DelayCaptureData;->result:I

    return-void
.end method

.method public setShutter(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/powervision/handheld/DelayCaptureData;->shutter:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/powervision/handheld/DelayCaptureData;->time:I

    return-void
.end method

.method public setTotalCount(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/powervision/handheld/DelayCaptureData;->totalCount:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DelayCaptureData{restTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/handheld/DelayCaptureData;->restTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bornTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/handheld/DelayCaptureData;->bornTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", progress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/handheld/DelayCaptureData;->progress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/handheld/DelayCaptureData;->totalCount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fileCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/DelayCaptureData;->fileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shutter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/DelayCaptureData;->shutter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/DelayCaptureData;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/DelayCaptureData;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/DelayCaptureData;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
