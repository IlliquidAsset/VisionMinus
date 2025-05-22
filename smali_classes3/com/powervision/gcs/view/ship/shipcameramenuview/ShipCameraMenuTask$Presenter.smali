.class public interface abstract Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;
.super Ljava/lang/Object;
.source "ShipCameraMenuTask.java"

# interfaces
.implements Lcom/powervision/gcs/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getShootingMode()V
.end method

.method public abstract setRecordMode()V
.end method

.method public abstract setTakePhotoMode()V
.end method

.method public abstract startCheckHeartbeat()V
.end method

.method public abstract startRecord()V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract takePhoto()V
.end method
