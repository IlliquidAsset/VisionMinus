.class public Lcom/powervision/gcs/model/ship/ShipCameraMode;
.super Ljava/lang/Object;
.source "ShipCameraMode.java"


# instance fields
.field private sdstate:Ljava/lang/String;

.field private workmode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSdstate()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMode;->sdstate:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkmode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraMode;->workmode:Ljava/lang/String;

    return-object v0
.end method

.method public setSdstate(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMode;->sdstate:Ljava/lang/String;

    return-void
.end method

.method public setWorkmode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraMode;->workmode:Ljava/lang/String;

    return-void
.end method
