.class public Lcom/lewis/edit/model/entries/VideoThumb;
.super Ljava/lang/Object;
.source "VideoThumb.java"


# instance fields
.field private path:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/lewis/edit/model/entries/VideoThumb;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/lewis/edit/model/entries/VideoThumb;->time:J

    return-wide v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/lewis/edit/model/entries/VideoThumb;->path:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/lewis/edit/model/entries/VideoThumb;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoThumb{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewis/edit/model/entries/VideoThumb;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lewis/edit/model/entries/VideoThumb;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
