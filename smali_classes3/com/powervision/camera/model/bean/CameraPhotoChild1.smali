.class public Lcom/powervision/camera/model/bean/CameraPhotoChild1;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraPhotoChild1.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/powervision/camera/model/bean/CameraPhotoChildChild2;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private isSelect:Z

.field private mImageResId:I

.field private mItemImage:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mItemName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mImageResId:I

    .line 30
    iput-boolean p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->isSelect:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mItemImage:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mItemName:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mImageResId:I

    .line 37
    iput-boolean p4, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->isSelect:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mItemName:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mImageResId:I

    return v0
.end method

.method public getItemImage()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mItemImage:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->isSelect:Z

    return v0
.end method

.method public setImageResId(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mImageResId:I

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->mItemName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild1;->isSelect:Z

    return-void
.end method
