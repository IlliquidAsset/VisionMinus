.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$2;
.super Ljava/lang/Object;
.source "ShipTopView.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$RedPointNotify;


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

    .line 213
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$2;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideRedPoint()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$2;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->hideRedPoint()V

    return-void
.end method

.method public showRedPoint()V
    .locals 2

    const-string v0, "lzqW4Firm"

    const-string v1, "showRed in TopView"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$2;->this$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->showRed()V

    return-void
.end method
