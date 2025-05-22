.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$DolphinRemoteTelnetListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DolphinRemoteTelnetListener"
.end annotation


# static fields
.field public static final PVSDK_REMOTE_9342_TELNET_STATE_CLOSE_CONNECT:I = 0x4

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_CONNECT_FAIL:I = 0x1

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_CONNECT_OK:I = 0x0

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_GET_VERSION_FAIL:I = 0x6

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_GET_VERSION_OK:I = 0x5

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_LOGIN_FAIL:I = 0x3

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_LOGIN_OK:I = 0x2

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_MD5_CHECK_FAILDE:I = 0xc

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_MD5_CHECK_SUCCESS:I = 0xd

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_NOT_EXISTS:I = 0xb

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_START_UPGRADING:I = 0xe

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_UP_FTP_FAIL:I = 0xa

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_UP_FTP_OK:I = 0x9

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_UP_FTP_REBOOT_FAIL:I = 0x10

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_UP_FTP_REBOOT_OK:I = 0xf

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_UP_MTD_FAIL:I = 0x8

.field public static final PVSDK_REMOTE_9342_TELNET_STATE_UP_MTD_OK:I = 0x7


# virtual methods
.method public abstract connectTelnet(I)V
.end method

.method public abstract get9342Version(ILjava/lang/String;)V
.end method

.method public abstract upgradeState(II)V
.end method
