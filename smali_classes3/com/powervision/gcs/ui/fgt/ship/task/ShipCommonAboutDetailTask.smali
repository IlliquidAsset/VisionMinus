.class public Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;,
        Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;
    .locals 1

    .line 17
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;-><init>(Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;)V

    return-object v0
.end method
