.class public interface abstract Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteMcuUpgradeStatusListener;
.super Ljava/lang/Object;
.source "RemoteStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnRemoteMcuUpgradeStatusListener"
.end annotation


# static fields
.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_CHECK_FILE_FAILED:I = 0x8

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_CHECK_FILE_SUCCESS:I = 0x3

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_ERASE_FAILED:I = 0x6

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_INBOOT_FAILED:I = 0x5

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_JUMP_FAILED:I = 0x9

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_JUMP_SUCCESS:I = 0x4

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_SENDING_FILE:I = 0x1

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_SEND_DATA_COMPLETE:I = 0x2

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_SEND_DATA_FAILED:I = 0x7

.field public static final REMOTE_MCU_UPGRADE_STATUS_INFO_START_COMPLETE:I


# virtual methods
.method public abstract setRemoteMcuUpgradeStatusInfoCheckFileFailed()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoCheckFileSuccess()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoEraseFailed()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoInbootFailed()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoJumpFailed()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoJumpSuccess()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoSendDataComplete()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoSendDataFailed()V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoSendingFile(I)V
.end method

.method public abstract setRemoteMcuUpgradeStatusInfoStartComplete()V
.end method
