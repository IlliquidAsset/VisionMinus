.class public Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask;
.super Ljava/lang/Object;
.source "CameraBasicSettingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;,
        Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;
    .locals 1

    .line 21
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraBasicSettingPresenter;-><init>(Lcom/powervision/gcs/ui/fgt/ship/task/CameraBasicSettingTask$View;)V

    return-object v0
.end method
