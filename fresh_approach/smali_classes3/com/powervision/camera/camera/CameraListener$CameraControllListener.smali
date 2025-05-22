.class public interface abstract Lcom/powervision/camera/camera/CameraListener$CameraControllListener;
.super Ljava/lang/Object;
.source "CameraListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/camera/camera/CameraListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraControllListener"
.end annotation


# virtual methods
.method public abstract fail(Ljava/lang/String;)V
.end method

.method public abstract onAEBMultiplePhotoStart()V
.end method

.method public abstract onCameraStateChange(I)V
.end method

.method public abstract onHDRMultiplePhotoStart()V
.end method

.method public abstract onMultipleShotsStart()V
.end method

.method public abstract onPhotograph(Ljava/lang/String;)V
.end method

.method public abstract onStartRecordVideo(Ljava/lang/String;)V
.end method

.method public abstract onStopRecordVideo(Ljava/lang/String;)V
.end method

.method public abstract onStorageFull(Ljava/lang/String;I)V
.end method

.method public abstract onSwitchPhotographMode(Ljava/lang/String;)V
.end method

.method public abstract onSwitchRecordMode(Ljava/lang/String;)V
.end method

.method public abstract onTimingStart()V
.end method
