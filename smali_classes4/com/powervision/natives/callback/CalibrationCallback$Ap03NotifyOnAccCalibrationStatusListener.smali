.class public interface abstract Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnAccCalibrationStatusListener;
.super Ljava/lang/Object;
.source "CalibrationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/CalibrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnAccCalibrationStatusListener"
.end annotation


# static fields
.field public static final ACC_CALIBRATION_STATUS_ALREADY_COMPLETED:I = 0x6

.field public static final ACC_CALIBRATION_STATUS_CALIBRATION:I = 0x2

.field public static final ACC_CALIBRATION_STATUS_CALIBRATION_FAILED:I = 0x7

.field public static final ACC_CALIBRATION_STATUS_CALIBRATION_SUCCESS:I = 0x8

.field public static final ACC_CALIBRATION_STATUS_CALIBRATION_TIMEOUT:I = 0x9

.field public static final ACC_CALIBRATION_STATUS_ORIENTATION_DETECTED:I = 0x3

.field public static final ACC_CALIBRATION_STATUS_PENDING:I = 0x5

.field public static final ACC_CALIBRATION_STATUS_SIDE_DONE:I = 0x4

.field public static final ACC_CALIBRATION_STATUS_START_FAILED:I = 0x1

.field public static final ACC_CALIBRATION_STATUS_START_SUCCESS:I


# virtual methods
.method public abstract setAccCalibrationStatusAlreadyCompleted(I)V
.end method

.method public abstract setAccCalibrationStatusCalibration(I)V
.end method

.method public abstract setAccCalibrationStatusCalibrationFailed()V
.end method

.method public abstract setAccCalibrationStatusCalibrationSuccess()V
.end method

.method public abstract setAccCalibrationStatusCalibrationTimeout()V
.end method

.method public abstract setAccCalibrationStatusOrientationDetected(I)V
.end method

.method public abstract setAccCalibrationStatusPending(I)V
.end method

.method public abstract setAccCalibrationStatusSideDone(I)V
.end method

.method public abstract setAccCalibrationStatusStartFailed()V
.end method

.method public abstract setAccCalibrationStatusStartSuccess()V
.end method
