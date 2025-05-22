.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;
.super Ljava/lang/Object;
.source "ShipMapPresenter.java"

# interfaces
.implements Lcom/powervision/base/nationmap/listener/OnNationActionListener;


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

    .line 76
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRender()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->clearRender()V

    return-void
.end method

.method public deleteAirlinePointAction(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->deleteAirlinePointAction(I)V

    return-void
.end method

.method public deleteScanPointAction(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->deleteScanPointAction(I)V

    return-void
.end method

.method public lessThan5m()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->lessThan5m()V

    return-void
.end method

.method public moreThan1000m()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->moreThan1000m()V

    return-void
.end method

.method public moreThan255Point()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;->access$000(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMapTask$View;->moreThan255Point()V

    return-void
.end method
