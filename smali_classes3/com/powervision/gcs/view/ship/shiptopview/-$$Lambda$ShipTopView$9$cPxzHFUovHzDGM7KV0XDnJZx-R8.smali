.class public final synthetic Lcom/powervision/gcs/view/ship/shiptopview/-$$Lambda$ShipTopView$9$cPxzHFUovHzDGM7KV0XDnJZx-R8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/shiptopview/-$$Lambda$ShipTopView$9$cPxzHFUovHzDGM7KV0XDnJZx-R8;->f$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;

    iput p2, p0, Lcom/powervision/gcs/view/ship/shiptopview/-$$Lambda$ShipTopView$9$cPxzHFUovHzDGM7KV0XDnJZx-R8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/-$$Lambda$ShipTopView$9$cPxzHFUovHzDGM7KV0XDnJZx-R8;->f$0:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;

    iget v1, p0, Lcom/powervision/gcs/view/ship/shiptopview/-$$Lambda$ShipTopView$9$cPxzHFUovHzDGM7KV0XDnJZx-R8;->f$1:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView$9;->lambda$onSailModeChanged$0$ShipTopView$9(I)V

    return-void
.end method
