.class Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;
.super Lcom/powervision/gcs/base/BaseHandleReference;
.source "ShipTopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShipTopViewHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/gcs/base/BaseHandleReference<",
        "Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/powervision/gcs/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Landroid/os/Message;)V
    .locals 0

    .line 111
    invoke-static {p1, p2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->access$000(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 104
    check-cast p1, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$ShipTopViewHandler;->referenceHandleMessage(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;Landroid/os/Message;)V

    return-void
.end method
