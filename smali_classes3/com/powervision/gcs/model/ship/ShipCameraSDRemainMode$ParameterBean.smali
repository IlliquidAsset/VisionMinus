.class public Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraSDRemainMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private sdstate:Ljava/lang/String;

.field private total:Ljava/lang/String;

.field private used:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSdstate()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode$ParameterBean;->sdstate:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode$ParameterBean;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode$ParameterBean;->used:Ljava/lang/String;

    return-object v0
.end method

.method public setSdstate(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode$ParameterBean;->sdstate:Ljava/lang/String;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode$ParameterBean;->total:Ljava/lang/String;

    return-void
.end method

.method public setUsed(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraSDRemainMode$ParameterBean;->used:Ljava/lang/String;

    return-void
.end method
