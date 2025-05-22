.class public interface abstract Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;
.super Ljava/lang/Object;
.source "CameraImageSettingTask.java"

# interfaces
.implements Lcom/powervision/gcs/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getShootingMode()V
.end method

.method public abstract setImageSize(II)V
.end method

.method public abstract setShootingContinuous3Mode()V
.end method

.method public abstract setShootingContinuous5Mode()V
.end method

.method public abstract setShootingContinuousMode(I)V
.end method

.method public abstract setSingleShootingMode()V
.end method

.method public abstract updateWorkMode(Lcom/powervision/localhttp/entity/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4AllParams;",
            ">;)V"
        }
    .end annotation
.end method
