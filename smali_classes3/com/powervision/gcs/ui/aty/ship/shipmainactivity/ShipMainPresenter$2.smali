.class Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$2;
.super Ljava/lang/Object;
.source "ShipMainPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/camera/w4/IChannelListener;


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

    .line 342
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelEvent(I)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;->access$100(Lcom/powervision/gcs/ui/aty/ship/shipmainactivity/ShipMainPresenter;I)V

    return-void
.end method
