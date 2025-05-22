.class public interface abstract Lcom/lewis/edit/ui/view/IAVEditView;
.super Ljava/lang/Object;
.source "IAVEditView.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# virtual methods
.method public abstract addKeyFrameSuccess(Ljava/lang/String;)V
.end method

.method public abstract addResourceList(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract cancelDialog()V
.end method

.method public abstract clipSuccess(Ljava/lang/String;)V
.end method

.method public abstract controlMute(Ljava/lang/String;Z)V
.end method

.method public abstract editFailure(Ljava/lang/String;)V
.end method

.method public abstract editProgress(I)V
.end method

.method public abstract editSuccess(Ljava/lang/String;)V
.end method

.method public abstract getVideoAllTime(IZ)V
.end method

.method public abstract hideWatermark()V
.end method

.method public abstract mergeSuccess(Ljava/lang/String;)V
.end method

.method public abstract notifyAdapter(Lcom/lewis/edit/model/entries/VideoThumb;)V
.end method

.method public abstract prepareToPlay(Ljava/lang/String;)V
.end method

.method public abstract separateVideoSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showDialog()V
.end method

.method public abstract showPic(Ljava/lang/String;)V
.end method

.method public abstract showVideoSeparate(Ljava/lang/String;)V
.end method

.method public abstract showWatermark()V
.end method

.method public abstract successCancel()V
.end method

.method public abstract updateVideoSeparateData(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V
.end method

.method public abstract videoColorMixingSuccess(Ljava/lang/String;)V
.end method

.method public abstract videoConcatSuccess(Ljava/lang/String;)V
.end method

.method public abstract videoCopySuccess(Ljava/lang/String;)V
.end method

.method public abstract videoSpeedSuccess(Ljava/lang/String;)V
.end method

.method public abstract workEditVideoSuccess(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method
