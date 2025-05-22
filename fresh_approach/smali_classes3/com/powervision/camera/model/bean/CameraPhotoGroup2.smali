.class public Lcom/powervision/camera/model/bean/CameraPhotoGroup2;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraPhotoGroup2.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/powervision/camera/model/bean/CameraPhotoChild2;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private mImageResId:I

.field private mItemName:Ljava/lang/String;

.field private mItemValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->mItemName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->mItemValue:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->mImageResId:I

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->mImageResId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->mItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setItemValue(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup2;->mItemValue:Ljava/lang/String;

    return-void
.end method
