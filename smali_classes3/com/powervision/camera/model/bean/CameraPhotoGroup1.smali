.class public Lcom/powervision/camera/model/bean/CameraPhotoGroup1;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraPhotoGroup1.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/powervision/camera/model/bean/CameraPhotoChild1;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private mImageResId:I

.field private mItemName:Ljava/lang/String;

.field private mItemValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mImageResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemValue:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mImageResId:I

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mImageResId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setImageResId(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mImageResId:I

    return-void
.end method

.method public setItemValue(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoGroup1;->mItemValue:Ljava/lang/String;

    return-void
.end method
