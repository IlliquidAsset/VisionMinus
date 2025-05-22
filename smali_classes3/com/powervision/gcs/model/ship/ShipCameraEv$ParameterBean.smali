.class public Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraEv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraEv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private normal_photo_exposure_EVVal:Ljava/lang/String;

.field private normal_photo_exposure_ev:Ljava/lang/String;

.field private subMode:Ljava/lang/String;

.field private workMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNormal_photo_exposure_EVVal()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->normal_photo_exposure_EVVal:Ljava/lang/String;

    return-object v0
.end method

.method public getNormal_photo_exposure_ev()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->normal_photo_exposure_ev:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->subMode:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->workMode:Ljava/lang/String;

    return-object v0
.end method

.method public setNormal_photo_exposure_EVVal(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->normal_photo_exposure_EVVal:Ljava/lang/String;

    return-void
.end method

.method public setNormal_photo_exposure_ev(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->normal_photo_exposure_ev:Ljava/lang/String;

    return-void
.end method

.method public setSubMode(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->subMode:Ljava/lang/String;

    return-void
.end method

.method public setWorkMode(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraEv$ParameterBean;->workMode:Ljava/lang/String;

    return-void
.end method
