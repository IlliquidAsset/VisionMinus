.class public interface abstract Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteMcuUpgradeCallBack;
.super Ljava/lang/Object;
.source "W4UpgradeCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/W4UpgradeCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteMcuUpgradeCallBack"
.end annotation


# static fields
.field public static final MT03A_MCU_UPGRADE_STATUS_FILE_CHECK_FAILED:I = 0x9

.field public static final MT03A_MCU_UPGRADE_STATUS_FILE_CHECK_SUCCESS:I = 0x8

.field public static final MT03A_MCU_UPGRADE_STATUS_FILE_OPEN_FAILED:I = 0x0

.field public static final MT03A_MCU_UPGRADE_STATUS_FTP_OPERATIN_ERROR:I = 0x2

.field public static final MT03A_MCU_UPGRADE_STATUS_GET_CHECK_RESULT_TIMEOUT:I = 0x7

.field public static final MT03A_MCU_UPGRADE_STATUS_LINK_COMMAND_FAILED:I = 0x1

.field public static final MT03A_MCU_UPGRADE_STATUS_LINK_DATA_FAILED:I = 0x3

.field public static final MT03A_MCU_UPGRADE_STATUS_SENDING_DATA:I = 0x5

.field public static final MT03A_MCU_UPGRADE_STATUS_SEND_DATA_COMPLETE:I = 0x6

.field public static final MT03A_MCU_UPGRADE_STATUS_SEND_DATA_ERROR:I = 0x4


# virtual methods
.method public abstract onMcuUpGradeState(II)V
.end method
