.class public Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;
.super Ljava/lang/Object;
.source "CameraPhotoChildAebChild.java"

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->mItemName:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->mImageResId:I

    .line 25
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->mSelectResId:I

    .line 26
    iput-boolean p4, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->isSelect:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->mItemName:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->mImageResId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getSelectResId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->mSelectResId:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->isSelect:Z

    return v0
.end method

.method public setSelect(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;->isSelect:Z

    return-void
.end method
