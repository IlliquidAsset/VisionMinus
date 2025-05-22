.class public interface abstract Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommunicateListener"
.end annotation


# virtual methods
.method public abstract destory()V
.end method

.method public abstract onMsg(Ljava/lang/String;)V
.end method

.method public abstract setNeedDestory()V
.end method

.method public abstract setNeedRestart()V
.end method

.method public abstract work()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
