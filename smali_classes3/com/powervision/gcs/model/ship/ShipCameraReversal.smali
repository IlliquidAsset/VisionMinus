.class public Lcom/powervision/gcs/model/ship/ShipCameraReversal;
.super Ljava/lang/Object;
.source "ShipCameraReversal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:I

.field private Parameter:Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;

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
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraReversal;->CmdId:I

    return v0
.end method

.method public getParameter()Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraReversal;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraReversal;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraReversal;->CmdId:I

    return-void
.end method

.method public setParameter(Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraReversal;->Parameter:Lcom/powervision/gcs/model/ship/ShipCameraReversal$ParameterBean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraReversal;->State:I

    return-void
.end method
