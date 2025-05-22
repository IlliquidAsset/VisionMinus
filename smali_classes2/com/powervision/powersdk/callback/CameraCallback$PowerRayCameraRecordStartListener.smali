.class public interface abstract Lcom/powervision/powersdk/callback/CameraCallback$PowerRayCameraRecordStartListener;
.super Ljava/lang/Object;
.source "CameraCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/CameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerRayCameraRecordStartListener"
.end annotation


# static fields
.field public static final PVSDK_POWERRAY_CAMERA_RECORDSTART_CALLBACK_INFO_FAILED:I = 0x2

.field public static final PVSDK_POWERRAY_CAMERA_RECORDSTART_CALLBACK_INFO_SUCCESS:I = 0x0

.field public static final PVSDK_POWERRAY_CAMERA_RECORDSTART_CALLBACK_INFO_TIMEOUT:I = 0x1


# virtual methods
.method public abstract recordStartFailed()V
.end method

.method public abstract recordStartSuccess()V
.end method

.method public abstract recordStartTimeOut()V
.end method
