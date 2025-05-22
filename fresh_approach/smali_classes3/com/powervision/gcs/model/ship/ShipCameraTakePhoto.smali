.class public Lcom/powervision/gcs/model/ship/ShipCameraTakePhoto;
.super Ljava/lang/Object;
.source "ShipCameraTakePhoto.java"


# instance fields
.field private CmdId:I

.field private Parameter:Ljava/lang/String;

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
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraTakePhoto;->CmdId:I

    return v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraTakePhoto;->Parameter:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraTakePhoto;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraTakePhoto;->CmdId:I

    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraTakePhoto;->Parameter:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraTakePhoto;->State:I

    return-void
.end method
