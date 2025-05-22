.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$6;
.super Ljava/lang/Object;
.source "ShipTopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->updateMt03RemoteControlBatterySurplus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

.field final synthetic val$surplus:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;I)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$6;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iput p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$6;->val$surplus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$6;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    iget v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$6;->val$surplus:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setRemoteBatteryLevel(I)V

    return-void
.end method
