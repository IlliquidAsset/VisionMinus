.class public Lcom/powervision/gcs/model/ship/ShipCameraShake;
.super Ljava/lang/Object;
.source "ShipCameraShake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:I

.field private Parameter:Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;

.field private State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake;->CmdId:I

    return v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake;->CmdId:I

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake;->State:I

    return-void
.end method
