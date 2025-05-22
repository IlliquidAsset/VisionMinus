.class public interface abstract Lcom/powervision/media/model/IMediaLibModel;
.super Ljava/lang/Object;
.source "IMediaLibModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# virtual methods
.method public abstract generalList(Lcom/powervision/localhttp/entity/MediaLib;)V
.end method

.method public abstract generalListAfterDelete(Lcom/powervision/localhttp/entity/MediaLib;)V
.end method

.method public abstract getListData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOriginListData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end method
