.class public interface abstract Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;
.super Ljava/lang/Object;
.source "GCSConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectStuffListener"
.end annotation


# virtual methods
.method public abstract askForTethering()V
.end method

.method public abstract connectModeChanged()V
.end method

.method public abstract getTheTethering()V
.end method

.method public abstract needOpenPermission()V
.end method

.method public abstract needOpenUSBShare()V
.end method

.method public abstract onUsbIn()V
.end method

.method public abstract onUsbOut()V
.end method

.method public abstract updateConnectUI()V
.end method

.method public abstract updateDisconnectUI()V
.end method
