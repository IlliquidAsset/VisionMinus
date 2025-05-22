.class public interface abstract Lcom/powervision/natives/callback/RemoteControlCallback$RemoteControlCalibrateListener;
.super Ljava/lang/Object;
.source "RemoteControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/RemoteControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteControlCalibrateListener"
.end annotation


# static fields
.field public static final PVSDK_REMOTECONTROLCALIBRATE_CALLBACK_INFO_CALIBRATE_FAILED:I = 0x1

.field public static final PVSDK_REMOTECONTROLCALIBRATE_CALLBACK_INFO_CALIBRATE_SUCCESS:I = 0x0

.field public static final PVSDK_REMOTECONTROLCALIBRATE_CALLBACK_INFO_COMPLETE_FAILED:I = 0x3

.field public static final PVSDK_REMOTECONTROLCALIBRATE_CALLBACK_INFO_COMPLETE_SUCCESS:I = 0x2


# virtual methods
.method public abstract onRemoteControlCalibrateFailed()V
.end method

.method public abstract onRemoteControlCalibrateSuccess()V
.end method

.method public abstract onRemoteControlCompleteFailed()V
.end method

.method public abstract onRemoteControlCompleteSuccess()V
.end method
