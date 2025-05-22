.class public Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;
.super Ljava/lang/Object;
.source "CameraPhotoTimedShotChild.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private isSelect:Z

.field private mItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->mItemName:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->isSelect:Z

    return v0
.end method

.method public setSelect(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;->isSelect:Z

    return-void
.end method
