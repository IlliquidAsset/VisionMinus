.class public interface abstract Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnGyroCalibrationStatusListener;
.super Ljava/lang/Object;
.source "CalibrationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/CalibrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnGyroCalibrationStatusListener"
.end annotation


# static fields
.field public static final GYRO_CALIBRATION_STATUS_CALIBRATION:I = 0x2

.field public static final GYRO_CALIBRATION_STATUS_CALIBRATION_FAILED:I = 0x6

.field public static final GYRO_CALIBRATION_STATUS_CALIBRATION_SUCCESS:I = 0x7

.field public static final GYRO_CALIBRATION_STATUS_CALIBRATION_TIMEOUT:I = 0x8

.field public static final GYRO_CALIBRATION_STATUS_FAILED_TO_SET_PARAMS:I = 0x5

.field public static final GYRO_CALIBRATION_STATUS_MOTION_DURING_CALIBRATION:I = 0x4

.field public static final GYRO_CALIBRATION_STATUS_MOTION_RETRYING:I = 0x3

.field public static final GYRO_CALIBRATION_STATUS_START_FAILED:I = 0x1

.field public static final GYRO_CALIBRATION_STATUS_START_SUCCESS:I


# virtual methods
.method public abstract setGyroCalibrationStatusCalibration(I)V
.end method

.method public abstract setGyroCalibrationStatusCalibrationFailed()V
.end method

.method public abstract setGyroCalibrationStatusCalibrationSuccess()V
.end method

.method public abstract setGyroCalibrationStatusCalibrationTimeout()V
.end method

.method public abstract setGyroCalibrationStatusFailedToSetParams()V
.end method

.method public abstract setGyroCalibrationStatusMotionDuringCalibration()V
.end method

.method public abstract setGyroCalibrationStatusMotionRetrying(I)V
.end method

.method public abstract setGyroCalibrationStatusStartFailed()V
.end method

.method public abstract setGyroCalibrationStatusStartSuccess()V
.end method
