.class public final synthetic Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$oso5NyE3S2nUs_sboHt3kAp35xE;
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

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$oso5NyE3S2nUs_sboHt3kAp35xE;->f$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/-$$Lambda$ShipMainPresenter$oso5NyE3S2nUs_sboHt3kAp35xE;->f$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    check-cast p1, Lcom/powervision/natives/param/Attitude;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->lambda$initAttitudeAndGroundSpeedChangedModel$2$ShipMainPresenter(Lcom/powervision/natives/param/Attitude;)V

    return-void
.end method
