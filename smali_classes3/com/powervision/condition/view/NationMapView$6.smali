.class Lcom/powervision/condition/view/NationMapView$6;
.super Ljava/lang/Object;
.source "NationMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/condition/view/NationMapView;->updateAttitude(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/condition/view/NationMapView;

.field final synthetic val$yal:F


# direct methods
.method constructor <init>(Lcom/powervision/condition/view/NationMapView;F)V
    .locals 0

    .line 1596
    iput-object p1, p0, Lcom/powervision/condition/view/NationMapView$6;->this$0:Lcom/powervision/condition/view/NationMapView;

    iput p2, p0, Lcom/powervision/condition/view/NationMapView$6;->val$yal:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1599
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$6;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$400(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/condition/widget/MovingPointOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/condition/widget/MovingPointOverlay;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$6;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$400(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/condition/widget/MovingPointOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/condition/widget/MovingPointOverlay;->setVisible(Z)V

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/powervision/condition/view/NationMapView$6;->this$0:Lcom/powervision/condition/view/NationMapView;

    invoke-static {v0}, Lcom/powervision/condition/view/NationMapView;->access$400(Lcom/powervision/condition/view/NationMapView;)Lcom/powervision/condition/widget/MovingPointOverlay;

    move-result-object v0

    iget v1, p0, Lcom/powervision/condition/view/NationMapView$6;->val$yal:F

    invoke-virtual {v0, v1}, Lcom/powervision/condition/widget/MovingPointOverlay;->setRotate(F)V

    return-void
.end method
