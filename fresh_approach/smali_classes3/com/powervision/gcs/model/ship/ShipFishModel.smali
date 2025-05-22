.class public Lcom/powervision/gcs/model/ship/ShipFishModel;
.super Ljava/lang/Object;
.source "ShipFishModel.java"


# instance fields
.field private fishAddress:Ljava/lang/String;

.field private fishDesc:Ljava/lang/String;

.field private fishLatlng:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFishAddress()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipFishModel;->fishAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFishDesc()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipFishModel;->fishDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getFishLatlng()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipFishModel;->fishLatlng:Ljava/lang/String;

    return-object v0
.end method

.method public setFishAddress(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipFishModel;->fishAddress:Ljava/lang/String;

    return-void
.end method

.method public setFishDesc(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipFishModel;->fishDesc:Ljava/lang/String;

    return-void
.end method

.method public setFishLatlng(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipFishModel;->fishLatlng:Ljava/lang/String;

    return-void
.end method
