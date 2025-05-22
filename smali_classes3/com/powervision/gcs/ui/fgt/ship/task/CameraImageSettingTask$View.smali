.class public interface abstract Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;
.super Ljava/lang/Object;
.source "CameraImageSettingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract handleMultiPictureRatio(Lcom/powervision/localhttp/entity/PVW4MultiPictureRatio;)V
.end method

.method public abstract handleMultiPictureSpeed(Lcom/powervision/localhttp/entity/PVW4MultiPictureSpeed;)V
.end method

.method public abstract handleMultiPictureSpeed3P()V
.end method

.method public abstract handleMultiPictureSpeed5P()V
.end method

.method public abstract handleMultiSpeed(I)V
.end method

.method public abstract handlePictureRatio(I)V
.end method

.method public abstract handleShootingMode(Lcom/powervision/localhttp/entity/PVW4GetWorkMode;)V
.end method

.method public abstract handleSinglePictureMode()V
.end method

.method public abstract handleSinglePictureRatio(Lcom/powervision/localhttp/entity/PVW4SinglePictureRatio;)V
.end method
