.class public interface abstract Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onMsgListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onMsg(Ljava/lang/String;)V
.end method

.method public abstract onReceive([BI)V
.end method
