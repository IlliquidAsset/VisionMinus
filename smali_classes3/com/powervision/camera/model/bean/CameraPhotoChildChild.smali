.class public Lcom/powervision/camera/model/bean/CameraPhotoChildChild;
.super Ljava/lang/Object;
.source "CameraPhotoChildChild.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private isSelect:Z

.field private mImageResId:I

.field private mItemName:Ljava/lang/String;

.field private mSelectResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->mItemName:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->mImageResId:I

    .line 26
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->mSelectResId:I

    .line 27
    iput-boolean p4, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->isSelect:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->mItemName:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->mImageResId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getSelectResId()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->mSelectResId:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->isSelect:Z

    return v0
.end method

.method public setSelect(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;->isSelect:Z

    return-void
.end method
