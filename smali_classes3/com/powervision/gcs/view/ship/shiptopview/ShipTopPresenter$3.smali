.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;
.super Ljava/lang/Object;
.source "ShipTopPresenter.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->initGpsRawIntListener(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/natives/param/GpsRawIntParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/natives/param/GpsRawIntParam;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$200(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)I

    move-result v0

    iget v1, p1, Lcom/powervision/natives/param/GpsRawIntParam;->satellites_visible:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$300(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)I

    move-result v0

    iget v1, p1, Lcom/powervision/natives/param/GpsRawIntParam;->eph:I

    if-eq v0, v1, :cond_1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    iget v1, p1, Lcom/powervision/natives/param/GpsRawIntParam;->satellites_visible:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$202(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;I)I

    .line 309
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    iget v1, p1, Lcom/powervision/natives/param/GpsRawIntParam;->eph:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$302(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;I)I

    .line 310
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateGPSRawInt(Lcom/powervision/natives/param/GpsRawIntParam;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 300
    check-cast p1, Lcom/powervision/natives/param/GpsRawIntParam;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$3;->onChanged(Lcom/powervision/natives/param/GpsRawIntParam;)V

    return-void
.end method
