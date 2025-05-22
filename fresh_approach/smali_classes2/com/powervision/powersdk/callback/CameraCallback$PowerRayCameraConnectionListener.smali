.class public interface abstract Lcom/powervision/powersdk/callback/CameraCallback$PowerRayCameraConnectionListener;
.super Ljava/lang/Object;
.source "CameraCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/CameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerRayCameraConnectionListener"
.end annotation


# static fields
.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_CONTROL_CONNECTED:I = 0x0

.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_CONTROL_DISCONNECTED:I = 0x1

.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_CONTROL_FAILED:I = 0x3

.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_CONTROL_TIMEOUT:I = 0x2

.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_DATA_CONNECTED:I = 0x4

.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_DATA_DISCONNECTED:I = 0x5

.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_DATA_FAILED:I = 0x7

.field public static final PVSDK_POWERRAY_CAMERA_CONNECTION_CALLBACK_INFO_DATA_TIMEOUT:I = 0x6


# virtual methods
.method public abstract connectionControlConnectFailed()V
.end method

.method public abstract connectionControlConnectTimeout()V
.end method

.method public abstract connectionControlConnected()V
.end method

.method public abstract connectionControlDisconnect()V
.end method

.method public abstract connectionDataConnectFailed()V
.end method

.method public abstract connectionDataConnectTimeout()V
.end method

.method public abstract connectionDataConnected()V
.end method

.method public abstract connectionDataDisconnect()V
.end method
