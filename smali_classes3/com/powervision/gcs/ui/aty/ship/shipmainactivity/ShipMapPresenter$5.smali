.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$5;
.super Ljava/lang/Object;
.source "ShipMapPresenter.java"

# interfaces
.implements Lcom/powervision/base/nationmap/listener/OnNationMapListener$OnGeocodeSearchListener;


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

    .line 108
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$5;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeocodeSearched()V
    .locals 0

    return-void
.end method

.method public onRegeocodeSearched(Ljava/lang/String;DD)V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$5;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->onRegeocodeSearched(Ljava/lang/String;DD)V

    return-void
.end method
