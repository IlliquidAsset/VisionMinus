.class public Lcom/powervision/gcs/model/ship/ShipCameraIso;
.super Ljava/lang/Object;
.source "ShipCameraIso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:I

.field private Parameter:Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;

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

    .line 19
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraIso;->CmdId:I

    return v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraIso;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraIso;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraIso;->CmdId:I

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraIso;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraIso$ParameterBean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraIso;->State:I

    return-void
.end method
