.class public Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;
.super Ljava/lang/Object;
.source "CameraDetailModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/CameraDetailModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private sensor:Ljava/lang/String;

.field private softversion:Ljava/lang/String;

.field private updateversion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSensor()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->sensor:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftversion()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->softversion:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateversion()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->updateversion:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSensor(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->sensor:Ljava/lang/String;

    return-void
.end method

.method public setSoftversion(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->softversion:Ljava/lang/String;

    return-void
.end method

.method public setUpdateversion(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/powervision/gcs/manager/CameraDetailModel$ParameterBean;->updateversion:Ljava/lang/String;

    return-void
.end method
