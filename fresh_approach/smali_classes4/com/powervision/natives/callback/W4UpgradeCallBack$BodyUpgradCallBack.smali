.class public interface abstract Lcom/powervision/natives/callback/W4UpgradeCallBack$BodyUpgradCallBack;
.super Ljava/lang/Object;
.source "W4UpgradeCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/W4UpgradeCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BodyUpgradCallBack"
.end annotation


# static fields
.field public static final INTEGRATION_UPGRADE_STATUS_CHECK_MD5_FAILED:I = 0x6

.field public static final INTEGRATION_UPGRADE_STATUS_CHECK_MD5_SUCCESS:I = 0x5

.field public static final INTEGRATION_UPGRADE_STATUS_COMMAND_FAILED:I = 0x1

.field public static final INTEGRATION_UPGRADE_STATUS_COMMAND_SUCCESS:I = 0x0

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_DL01_INSTALLING:I = 0xb

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALLING:I = 0xa

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALL_COMPLETE:I = 0xd

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_INSTALL_ERROR:I = 0xc

.field public static final INTEGRATION_UPGRADE_STATUS_DEVICE_RECV_INSTALL_PROGRESS_TIMEOUT:I = 0xe

.field public static final INTEGRATION_UPGRADE_STATUS_SENDING_DATA:I = 0x4

.field public static final INTEGRATION_UPGRADE_STATUS_SEND_DATA_FAILED:I = 0x3

.field public static final INTEGRATION_UPGRADE_STATUS_SEND_DATA_SUCCESS:I = 0x2

.field public static final INTEGRATION_UPGRADE_STATUS_UNZIP_FALIED:I = 0x9

.field public static final INTEGRATION_UPGRADE_STATUS_UNZIP_START:I = 0x7

.field public static final INTEGRATION_UPGRADE_STATUS_UNZIP_SUCCESS:I = 0x8

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_CONNECT_FALIED:I = 0x1

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_CONNECT_TIMEOUT:I = 0x2

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_INSTALL_FAILED:I = 0x6

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_INSTALL_TIMEOUT:I = 0x7

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_MESSAGE_FAILED:I = 0x3

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_MESSAGE_TIMEOUT:I = 0x4

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_SD_SIZE_ERROR:I = 0x5

.field public static final PVW4INTEGRATION_UPGRADE_INFO_ERRCODE_SUCCESS:I


# virtual methods
.method public abstract onUpgradeBody(IILjava/lang/String;)V
.end method
