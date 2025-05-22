.class public interface abstract Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;
.super Ljava/lang/Object;
.source "CameraVideoSettingTask.java"

# interfaces
.implements Lcom/powervision/gcs/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract changeVideoModeNormal()V
.end method

.method public abstract getShootingMode()V
.end method

.method public abstract getVideoNormalResolution()V
.end method

.method public abstract getVideoSlowResolution()V
.end method

.method public abstract quickSetVideoModeNormal(I)V
.end method

.method public abstract quickSetVideoModeNormal(Ljava/lang/String;)V
.end method

.method public abstract quickSetVideoModeSlow(I)V
.end method

.method public abstract quickSetVideoModeSlow(Ljava/lang/String;)V
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
