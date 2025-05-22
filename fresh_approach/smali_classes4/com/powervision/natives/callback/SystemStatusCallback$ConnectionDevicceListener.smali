.class public interface abstract Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;
.super Ljava/lang/Object;
.source "SystemStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/callback/SystemStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionDevicceListener"
.end annotation


# static fields
.field public static final PVSDK_DEVICE_CONNECTION_DISCONNECTED:I = 0x2

.field public static final PVSDK_DEVICE_CONNECTION_FAILED:I = 0x1

.field public static final PVSDK_DEVICE_CONNECTION_HEARTBEAT_RECOVERED:I = 0x4

.field public static final PVSDK_DEVICE_CONNECTION_HEARTBEAT_TIMEOUT:I = 0x5

.field public static final PVSDK_DEVICE_CONNECTION_SUCCESS:I = 0x0

.field public static final PVSDK_DEVICE_CONNECTION_TIMEOUT:I = 0x3


# virtual methods
.method public abstract onDeviceConnectFailed()V
.end method

.method public abstract onDeviceConnectSuccess()V
.end method

.method public abstract onDeviceConnectTimeOut()V
.end method

.method public abstract onDeviceDisConnected()V
.end method

.method public abstract onHeartbeatRecovered()V
.end method

.method public abstract onHeartbeatTimeOut()V
.end method

.method public abstract onSelfDisConnect()V
.end method
