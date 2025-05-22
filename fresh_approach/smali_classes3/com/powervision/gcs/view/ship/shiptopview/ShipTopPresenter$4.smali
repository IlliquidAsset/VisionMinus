.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;
.super Ljava/lang/Object;
.source "ShipTopPresenter.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->initAttitudeAndGroundSpeedChangedListener(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/natives/param/Attitude;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/natives/param/Attitude;)V
    .locals 2

    const-string v0, "lzqTop"

    const-string v1, "initAttitudeAndGroundSpeedChangedListener onChanged: "

    .line 325
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$400(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/natives/param/Attitude;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$402(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;Lcom/powervision/natives/param/Attitude;)Lcom/powervision/natives/param/Attitude;

    .line 328
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateAttitudeAndGroundSpeedChanged(Lcom/powervision/natives/param/Attitude;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 322
    check-cast p1, Lcom/powervision/natives/param/Attitude;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$4;->onChanged(Lcom/powervision/natives/param/Attitude;)V

    return-void
.end method
