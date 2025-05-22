.class public interface abstract Lcom/powervision/natives/callback/UpgradeCallback$Ap03NotifyOnIntegrationUpgradeStatusListener;
.super Ljava/lang/Object;
.source "UpgradeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/UpgradeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnIntegrationUpgradeStatusListener"
.end annotation


# static fields
.field public static final INTEGRATION_UPGRADE_STATUS_CHECK_MD5_FAILED_:I = 0x6

.field public static final INTEGRATION_UPGRADE_STATUS_CHECK_MD5_SUCCESS_:I = 0x5

.field public static final INTEGRATION_UPGRADE_STATUS_COMMAND_FAILED_:I = 0x1

.field public static final INTEGRATION_UPGRADE_STATUS_COMMAND_SUCCESS_:I = 0x0

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALLING_:I = 0x7

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALL_COMPLETE_:I = 0x9

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_REBOOTING_:I = 0x8

.field public static final INTEGRATION_UPGRADE_STATUS_SENDING_DATA_:I = 0x4

.field public static final INTEGRATION_UPGRADE_STATUS_SEND_DATA_FAILED_:I = 0x3

.field public static final INTEGRATION_UPGRADE_STATUS_SEND_DATA_SUCCESS_:I = 0x2


# virtual methods
.method public abstract setIntegrationUpgradeStatusCheckMd5Failed()V
.end method

.method public abstract setIntegrationUpgradeStatusCheckMd5Success()V
.end method

.method public abstract setIntegrationUpgradeStatusCommandFailed(I)V
.end method

.method public abstract setIntegrationUpgradeStatusCommandSuccess()V
.end method

.method public abstract setIntegrationUpgradeStatusDeviceInstallComplete()V
.end method

.method public abstract setIntegrationUpgradeStatusDeviceInstalling(I)V
.end method

.method public abstract setIntegrationUpgradeStatusDeviceRebooting()V
.end method

.method public abstract setIntegrationUpgradeStatusSendDataFailed()V
.end method

.method public abstract setIntegrationUpgradeStatusSendDataSuccess()V
.end method

.method public abstract setIntegrationUpgradeStatusSendingData(I)V
.end method
