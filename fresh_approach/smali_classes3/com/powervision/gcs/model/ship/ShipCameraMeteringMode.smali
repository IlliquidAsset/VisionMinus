.class public Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;
.super Ljava/lang/Object;
.source "ShipCameraMeteringMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:I

.field private Parameter:Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;

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

    .line 20
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;->CmdId:I

    return v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;->CmdId:I

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode$ParameterBean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMeteringMode;->State:I

    return-void
.end method
