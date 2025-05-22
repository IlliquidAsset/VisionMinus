.class public Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask;
.super Ljava/lang/Object;
.source "ShipTopTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;,
        Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;
    .locals 1

    .line 18
    new-instance v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;)V

    return-object v0
.end method
