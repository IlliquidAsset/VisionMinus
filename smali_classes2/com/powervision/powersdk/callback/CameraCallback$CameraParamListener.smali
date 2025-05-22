.class public interface abstract Lcom/powervision/powersdk/callback/CameraCallback$CameraParamListener;
.super Ljava/lang/Object;
.source "CameraCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/CameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraParamListener"
.end annotation


# virtual methods
.method public abstract onCameraParamGetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onCameraParamGetTimeout(Ljava/lang/String;)V
.end method

.method public abstract onCameraParamSetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onCameraParamSetTimeout(Ljava/lang/String;)V
.end method
