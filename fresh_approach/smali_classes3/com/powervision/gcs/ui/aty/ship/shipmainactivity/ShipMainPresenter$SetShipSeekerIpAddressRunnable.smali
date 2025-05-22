.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;
.super Ljava/lang/Object;
.source "ShipMainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetShipSeekerIpAddressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;


# direct methods
.method private constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$1;)V
    .locals 0

    .line 435
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;-><init>(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$200(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetShipSeekerIpAddressRunnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqWork"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$300(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    goto :goto_0

    .line 446
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 447
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$400(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 449
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$SetShipSeekerIpAddressRunnable;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$400(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;)V

    :cond_3
    :goto_0
    return-void
.end method
