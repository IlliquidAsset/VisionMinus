.class public interface abstract Lcom/lewis/edit/presenter/IAVEditPresenter;
.super Ljava/lang/Object;
.source "IAVEditPresenter.java"


# virtual methods
.method public abstract addEditFunctionList()V
.end method

.method public abstract addKeyFrame(Ljava/lang/String;)V
.end method

.method public abstract addMusicList()V
.end method

.method public abstract addPicList()V
.end method

.method public abstract addText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addTextList()V
.end method

.method public abstract addTexture(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract audioConcat(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract avMerge(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelVideoEdit()V
.end method

.method public abstract getCropVideoThumb(Ljava/lang/String;)V
.end method

.method public abstract getPicPath(I)V
.end method

.method public abstract getVideoAllTime(Ljava/util/List;IIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)V"
        }
    .end annotation
.end method

.method public abstract getVideoThumbBySecond(Ljava/lang/String;)V
.end method

.method public abstract getVideoTrack(Ljava/lang/String;)V
.end method

.method public abstract imitateLoadingProgress(I)V
.end method

.method public abstract playFromEnd(Ljava/lang/String;)V
.end method

.method public abstract videoClip(Ljava/lang/String;II)V
.end method

.method public abstract videoConcat(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract workAllVideoEdit(Ljava/util/List;Ljava/lang/String;FFZLjava/lang/String;IILcom/lewis/edit/model/entries/VideoEditInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "FFZ",
            "Ljava/lang/String;",
            "II",
            "Lcom/lewis/edit/model/entries/VideoEditInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract workClipVideo(Ljava/lang/String;II)V
.end method

.method public abstract workMuteFun(Ljava/lang/String;)V
.end method

.method public abstract workVideoColorMixing(Ljava/lang/String;FFFFFF)V
.end method

.method public abstract workVideoCopy(Ljava/lang/String;)V
.end method

.method public abstract workVideoSeparate(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract workVideoSpeed(Ljava/lang/String;F)V
.end method
