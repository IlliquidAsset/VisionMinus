.class Lcom/lewis/edit/widgets/EditCenterSeekBarView$1;
.super Ljava/lang/Object;
.source "EditCenterSeekBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/widgets/EditCenterSeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/widgets/EditCenterSeekBarView;


# direct methods
.method constructor <init>(Lcom/lewis/edit/widgets/EditCenterSeekBarView;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView$1;->this$0:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditCenterSeekBarView$1;->this$0:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    invoke-virtual {p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->postInvalidate()V

    return-void
.end method
