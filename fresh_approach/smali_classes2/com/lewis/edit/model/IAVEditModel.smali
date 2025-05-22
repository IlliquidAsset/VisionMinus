.class public interface abstract Lcom/lewis/edit/model/IAVEditModel;
.super Ljava/lang/Object;
.source "IAVEditModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# virtual methods
.method public abstract getCropVideoThumb(Ljava/lang/String;)Lio/reactivex/ObservableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableOnSubscribe<",
            "Lcom/lewis/edit/model/entries/VideoThumb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEditFunctionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMusicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMusicNames()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPicNames()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayFromEndVideo(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourcePath(Landroid/util/SparseArray;I)Lio/reactivex/ObservableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)",
            "Lio/reactivex/ObservableOnSubscribe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRotationVideo(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/EditResBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTexturePosition(I)Ljava/lang/String;
.end method

.method public abstract getVideoAllTime(Ljava/util/List;II)Lio/reactivex/FlowableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Lio/reactivex/FlowableOnSubscribe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoThumbBySecond(Ljava/lang/String;)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lcom/lewis/edit/model/entries/VideoSeparateBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkPicFilePath(Ljava/lang/String;)Lio/reactivex/FlowableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/FlowableOnSubscribe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract workAllVideoEdit(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;FFZLjava/lang/String;Ljava/lang/String;ILcom/lewis/edit/model/entries/VideoEditInfo;)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "FFZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/lewis/edit/model/entries/VideoEditInfo;",
            ")",
            "Lio/reactivex/Flowable<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract workClipVideo(Ljava/lang/String;II)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract workEditVideo(Ljava/util/List;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract workLogoMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract workVideoColorMixing(Ljava/lang/String;FFFFFF)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFFFFF)",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract workVideoCopy(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract workVideoSeparate(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract workVideoSpeed(Ljava/lang/String;F)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
