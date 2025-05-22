.class public Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraSettingVideoNormalResData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private subMode:Ljava/lang/String;

.field private videoMode:Ljava/lang/String;

.field private videoModeVal:Ljava/lang/String;

.field private workMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubMode()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->subMode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoMode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->videoMode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoModeVal()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->videoModeVal:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->workMode:Ljava/lang/String;

    return-object v0
.end method

.method public setSubMode(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->subMode:Ljava/lang/String;

    return-void
.end method

.method public setVideoMode(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->videoMode:Ljava/lang/String;

    return-void
.end method

.method public setVideoModeVal(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->videoModeVal:Ljava/lang/String;

    return-void
.end method

.method public setWorkMode(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoNormalResData$ParameterBean;->workMode:Ljava/lang/String;

    return-void
.end method
