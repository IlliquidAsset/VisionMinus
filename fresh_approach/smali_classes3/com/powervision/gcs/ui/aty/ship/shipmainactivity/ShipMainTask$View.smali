.class public interface abstract Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;
.super Ljava/lang/Object;
.source "ShipMainTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract handleChannelEvent(I)V
.end method

.method public abstract onDolphinConnected()V
.end method

.method public abstract onDolphinDisconnected()V
.end method

.method public abstract onW4RemoteConnected()V
.end method

.method public abstract onW4RemoteDisconnect()V
.end method

.method public abstract showW4EitherCancelBack()V
.end method

.method public abstract showW4ReturnMessage()V
.end method

.method public abstract updateAttitude(Lcom/powervision/natives/param/Attitude;)V
.end method

.method public abstract updateGPSRawInt(Lcom/powervision/natives/param/GpsRawIntParam;)V
.end method

.method public abstract updateHomePosition(Lcom/powervision/natives/param/HomePositionNotifyParam;)V
.end method

.method public abstract updateLightControl(I)V
.end method

.method public abstract updateSDCardState(Z)V
.end method
