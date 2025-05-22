.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$3;
.super Ljava/lang/Object;
.source "ShipTopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->showRed()V
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

    .line 227
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topUpgradeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$3;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->topUpgradeIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
