.class public interface abstract Lcom/powervision/media/model/IDeviceMediaModel;
.super Ljava/lang/Object;
.source "IDeviceMediaModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# virtual methods
.method public abstract generalList(Lcom/powervision/localhttp/entity/FileInfo;I)V
.end method

.method public abstract generalListAfterDelete(Lcom/powervision/localhttp/entity/FileInfo;I)V
.end method

.method public abstract getListByType(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOriginListByType(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end method
