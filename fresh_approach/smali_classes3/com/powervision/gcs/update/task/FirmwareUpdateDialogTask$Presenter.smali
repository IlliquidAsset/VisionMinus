.class public interface abstract Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$Presenter;
.super Ljava/lang/Object;
.source "FirmwareUpdateDialogTask.java"

# interfaces
.implements Lcom/powervision/gcs/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract updateRemoteDl01Firmware(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract updateRemoteMt03Firmware(Ljava/lang/String;)V
.end method

.method public abstract updateRemoteWifi9342Firmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateShipBodyFirmware(Ljava/lang/String;)V
.end method

.method public abstract updateover()V
.end method
