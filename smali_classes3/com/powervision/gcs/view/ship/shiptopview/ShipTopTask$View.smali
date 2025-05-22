.class public interface abstract Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;
.super Ljava/lang/Object;
.source "ShipTopTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract showW4BodyUpgradeDialog()V
.end method

.method public abstract updateAttitudeAndGroundSpeedChanged(Lcom/powervision/natives/param/Attitude;)V
.end method

.method public abstract updateBodyWifiRssi(I)V
.end method

.method public abstract updateGPSRawInt(Lcom/powervision/natives/param/GpsRawIntParam;)V
.end method

.method public abstract updateMt03RemoteControlBatterySurplus(I)V
.end method

.method public abstract updateRemoteWifiRssi(I)V
.end method

.method public abstract updateSonarBattery(I)V
.end method

.method public abstract updateSonarConnectStatus(Z)V
.end method

.method public abstract updateSystemStatus(Lcom/powervision/natives/param/ElecgtricQuantityParam;)V
.end method
