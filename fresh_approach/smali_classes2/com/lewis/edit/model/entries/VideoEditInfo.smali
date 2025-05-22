.class public Lcom/lewis/edit/model/entries/VideoEditInfo;
.super Ljava/lang/Object;
.source "VideoEditInfo.java"


# instance fields
.field private checkId:I

.field private currentPlayVideoPosition:I

.field private hadSelectAudioPath:Ljava/lang/String;

.field private hadSelectSplicePosition:I

.field private haveDefaultLogo:Z

.field private isSelectTitle:Z

.field private isSingleVideoPlayFlag:Z

.field private selectMusicIndex:I

.field private selectPicIndex:I

.field private selectTextIndex:I

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoAllTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectMusicIndex:I

    .line 14
    iput v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectPicIndex:I

    .line 16
    iput v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectTextIndex:I

    .line 22
    sget v1, Lcom/lewis/edit/R$id;->show_start:I

    iput v1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->checkId:I

    .line 25
    iput-boolean v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag:Z

    .line 27
    iput v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->hadSelectSplicePosition:I

    .line 29
    iput v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->currentPlayVideoPosition:I

    .line 31
    iput v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->videoAllTime:I

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->hadSelectAudioPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->haveDefaultLogo:Z

    return-void
.end method


# virtual methods
.method public getCheckId()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->checkId:I

    return v0
.end method

.method public getCurrentPlayVideoPosition()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->currentPlayVideoPosition:I

    return v0
.end method

.method public getHadSelectAudioPath()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->hadSelectAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHadSelectSplicePosition()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->hadSelectSplicePosition:I

    return v0
.end method

.method public getSelectMusicIndex()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectMusicIndex:I

    return v0
.end method

.method public getSelectPicIndex()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectPicIndex:I

    return v0
.end method

.method public getSelectTextIndex()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectTextIndex:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAllTime()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->videoAllTime:I

    return v0
.end method

.method public isHaveDefaultLogo()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->haveDefaultLogo:Z

    return v0
.end method

.method public isNeedMusic()Z
    .locals 1

    .line 43
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectMusicIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedPic()Z
    .locals 1

    .line 52
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectPicIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedText()Z
    .locals 1

    .line 61
    iget v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectTextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectTitle()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle:Z

    return v0
.end method

.method public isSingleVideoPlayFlag()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag:Z

    return v0
.end method

.method public setCheckId(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->checkId:I

    return-void
.end method

.method public setCurrentPlayVideoPosition(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->currentPlayVideoPosition:I

    return-void
.end method

.method public setHadSelectAudioPath(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->hadSelectAudioPath:Ljava/lang/String;

    return-void
.end method

.method public setHadSelectSplicePosition(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->hadSelectSplicePosition:I

    return-void
.end method

.method public setHaveDefaultLogo(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->haveDefaultLogo:Z

    return-void
.end method

.method public setSelectMusicIndex(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectMusicIndex:I

    return-void
.end method

.method public setSelectPicIndex(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectPicIndex:I

    return-void
.end method

.method public setSelectTextIndex(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->selectTextIndex:I

    return-void
.end method

.method public setSelectTitle(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSelectTitle:Z

    return-void
.end method

.method public setSingleVideoPlayFlag(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->isSingleVideoPlayFlag:Z

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideoAllTime(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/lewis/edit/model/entries/VideoEditInfo;->videoAllTime:I

    return-void
.end method
