.class public Lcom/powervision/camera/model/bean/CameraPhotoChild4;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraPhotoChild4.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private isSelect:Z

.field private mImageResId:I

.field private mItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->mItemName:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->mImageResId:I

    .line 23
    iput-boolean p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->mImageResId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->isSelect:Z

    return v0
.end method

.method public setImageResId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->mImageResId:I

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->mItemName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild4;->isSelect:Z

    return-void
.end method
