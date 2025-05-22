.class public Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;
.super Ljava/lang/Object;
.source "ShipSelfCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlefCheckModel"
.end annotation


# static fields
.field public static final ERROR:I = 0x2

.field public static final NORMAL:I = 0x1

.field public static final UNCONNECTED:I


# instance fields
.field cammeraSDCardCapacity:I

.field findFishDiscern:I

.field remoteBatteryPower:I

.field remoteMode:I

.field sensors:I

.field shipBatteryPower:I

.field shipBatteryTemperature:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCammeraSDCardCapacity()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->cammeraSDCardCapacity:I

    return v0
.end method

.method public getFindFishDiscern()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->findFishDiscern:I

    return v0
.end method

.method public getRemoteBatteryPower()I
    .locals 1

    .line 662
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->remoteBatteryPower:I

    return v0
.end method

.method public getRemoteMode()I
    .locals 1

    .line 654
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->remoteMode:I

    return v0
.end method

.method public getSensors()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->sensors:I

    return v0
.end method

.method public getShipBatteryPower()I
    .locals 1

    .line 622
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->shipBatteryPower:I

    return v0
.end method

.method public getShipBatteryTemperature()I
    .locals 1

    .line 630
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->shipBatteryTemperature:I

    return v0
.end method

.method public isDataError()Z
    .locals 2

    .line 683
    iget v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->sensors:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelfCheckComplete()V
    .locals 0

    return-void
.end method

.method public setCammeraSDCardCapacity(I)V
    .locals 0

    .line 642
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->cammeraSDCardCapacity:I

    return-void
.end method

.method public setFindFishDiscern(I)V
    .locals 0

    .line 650
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->findFishDiscern:I

    return-void
.end method

.method public setRemoteBatteryPower(I)V
    .locals 0

    .line 666
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->remoteBatteryPower:I

    return-void
.end method

.method public setRemoteMode(I)V
    .locals 0

    .line 658
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->remoteMode:I

    return-void
.end method

.method public setSensors(I)V
    .locals 0

    .line 618
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->sensors:I

    return-void
.end method

.method public setShipBatteryPower(I)V
    .locals 0

    .line 626
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->shipBatteryPower:I

    return-void
.end method

.method public setShipBatteryTemperature(I)V
    .locals 0

    .line 634
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->shipBatteryTemperature:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlefCheckModel{sensors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->sensors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shipBatteryPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->shipBatteryPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shipBatteryTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->shipBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cammeraSDCardCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->cammeraSDCardCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", findFishDiscern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->findFishDiscern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remoteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->remoteMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remoteBatteryPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->remoteBatteryPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
