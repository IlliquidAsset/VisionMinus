.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;
.super Ljava/lang/Object;
.source "ShipTopPresenter.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->initSystemStatusListener(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/natives/param/ElecgtricQuantityParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/natives/param/ElecgtricQuantityParam;)V
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bettay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p1, Lcom/powervision/natives/param/ElecgtricQuantityParam;->battery_remaining:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqTop"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$100(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/natives/param/ElecgtricQuantityParam;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/base/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$102(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;Lcom/powervision/natives/param/ElecgtricQuantityParam;)Lcom/powervision/natives/param/ElecgtricQuantityParam;

    .line 288
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;->access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter;)Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopTask$View;->updateSystemStatus(Lcom/powervision/natives/param/ElecgtricQuantityParam;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p1, Lcom/powervision/natives/param/ElecgtricQuantityParam;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopPresenter$2;->onChanged(Lcom/powervision/natives/param/ElecgtricQuantityParam;)V

    return-void
.end method
