.class public Lcom/powervision/camera/model/bean/CameraGeneralChild1;
.super Ljava/lang/Object;
.source "CameraGeneralChild1.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private isSelect:Z

.field private mImageId:I

.field private mItemName:Ljava/lang/String;

.field private mItemValue:Ljava/lang/String;

.field private modeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mItemName:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mImageId:I

    .line 42
    iput-boolean p3, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->isSelect:Z

    .line 43
    iput p4, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->modeType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mItemName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mItemValue:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->isSelect:Z

    .line 36
    iput p4, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->modeType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mItemName:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mImageId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public getModeType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->modeType:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->isSelect:Z

    return v0
.end method

.method public setSelect(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->isSelect:Z

    return-void
.end method

.method public setmItemValue(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->mItemValue:Ljava/lang/String;

    return-void
.end method
