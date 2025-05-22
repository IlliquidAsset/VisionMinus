.class public interface abstract Lcom/powervision/powersdk/callback/CameraCallback$PowerRayCameraSetClientInfoListener;
.super Ljava/lang/Object;
.source "CameraCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/powersdk/callback/CameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerRayCameraSetClientInfoListener"
.end annotation


# static fields
.field public static final PVSDK_POWERRAY_CAMERA_SET_CLIENT_INFO_CALLBACK_INFO_FAILED:I = 0x1

.field public static final PVSDK_POWERRAY_CAMERA_SET_CLIENT_INFO_CALLBACK_INFO_SUCCESS:I


# virtual methods
.method public abstract setClientInfoFailed()V
.end method

.method public abstract setClientInfoSuccess()V
.end method
