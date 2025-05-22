.class public Lcom/powervision/gcs/model/CameraStateModel;
.super Ljava/lang/Object;
.source "CameraStateModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;
    }
.end annotation


# instance fields
.field private CmdId:Ljava/lang/String;

.field private Parameter:Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;

.field private State:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraStateModel;->CmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraStateModel;->Parameter:Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraStateModel;->State:Ljava/lang/String;

    return-object v0
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraStateModel;->CmdId:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraStateModel;->Parameter:Lcom/powervision/gcs/model/CameraStateModel$CameraParameter;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraStateModel;->State:Ljava/lang/String;

    return-void
.end method
