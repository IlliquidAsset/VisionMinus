.class public Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow;
.super Ljava/lang/Object;
.source "ShipCameraSettingVideoSlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:Ljava/lang/String;

.field private Parameter:Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow$ParameterBean;

.field private State:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow;->CmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow$ParameterBean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow$ParameterBean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow;->State:Ljava/lang/String;

    return-object v0
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow;->CmdId:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow$ParameterBean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow$ParameterBean;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSettingVideoSlow;->State:Ljava/lang/String;

    return-void
.end method
