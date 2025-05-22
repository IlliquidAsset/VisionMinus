.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;
.super Ljava/lang/Object;
.source "ShipMapPresenter.java"

# interfaces
.implements Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFishBubbleClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->onFishBubbleClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    return-void
.end method

.method public onFishMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->onFishMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    return-void
.end method

.method public onInterestMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->onInterestMarkerClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    return-void
.end method

.method public onMarkerClick(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->onMarkerClick(Lcom/powervision/base/nationmap/interfaces/INationMarker;)V

    return-void
.end method
