.class public interface abstract Lcom/powervision/media/presenter/IMediaLibPresenter;
.super Ljava/lang/Object;
.source "IMediaLibPresenter.java"


# virtual methods
.method public abstract deleteMedia(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract download(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestData(II)V
.end method

.method public abstract saveAndCancelSave(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
