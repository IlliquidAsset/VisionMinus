.class public interface abstract Lcom/powervision/natives/callback/W4UpgradeCallBack$RemoteDl01UpgradeCallBack;
.super Ljava/lang/Object;
.source "W4UpgradeCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/W4UpgradeCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteDl01UpgradeCallBack"
.end annotation


# static fields
.field public static final BASESTATION_UPGRADE_INFO_DL01_AT_ERROR:I = 0x0

.field public static final BASESTATION_UPGRADE_INFO_DL01_CHECK_FAILED:I = 0x5

.field public static final BASESTATION_UPGRADE_INFO_DL01_CHECK_SUCCESS:I = 0x9

.field public static final BASESTATION_UPGRADE_INFO_DL01_ENAFTP_SUCCESS:I = 0x6

.field public static final BASESTATION_UPGRADE_INFO_DL01_SEND_DATA_COMPLETE:I = 0x8

.field public static final BASESTATION_UPGRADE_INFO_DL01_SEND_FILE_PROGRESS:I = 0x7

.field public static final BASESTATION_UPGRADE_INFO_FTP_COMMAND_ERROR:I = 0x2

.field public static final BASESTATION_UPGRADE_INFO_FTP_CONNECT_FAILED:I = 0x1

.field public static final BASESTATION_UPGRADE_INFO_FTP_FILE_OPEN_FAILED:I = 0x3

.field public static final BASESTATION_UPGRADE_INFO_FTP_SEND_DATA_FAILED:I = 0x4


# virtual methods
.method public abstract onUpgradeRemoteDl01Result(II)V
.end method
