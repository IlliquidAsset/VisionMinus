.class public Lcom/powervision/gcs/model/ship/ShipCameraBaseModel;
.super Ljava/lang/Object;
.source "ShipCameraBaseModel.java"


# instance fields
.field public CmdId:I

.field public State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResultSuccess()Z
    .locals 1

    .line 10
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraBaseModel;->State:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
