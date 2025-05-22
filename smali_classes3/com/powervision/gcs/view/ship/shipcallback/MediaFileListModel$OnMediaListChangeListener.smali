.class public interface abstract Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;
.super Ljava/lang/Object;
.source "MediaFileListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMediaListChangeListener"
.end annotation


# virtual methods
.method public abstract onGetListEnd()V
.end method

.method public abstract onImageListAdd(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLoadError()V
.end method

.method public abstract onTotalCountGet(I)V
.end method

.method public abstract onVideoListAdd(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation
.end method
