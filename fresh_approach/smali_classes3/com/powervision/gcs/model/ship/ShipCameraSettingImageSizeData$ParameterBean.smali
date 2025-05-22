.class public Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraSettingImageSizeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private normal_photo_resolution:Ljava/lang/String;

.field private resolutionVal:Ljava/lang/String;

.field private subMode:Ljava/lang/String;

.field private workMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNormal_photo_resolution()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->normal_photo_resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionVal()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->resolutionVal:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMode()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->subMode:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->workMode:Ljava/lang/String;

    return-object v0
.end method

.method public setNormal_photo_resolution(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->normal_photo_resolution:Ljava/lang/String;

    return-void
.end method

.method public setResolutionVal(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->resolutionVal:Ljava/lang/String;

    return-void
.end method

.method public setSubMode(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->subMode:Ljava/lang/String;

    return-void
.end method

.method public setWorkMode(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;->workMode:Ljava/lang/String;

    return-void
.end method
