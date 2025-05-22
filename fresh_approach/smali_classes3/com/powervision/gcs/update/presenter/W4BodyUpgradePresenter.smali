.class public Lcom/powervision/gcs/update/presenter/W4BodyUpgradePresenter;
.super Ljava/lang/Object;
.source "W4BodyUpgradePresenter.java"

# interfaces
.implements Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlyPresenter"


# instance fields
.field private mView:Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/update/presenter/W4BodyUpgradePresenter;->mView:Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/W4BodyUpgradePresenter;->mView:Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;->updateUpgradeUI(Z)V

    .line 30
    iget-object p1, p0, Lcom/powervision/gcs/update/presenter/W4BodyUpgradePresenter;->mView:Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/update/task/W4BodyUpgradeTask$View;->showUpgradeDialog(Z)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    return-void
.end method
