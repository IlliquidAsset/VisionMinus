.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$2;
.super Ljava/lang/Object;
.source "ShipMapPresenter.java"

# interfaces
.implements Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;


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

    .line 40
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->onMapClick(Lcom/powervision/base/nationmap/model/NationLatLng;)V

    return-void
.end method
