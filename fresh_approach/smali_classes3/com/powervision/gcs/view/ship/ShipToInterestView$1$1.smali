.class Lcom/powervision/gcs/view/ship/ShipToInterestView$1$1;
.super Ljava/lang/Object;
.source "ShipToInterestView.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipToInterestView$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$1;

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

    const-string p1, "ShipToInterestView"

    const-string v0, "accept: "

    .line 139
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$1$1;->this$1:Lcom/powervision/gcs/view/ship/ShipToInterestView$1;

    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView$1$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
