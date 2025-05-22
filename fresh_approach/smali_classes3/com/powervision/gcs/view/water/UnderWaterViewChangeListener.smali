.class public interface abstract Lcom/powervision/gcs/view/water/UnderWaterViewChangeListener;
.super Ljava/lang/Object;
.source "UnderWaterViewChangeListener.java"


# static fields
.field public static final CAMERA_CONNECTED:I = 0x10

.field public static final CAMERA_CONNECTING:I = 0x11

.field public static final DEPTH_LOCKSTATE_CHANGE:I = 0x4

.field public static final LIGHT_LEVEL_CHANGE:I = 0x6

.field public static final ROCKER_XY_CHANGE:I = 0x7

.field public static final ROCKER_Z_CHANGE:I = 0x8

.field public static final SENSOR_CHANGE:I = 0x9

.field public static final SPEED_LEVEL_CHANGE:I = 0x5

.field public static final START_RECORD_VIDEO:I = 0x2

.field public static final START_TAKE_PHOTO:I = 0x1

.field public static final STOP_RECORD_VIDEO:I = 0x3


# virtual methods
.method public varargs abstract onUnderWaterViewChange(ILjava/lang/Object;[Ljava/lang/Integer;)V
.end method
