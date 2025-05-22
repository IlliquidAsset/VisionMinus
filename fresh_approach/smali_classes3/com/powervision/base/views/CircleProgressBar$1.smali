.class Lcom/powervision/base/views/CircleProgressBar$1;
.super Ljava/lang/Object;
.source "CircleProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/CircleProgressBar;->startAnim(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/CircleProgressBar;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/CircleProgressBar;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/powervision/base/views/CircleProgressBar$1;->this$0:Lcom/powervision/base/views/CircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/powervision/base/views/CircleProgressBar$1;->this$0:Lcom/powervision/base/views/CircleProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/base/views/CircleProgressBar;->access$002(Lcom/powervision/base/views/CircleProgressBar;F)F

    .line 271
    iget-object p1, p0, Lcom/powervision/base/views/CircleProgressBar$1;->this$0:Lcom/powervision/base/views/CircleProgressBar;

    invoke-virtual {p1}, Lcom/powervision/base/views/CircleProgressBar;->postInvalidate()V

    return-void
.end method
