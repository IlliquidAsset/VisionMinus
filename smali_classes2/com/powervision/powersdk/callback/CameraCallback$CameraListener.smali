.class public interface abstract Lcom/powervision/powersdk/callback/CameraCallback$CameraListener;
.super Ljava/lang/Object;
.source "CameraCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/CameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraListener"
.end annotation


# static fields
.field public static final PVSDK_CAMERA_CAMERA_FEEDBACK_TIMEOUT:I = 0x16

.field public static final PVSDK_CAMERA_CAPTURE_SETTING_ERROR_SD_ERR:I = 0x18

.field public static final PVSDK_CAMERA_CAPTURE_SETTING_ERROR_SD_FULL:I = 0x17

.field public static final PVSDK_CAMERA_CAPTURE_SETTING_ERROR_SD_NON:I = 0x19

.field public static final PVSDK_CAMERA_CAPTURE_SETTING_FAILED:I = 0x13

.field public static final PVSDK_CAMERA_CAPTURE_SETTING_SUCCESS:I = 0x12

.field public static final PVSDK_CAMERA_CMD_CHANGE_TO_FLIR:I = 0x1d

.field public static final PVSDK_CAMERA_EXIST:I = 0x0

.field public static final PVSDK_CAMERA_FORMAT_SD_FAILED:I = 0xd

.field public static final PVSDK_CAMERA_FORMAT_SD_SUCCESS:I = 0xc

.field public static final PVSDK_CAMERA_PICTURE_SETTING_FAILED:I = 0x15

.field public static final PVSDK_CAMERA_PICTURE_SETTING_SUCCESS:I = 0x14

.field public static final PVSDK_CAMERA_REC_ERROR_SD_ERR:I = 0x1b

.field public static final PVSDK_CAMERA_REC_ERROR_SD_FULL:I = 0x1a

.field public static final PVSDK_CAMERA_REC_ERROR_SD_NON:I = 0x1c

.field public static final PVSDK_CAMERA_REC_MODE:I = 0x5

.field public static final PVSDK_CAMERA_REC_MODE_ERROR:I = 0x6

.field public static final PVSDK_CAMERA_REC_RECORDING:I = 0x2

.field public static final PVSDK_CAMERA_REC_SETTING_FAILED:I = 0x11

.field public static final PVSDK_CAMERA_REC_SETTING_SUCCESS:I = 0x10

.field public static final PVSDK_CAMERA_REC_START_ERROR:I = 0x3

.field public static final PVSDK_CAMERA_REC_STOPED:I = 0x1

.field public static final PVSDK_CAMERA_REC_STOP_ERROR:I = 0x4

.field public static final PVSDK_CAMERA_RESET_TO_CAMERA_FACTORY_FAILED:I = 0xf

.field public static final PVSDK_CAMERA_RESET_TO_CAMERA_FACTORY_SUCCESS:I = 0xe

.field public static final PVSDK_CAMERA_STILL_CAPTURE_ERROR:I = 0x9

.field public static final PVSDK_CAMERA_STILL_CAPTURE_MODE:I = 0xa

.field public static final PVSDK_CAMERA_STILL_CAPTURE_MODE_ERROR:I = 0xb

.field public static final PVSDK_CAMERA_STILL_CAPTURE_SUCCESS:I = 0x7

.field public static final PVSDK_CAMERA_STILL_CAPTURING:I = 0x8

.field public static final PVSDK_NORMAL_CAMERA_FLIR_CAL_FAILED:I = 0x26

.field public static final PVSDK_NORMAL_CAMERA_FLIR_CAL_SUCCESS:I = 0x25

.field public static final PVSDK_NORMAL_CAMERA_STILL_CAPTURE_MODE:I = 0x1e


# virtual methods
.method public abstract onCameraCameraCmdChangeCapture()V
.end method

.method public abstract onCameraCameraCmdChangeFlir()V
.end method

.method public abstract onCameraCameraFeedBackTimeout()V
.end method

.method public abstract onCameraCameraFlirFailed()V
.end method

.method public abstract onCameraCameraFlirSuccess()V
.end method

.method public abstract onCameraCameraRecSDEmpty()V
.end method

.method public abstract onCameraCameraRecSDErr()V
.end method

.method public abstract onCameraCameraRecSDFull()V
.end method

.method public abstract onCameraCameraSDEmpty()V
.end method

.method public abstract onCameraCameraSDErr()V
.end method

.method public abstract onCameraCameraSDFull()V
.end method

.method public abstract onCameraCaptureSettingFailed()V
.end method

.method public abstract onCameraCaptureSettingSuccess()V
.end method

.method public abstract onCameraExists()V
.end method

.method public abstract onCameraFormatSDFailed()V
.end method

.method public abstract onCameraFormatSDSuccess()V
.end method

.method public abstract onCameraPictureSettingFailed()V
.end method

.method public abstract onCameraPictureSettingSuccess()V
.end method

.method public abstract onCameraRecMode()V
.end method

.method public abstract onCameraRecModeError()V
.end method

.method public abstract onCameraRecRecing()V
.end method

.method public abstract onCameraRecSettingFailed()V
.end method

.method public abstract onCameraRecSettingSuccess()V
.end method

.method public abstract onCameraRecStartError()V
.end method

.method public abstract onCameraRecStopEnd()V
.end method

.method public abstract onCameraRecStopError()V
.end method

.method public abstract onCameraResetToCameraFactoryFailed()V
.end method

.method public abstract onCameraResetToCameraFactorySuccess()V
.end method

.method public abstract onCameraStillCaptureEnd()V
.end method

.method public abstract onCameraStillCaptureError()V
.end method

.method public abstract onCameraStillCaptureMode()V
.end method

.method public abstract onCameraStillCaptureModeError()V
.end method

.method public abstract onCameraStillCaptureing()V
.end method
