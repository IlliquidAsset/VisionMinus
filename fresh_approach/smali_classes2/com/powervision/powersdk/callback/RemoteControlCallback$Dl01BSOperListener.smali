.class public interface abstract Lcom/powervision/powersdk/callback/RemoteControlCallback$Dl01BSOperListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dl01BSOperListener"
.end annotation


# static fields
.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_CHANNEL:I = 0x3

.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_CONNECTKEY:I = 0x4

.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_NOISE:I = 0x1

.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_RSSI:I = 0x0

.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_SNR:I = 0x2

.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_SSID:I = 0x5

.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_VERSION:I = 0x6

.field public static final PVSDK_DL01_BS_COMMAND_NUMBER_WIFIRESET:I = 0xa

.field public static final PVSDK_DL01_BS_OPER_STATUS_GET_ERROR:I = 0x3

.field public static final PVSDK_DL01_BS_OPER_STATUS_GET_OK:I = 0x1

.field public static final PVSDK_DL01_BS_OPER_STATUS_SET_ERROR:I = 0x2

.field public static final PVSDK_DL01_BS_OPER_STATUS_SET_OK:I


# virtual methods
.method public abstract dl01BSOper(IILjava/lang/String;)V
.end method
