.class public Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraMeteringMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private normal_photo_exposure_metryVal:Ljava/lang/String;

.field private normal_photo_metry:Ljava/lang/String;

.field private subMode:Ljava/lang/String;

.field private workMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNormal_photo_exposure_metryVal()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->normal_photo_exposure_metryVal:Ljava/lang/String;

    return-object v0
.end method

.method public getNormal_photo_metry()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->normal_photo_metry:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMode()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->subMode:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->workMode:Ljava/lang/String;

    return-object v0
.end method

.method public setNormal_photo_exposure_metryVal(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->normal_photo_exposure_metryVal:Ljava/lang/String;

    return-void
.end method

.method public setNormal_photo_metry(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->normal_photo_metry:Ljava/lang/String;

    return-void
.end method

.method public setSubMode(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->subMode:Ljava/lang/String;

    return-void
.end method

.method public setWorkMode(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;->workMode:Ljava/lang/String;

    return-void
.end method
