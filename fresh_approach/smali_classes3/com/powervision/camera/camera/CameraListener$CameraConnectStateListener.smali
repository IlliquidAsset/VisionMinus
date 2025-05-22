.class public interface abstract Lcom/powervision/camera/camera/CameraListener$CameraConnectStateListener;
.super Ljava/lang/Object;
.source "CameraListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/camera/camera/CameraListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraConnectStateListener"
.end annotation


# virtual methods
.method public abstract onCameraStateConnect()V
.end method

.method public abstract onCameraStateConnectFaile()V
.end method

.method public abstract onCameraStateConnectHeartBeatTimeOut()V
.end method

.method public abstract onCameraStateConnectTimeOut()V
.end method

.method public abstract onCameraStateDisconnect()V
.end method
