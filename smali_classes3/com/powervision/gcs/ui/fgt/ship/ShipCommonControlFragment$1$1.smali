.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1$1;
.super Ljava/lang/Object;
.source "ShipCommonControlFragment.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->dl01BSOper(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "ShipCommonControlFr"

    const-string v0, "accept: gone"

    .line 584
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RemotePairViewHolder;)Landroidx/core/widget/ContentLoadingProgressBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 581
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$1$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
