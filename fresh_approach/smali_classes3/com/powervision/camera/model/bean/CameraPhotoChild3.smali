.class public Lcom/powervision/camera/model/bean/CameraPhotoChild3;
.super Ljava/lang/Object;
.source "CameraPhotoChild3.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private mContrast:Ljava/lang/String;

.field private mSaturation:Ljava/lang/String;

.field private mSharpness:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mSharpness:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mContrast:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mSaturation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContrast()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mContrast:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getSaturation()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mSaturation:Ljava/lang/String;

    return-object v0
.end method

.method public getSharpness()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mSharpness:Ljava/lang/String;

    return-object v0
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mContrast:Ljava/lang/String;

    return-void
.end method

.method public setSaturation(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mSaturation:Ljava/lang/String;

    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraPhotoChild3;->mSharpness:Ljava/lang/String;

    return-void
.end method
