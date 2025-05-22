.class public interface abstract Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcu_BUpgradeCallBack;
.super Ljava/lang/Object;
.source "W4UpgradeCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/W4UpgradeCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteMcu_BUpgradeCallBack"
.end annotation


# static fields
.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_CHECK_FILE_FAILED:I = 0x8

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_CHECK_FILE_SUCCESS:I = 0x3

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_ERASE_FAILED:I = 0x6

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_INBOOT_FAILED:I = 0x5

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_JUMP_FAILED:I = 0x9

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_JUMP_SUCCESS:I = 0x4

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_SENDING_FILE:I = 0x1

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_SEND_DATA_COMPLETE:I = 0x2

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_SEND_DATA_FAILED:I = 0x7

.field public static final MT03B_MCU_UPGRADE_STATUS_INFO_START_COMPLETE:I


# virtual methods
.method public abstract onMcu_BUpgradeState(II)V
.end method
