.class public final synthetic Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$zhV94_y_RKpArgRlbFSuB2xz9cw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$zhV94_y_RKpArgRlbFSuB2xz9cw;->f$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$zhV94_y_RKpArgRlbFSuB2xz9cw;->f$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    check-cast p1, Lcom/powervision/natives/param/HomePositionNotifyParam;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->lambda$initHomePositionListener$1$ShipMainPresenter(Lcom/powervision/natives/param/HomePositionNotifyParam;)V

    return-void
.end method
