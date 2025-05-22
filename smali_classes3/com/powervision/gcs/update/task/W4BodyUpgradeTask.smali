.class public Lcom/powervision/gcs/update/task/W4BodyUpgradeTask;
.super Ljava/lang/Object;
.source "W4BodyUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;,
        Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;)Lcom/powervision/gcs/update/presenter/W4BodyUpgradePresenter;
    .locals 1

    .line 12
    new-instance v0, Lcom/powervision/gcs/update/presenter/W4BodyUpgradePresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/update/presenter/W4BodyUpgradePresenter;-><init>(Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;)V

    return-object v0
.end method
