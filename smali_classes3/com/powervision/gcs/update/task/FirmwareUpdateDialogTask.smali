.class public Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask;
.super Ljava/lang/Object;
.source "FirmwareUpdateDialogTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;,
        Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;)Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;
    .locals 1

    .line 12
    new-instance v0, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/PVW4FirmwareUpdateDialogPresenter;-><init>(Lcom/powervision/gcs/update/task/FirmwareUpdateDialogTask$View;)V

    return-object v0
.end method
