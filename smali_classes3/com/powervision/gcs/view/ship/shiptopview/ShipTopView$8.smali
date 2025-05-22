.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$8;
.super Ljava/lang/Object;
.source "ShipTopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->updateBodyWifiRssi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

.field final synthetic val$rssi:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$8;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iput p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$8;->val$rssi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$8;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$8;->val$rssi:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setBodyWifiLevel(I)V

    return-void
.end method
