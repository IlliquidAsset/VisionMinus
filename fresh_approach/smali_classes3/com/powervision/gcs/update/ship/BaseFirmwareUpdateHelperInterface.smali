.class public interface abstract Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface;
.super Ljava/lang/Object;
.source "BaseFirmwareUpdateHelperInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface$FirmwareUpdateIgnoreSpSaveConstant;,
        Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface$FirmwareUpdateSpSaveConstant;,
        Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface$FirmwareUpdateModelConstant;,
        Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface$OnFirmwareVersionListener;
    }
.end annotation


# virtual methods
.method public abstract downloadFirmware(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getDownloadFirmwareVersion()Ljava/lang/String;
.end method

.method public abstract getFirmwareVersion(Lcom/powervision/gcs/update/ship/BaseFirmwareUpdateHelperInterface$OnFirmwareVersionListener;)V
.end method

.method public abstract getOnlineReleaseNote()Ljava/lang/String;
.end method

.method public abstract getOnlineVersion()Ljava/lang/String;
.end method

.method public abstract hasNewVersion(I)Z
.end method

.method public abstract ignoreUpgradeVersion(I)V
.end method

.method public abstract isForceUpgrade()Z
.end method

.method public abstract isIgnoreUpgradeVersion(I)Z
.end method

.method public abstract needDownloadFirmwareFile(Ljava/lang/String;)Z
.end method

.method public abstract saveOnlineData(Ljava/lang/String;)V
.end method
