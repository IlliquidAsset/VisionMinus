.class public interface abstract Lcom/powervision/camera/model/ICameraPhotoModel;
.super Ljava/lang/Object;
.source "ICameraPhotoModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# virtual methods
.method public abstract getCameraPhotoData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandlePhotoModeIcon(II)I
.end method

.method public abstract getNeedShowPhotoModeIcon(II)I
.end method

.method public abstract getPhotoModeChildSelectPic(Ljava/lang/String;)I
.end method

.method public abstract getPhotoModelSelectPic(I)I
.end method

.method public abstract getPhotoModelSelectPic(II)I
.end method

.method public abstract getWhiteBlackSelectPic(I)I
.end method
