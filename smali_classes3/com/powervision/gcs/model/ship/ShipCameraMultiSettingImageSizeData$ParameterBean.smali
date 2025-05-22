.class public Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraMultiSettingImageSizeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private multi_photo_burst_resolution:Ljava/lang/String;

.field private resolutionVal:Ljava/lang/String;

.field private subMode:Ljava/lang/String;

.field private workMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMulti_photo_burst_resolution()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->multi_photo_burst_resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionVal()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->resolutionVal:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMode()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->subMode:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->workMode:Ljava/lang/String;

    return-object v0
.end method

.method public setMulti_photo_burst_resolution(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->multi_photo_burst_resolution:Ljava/lang/String;

    return-void
.end method

.method public setResolutionVal(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->resolutionVal:Ljava/lang/String;

    return-void
.end method

.method public setSubMode(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->subMode:Ljava/lang/String;

    return-void
.end method

.method public setWorkMode(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMultiSettingImageSizeData$ParameterBean;->workMode:Ljava/lang/String;

    return-void
.end method
