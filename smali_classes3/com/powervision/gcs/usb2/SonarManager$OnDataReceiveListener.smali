.class public interface abstract Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;
.super Ljava/lang/Object;
.source "SonarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/SonarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataReceiveListener"
.end annotation


# virtual methods
.method public abstract onReceiveContrlData([B)V
.end method

.method public abstract onReceiveImageData([B)V
.end method
