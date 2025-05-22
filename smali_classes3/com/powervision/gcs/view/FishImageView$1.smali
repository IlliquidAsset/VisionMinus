.class Lcom/powervision/gcs/view/FishImageView$1;
.super Ljava/lang/Object;
.source "FishImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/FishImageView;->startAnimation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/FishImageView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/FishImageView;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/powervision/gcs/view/FishImageView$1;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 600
    iget-object p1, p0, Lcom/powervision/gcs/view/FishImageView$1;->this$0:Lcom/powervision/gcs/view/FishImageView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method
