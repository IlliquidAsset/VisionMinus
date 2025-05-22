.class public interface abstract Lcom/powervision/media/presenter/IDeviceMediaPresenter;
.super Ljava/lang/Object;
.source "IDeviceMediaPresenter.java"


# virtual methods
.method public abstract deleteMedia(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract download(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestCurrentState()V
.end method

.method public abstract requestData(II)V
.end method

.method public abstract requestData(ILjava/lang/String;I)V
.end method

.method public abstract switchToRAM()V
.end method

.method public abstract switchToSD()V
.end method
