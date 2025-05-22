.class public Lcom/powervision/camera/model/bean/CameraPhotoGroup4;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraPhotoGroup4.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/powervision/camera/model/bean/CameraPhotoChild4;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private mImageResId:I

.field private mItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->mItemName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->mImageResId:I

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 31
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getPhotoGraphType()I

    .line 36
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->mImageResId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setImageResId(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup4;->mImageResId:I

    return-void
.end method
