.class public interface abstract Lcom/powervision/gcs/camera/w4/IChannelListener;
.super Ljava/lang/Object;
.source "IChannelListener.java"


# static fields
.field public static final PDT_EVT_AC_OFF:I = 0x14

.field public static final PDT_EVT_AC_ON:I = 0x13

.field public static final PDT_EVT_CHIP_TEMP_ALARM:I = 0xf

.field public static final PDT_EVT_CHIP_TEMP_HIGH:I = 0x7

.field public static final PDT_EVT_FISH_ERR:I = 0xa

.field public static final PDT_EVT_FISH_OK:I = 0xb

.field public static final PDT_EVT_NORMAL_OPT:I = 0x0

.field public static final PDT_EVT_PWR_LOW:I = 0x9

.field public static final PDT_EVT_PWR_LOW_ALARM:I = 0x11

.field public static final PDT_EVT_PWR_TEMP_ALARM:I = 0x10

.field public static final PDT_EVT_PWR_TEMP_HIGH:I = 0x8

.field public static final PDT_EVT_REC_ERR:I = 0x2

.field public static final PDT_EVT_REC_FULL:I = 0x1

.field public static final PDT_EVT_SD_ERR:I = 0x6

.field public static final PDT_EVT_SD_MOUNT_ON:I = 0x12

.field public static final PDT_EVT_SD_NOEXIST:I = 0x5

.field public static final PDT_EVT_SHUT_DOWN:I = 0xd

.field public static final PDT_EVT_SNAP_ERR:I = 0x4

.field public static final PDT_EVT_SNAP_FULL:I = 0x3

.field public static final PDT_EVT_USB_CONNECTED:I = 0xc

.field public static final PDT_EVT_USB_DISCONNECTED:I = 0xe

.field public static final PDT_EVT_WIFI_OFF:I = 0x15


# virtual methods
.method public abstract onChannelEvent(I)V
.end method
