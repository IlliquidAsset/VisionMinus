.class public Lcom/lewis/edit/model/entries/SingleVideoBean;
.super Ljava/lang/Object;
.source "SingleVideoBean.java"


# instance fields
.field private isMuteStateFlag:Z

.field private muteVideoPath:Ljava/lang/String;

.field private originalVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->muteVideoPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->muteVideoPath:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->originalVideoPath:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->isMuteStateFlag:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    check-cast p1, Lcom/lewis/edit/model/entries/SingleVideoBean;

    .line 55
    iget-object v0, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->originalVideoPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/lewis/edit/model/entries/SingleVideoBean;->originalVideoPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMuteVideoPath()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->muteVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalVideoPath()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->originalVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->originalVideoPath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMuteStateFlag()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->isMuteStateFlag:Z

    return v0
.end method

.method public setMuteStateFlag(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->isMuteStateFlag:Z

    return-void
.end method

.method public setMuteVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->muteVideoPath:Ljava/lang/String;

    return-void
.end method

.method public setOriginalVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->originalVideoPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleVideoBean{originalVideoPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->originalVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", muteVideoPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->muteVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isMuteStateFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lewis/edit/model/entries/SingleVideoBean;->isMuteStateFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
