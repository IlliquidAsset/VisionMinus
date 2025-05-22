.class public Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask;
.super Ljava/lang/Object;
.source "ShipMainTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;,
        Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$Presenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;
    .locals 1

    .line 14
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;)V

    return-object v0
.end method
