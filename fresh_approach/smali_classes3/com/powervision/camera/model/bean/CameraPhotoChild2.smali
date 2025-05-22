.class public Lcom/powervision/camera/model/bean/CameraPhotoChild2;
.super Ljava/lang/Object;
.source "CameraPhotoChild2.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private isSelect:Z

.field private mItemName:Ljava/lang/String;

.field private mItemValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->mItemName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->mItemValue:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->mItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->isSelect:Z

    return v0
.end method

.method public setSelect(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild2;->isSelect:Z

    return-void
.end method
