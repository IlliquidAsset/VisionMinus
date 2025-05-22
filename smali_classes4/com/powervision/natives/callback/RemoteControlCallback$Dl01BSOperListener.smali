.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dl01BSOperListener"
.end annotation


# static fields
.field public static final PVSDK_DL01_BS_OPER_STATUS_GET_ERROR:I = 0x1

.field public static final PVSDK_DL01_BS_OPER_STATUS_GET_OK:I = 0x0

.field public static final PVSDK_DL01_BS_OPER_STATUS_SET_ERROR:I = 0x3

.field public static final PVSDK_DL01_BS_OPER_STATUS_SET_OK:I = 0x2

.field public static final SETGET_OPERATION_OPERATE_BANDWIDTH:I = 0x8

.field public static final SETGET_OPERATION_OPERATE_CHANBW:I = 0x10

.field public static final SETGET_OPERATION_OPERATE_CHANNEL:I = 0x3

.field public static final SETGET_OPERATION_OPERATE_CONNECTKEY:I = 0x4

.field public static final SETGET_OPERATION_OPERATE_COUNTRY:I = 0xa

.field public static final SETGET_OPERATION_OPERATE_CURCHANNEL:I = 0xc

.field public static final SETGET_OPERATION_OPERATE_CURTXPOWER:I = 0xb

.field public static final SETGET_OPERATION_OPERATE_FREQHOP:I = 0xe

.field public static final SETGET_OPERATION_OPERATE_MCSX:I = 0x7

.field public static final SETGET_OPERATION_OPERATE_NOISE:I = 0x1

.field public static final SETGET_OPERATION_OPERATE_RSSI:I = 0x0

.field public static final SETGET_OPERATION_OPERATE_SNR:I = 0x2

.field public static final SETGET_OPERATION_OPERATE_SSID:I = 0x5

.field public static final SETGET_OPERATION_OPERATE_SWVERSION:I = 0x6

.field public static final SETGET_OPERATION_OPERATE_TXPOWER:I = 0x9

.field public static final SETGET_OPERATION_OPERATE_WIFI:I = 0xf

.field public static final SETGET_OPERATION_OPERATE_WIFIRESET:I = 0xd


# virtual methods
.method public abstract dl01BSOper(IILjava/lang/String;)V
.end method
