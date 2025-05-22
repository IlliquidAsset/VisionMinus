.class public Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask;
.super Ljava/lang/Object;
.source "ShipMapTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;,
        Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;
    .locals 1

    .line 13
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;)V

    return-object v0
.end method
