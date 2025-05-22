.class public interface abstract Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;
.super Ljava/lang/Object;
.source "FirmwareUpdateDialogTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract dolphinRemote9342Update(II)V
.end method

.method public abstract dolphinRemoteDl01UploadState(II)V
.end method

.method public abstract dolphinUpdata(IILjava/lang/String;)V
.end method

.method public abstract mcu_AUpgradeStatus(II)V
.end method

.method public abstract mcu_BUpgradeStatus(II)V
.end method

.method public abstract methodError()V
.end method

.method public abstract onMsg(Ljava/lang/String;)V
.end method
