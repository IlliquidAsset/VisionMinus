.class public Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;
.super Ljava/lang/Object;
.source "ShipCameraSettingImageSizeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:I

.field private Parameter:Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;

.field private State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;->CmdId:I

    return v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;->CmdId:I

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData$ParameterBean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingImageSizeData;->State:I

    return-void
.end method
