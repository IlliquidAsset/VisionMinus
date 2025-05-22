.class public interface abstract Lcom/powervision/gcs/usb2/GCSSDKConnManager$OldConnCallback;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSSDKConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OldConnCallback"
.end annotation


# virtual methods
.method public abstract getSSidFailed()V
.end method

.method public abstract getSSidSuccess()V
.end method

.method public abstract needPermission()V
.end method

.method public abstract updateConnectUI()V
.end method

.method public abstract updateDisconnectUI()V
.end method
