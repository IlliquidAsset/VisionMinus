.class Lcom/powervision/gcs/view/ship/ShipScollSelectView$1;
.super Ljava/lang/Object;
.source "ShipScollSelectView.java"

# interfaces
.implements Lcom/powervision/gcs/ui/interfaces/MessageLisetener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipScollSelectView;->setDatas([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipScollSelectView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessage()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipScollSelectView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipScollSelectView;->invalidate()V

    return-void
.end method
