.class public Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;
.super Ljava/lang/Object;
.source "ShipMapPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipMainPresenter"


# instance fields
.field private mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

.field onGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

.field private final onMapClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;

.field private final onMapTouchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

.field private final onMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

.field private final onNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onMapTouchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

    .line 40
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onMapClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;

    .line 47
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    .line 76
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    .line 108
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$5;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$5;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->mView:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    return-object p0
.end method


# virtual methods
.method public initMapListener(Lcom/powervision/condition/view/NationMapView;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onMapTouchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;

    invoke-virtual {p1, v0}, Lcom/powervision/condition/view/NationMapView;->setOnMapTouchListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapTouchListener;)V

    .line 27
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onMapClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;

    invoke-virtual {p1, v0}, Lcom/powervision/condition/view/NationMapView;->setOnMapClickListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMapClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onMarkerTypeClickListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;

    invoke-virtual {p1, v0}, Lcom/powervision/condition/view/NationMapView;->setOnMarkerTypeClickListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnMarkerTypeClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onNationActionListener:Lcom/powervision/base/nationmap/listener/OnNationActionListener;

    invoke-virtual {p1, v0}, Lcom/powervision/condition/view/NationMapView;->setOnNationActionListener(Lcom/powervision/base/nationmap/listener/OnNationActionListener;)V

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->onGeocodeSearchListener:Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;

    invoke-virtual {p1, v0}, Lcom/powervision/condition/view/NationMapView;->setOnGeocodeSearchListener(Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;)V

    return-void
.end method
