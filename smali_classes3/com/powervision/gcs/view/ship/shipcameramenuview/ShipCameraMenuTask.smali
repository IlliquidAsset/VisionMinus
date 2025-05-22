.class public Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask;
.super Ljava/lang/Object;
.source "ShipCameraMenuTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;,
        Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;)Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;
    .locals 1

    .line 13
    new-instance v0, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuPresenter;-><init>(Lcom/powervision/gcs/view/ship/shipcameramenuview/ShipCameraMenuTask$View;)V

    return-object v0
.end method
