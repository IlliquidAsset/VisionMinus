.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "ShipMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetWorkMode;",
            ">;)V"
        }
    .end annotation

    .line 496
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getWorkMode(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 498
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;->sdstate:Ljava/lang/String;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x251ff2

    if-eq v2, v3, :cond_1

    const v3, 0x26c3ed

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "SDOK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "NoSD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_1

    .line 503
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$500(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateSDCardState(Z)V

    goto :goto_1

    .line 500
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$500(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateSDCardState(Z)V

    goto :goto_1

    .line 507
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$500(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainTask$View;->updateSDCardState(Z)V

    :goto_1
    return-void
.end method

.method public setCameraTime(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 487
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->setCameraTime(ILcom/powervision/localhttp/entity/BaseModel;)V

    const-string p2, "ShipMainPresenter"

    const-string v0, "setCameraTime: "

    .line 488
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 490
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->getSDCardState()V

    :cond_0
    return-void
.end method
