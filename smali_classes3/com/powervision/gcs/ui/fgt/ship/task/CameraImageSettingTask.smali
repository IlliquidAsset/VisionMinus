.class public Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask;
.super Ljava/lang/Object;
.source "CameraImageSettingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;,
        Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;
    .locals 1

    .line 18
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;-><init>(Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;)V

    return-object v0
.end method
