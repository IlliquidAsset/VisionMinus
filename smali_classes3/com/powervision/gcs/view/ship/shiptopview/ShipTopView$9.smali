.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;
.super Ljava/lang/Object;
.source "ShipTopView.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSailModeChanged$0$ShipTopView$9(I)V
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v1, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$402(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)I

    goto :goto_0

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$500(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$400(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$400(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setTitle(I)V

    .line 692
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-static {v0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$502(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)I

    return-void
.end method

.method public onSailModeChanged(I)V
    .locals 2

    .line 678
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/powervision/gcs/view/ship/shiptopview/-$$Lambda$ShipTopView$9$cPxzHFUovHzDGM7KV0XDnJZx-R8;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/shiptopview/-$$Lambda$ShipTopView$9$cPxzHFUovHzDGM7KV0XDnJZx-R8;-><init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
