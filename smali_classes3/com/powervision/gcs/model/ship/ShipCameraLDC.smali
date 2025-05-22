.class public Lcom/powervision/gcs/model/ship/ShipCameraLDC;
.super Ljava/lang/Object;
.source "ShipCameraLDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:I

.field private Parameter:Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;

.field private State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC;->CmdId:I

    return v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC;->CmdId:I

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC;->State:I

    return-void
.end method
