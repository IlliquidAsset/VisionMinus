.class public interface abstract Lcom/powervision/powersdk/callback/SensorCallback$MagnetometerCalibrateListener;
.super Ljava/lang/Object;
.source "SensorCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/SensorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MagnetometerCalibrateListener"
.end annotation


# static fields
.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_BACK_ORIENTATION_DETECTED:I = 0xb

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_BACK_SIDE_DONE:I = 0xc

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_CANCELLED:I = 0x10

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_DONE:I = 0xd

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_DOWN_ORIENTATION_DETECTED:I = 0x7

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_DOWN_SIDE_DONE:I = 0x8

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_FAILED:I = 0xe

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_FRONT_ORIENTATION_DETECTED:I = 0x9

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_FRONT_SIDE_DONE:I = 0xa

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_INVALID:I = 0x0

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_LEFT_ORIENTATION_DETECTED:I = 0x1

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_LEFT_SIDE_DONE:I = 0x2

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_NEEDS_ROTATION:I = 0x12

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_RIGHT_ORIENTATION_DETECTED:I = 0x3

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_RIGHT_SIDE_DONE:I = 0x4

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_TIME_OUT:I = 0x13

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_TOO_FAST:I = 0x11

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_UP_ORIENTATION_DETECTED:I = 0x5

.field public static final PVSDK_MAGNETOMETERCALIBRATE_INFO_UP_SIDE_DONE:I = 0x6


# virtual methods
.method public abstract onMagnetometerCalibrateBackOrientationDetected()V
.end method

.method public abstract onMagnetometerCalibrateBackSideDone()V
.end method

.method public abstract onMagnetometerCalibrateCancelled()V
.end method

.method public abstract onMagnetometerCalibrateDone()V
.end method

.method public abstract onMagnetometerCalibrateDownOrientationDetected()V
.end method

.method public abstract onMagnetometerCalibrateDownSideDone()V
.end method

.method public abstract onMagnetometerCalibrateFailed()V
.end method

.method public abstract onMagnetometerCalibrateFrontOrientationDetected()V
.end method

.method public abstract onMagnetometerCalibrateFrontSideDone()V
.end method

.method public abstract onMagnetometerCalibrateInvalid()V
.end method

.method public abstract onMagnetometerCalibrateLeftOrientationDetected()V
.end method

.method public abstract onMagnetometerCalibrateLeftSideDone()V
.end method

.method public abstract onMagnetometerCalibrateNeedsRotation()V
.end method

.method public abstract onMagnetometerCalibrateRightOrientationDetected()V
.end method

.method public abstract onMagnetometerCalibrateRightSideDone()V
.end method

.method public abstract onMagnetometerCalibrateTimeOut()V
.end method

.method public abstract onMagnetometerCalibrateTooFast()V
.end method

.method public abstract onMagnetometerCalibrateUpOrientationDetected()V
.end method

.method public abstract onMagnetometerCalibrateUpSideDone()V
.end method
