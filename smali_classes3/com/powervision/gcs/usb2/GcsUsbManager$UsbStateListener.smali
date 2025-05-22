.class public interface abstract Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UsbStateListener"
.end annotation


# virtual methods
.method public abstract didNotGetAccessory()V
.end method

.method public abstract getAccessoryAndDoNotHasPermission()V
.end method

.method public abstract getAccessoryAndHasPermission()V
.end method

.method public abstract needRestartActivity()V
.end method

.method public abstract onError()V
.end method

.method public abstract onUsb2CanConnected()V
.end method

.method public abstract onUsb2Confirm()V
.end method

.method public abstract onUsb2Disconnected()V
.end method

.method public abstract onUsbIn()V
.end method

.method public abstract onUsbOut()V
.end method
