.class public interface abstract Lcom/powervision/natives/callback/CalibrationCallback$Ap03NotifyOnCancelCalibrationResultListener;
.super Ljava/lang/Object;
.source "CalibrationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/CalibrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ap03NotifyOnCancelCalibrationResultListener"
.end annotation


# static fields
.field public static final COMMON_RESULT_FAILED:I = 0x2

.field public static final COMMON_RESULT_SUCCESS:I = 0x0

.field public static final COMMON_RESULT_TIMEOU:I = 0x1


# virtual methods
.method public abstract setCancelCalibrationFailed()V
.end method

.method public abstract setCancelCalibrationSuccess()V
.end method

.method public abstract setCancelCalibrationTimeOut()V
.end method
