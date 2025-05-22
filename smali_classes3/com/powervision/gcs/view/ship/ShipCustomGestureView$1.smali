.class Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;
.super Ljava/lang/Object;
.source "ShipCustomGestureView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipCustomGestureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$102(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 162
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$002(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;Z)Z

    .line 163
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$102(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;F)F

    .line 155
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    .line 156
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$002(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->access$002(Lcom/powervision/gcs/view/ship/ShipCustomGestureView;Z)Z

    .line 145
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCustomGestureView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipCustomGestureView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCustomGestureView;->invalidate()V

    return-void
.end method
