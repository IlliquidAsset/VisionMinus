.class public Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask;
.super Ljava/lang/Object;
.source "CameraVideoSettingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;,
        Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;
    .locals 1

    .line 14
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;-><init>(Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;)V

    return-object v0
.end method
