.class Lcom/powervision/aircraft/ui/views/CircleMenuLayout$1;
.super Ljava/lang/Object;
.source "CircleMenuLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->autoScroll(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$1;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$1;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->access$002(Lcom/powervision/aircraft/ui/views/CircleMenuLayout;D)D

    .line 310
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CircleMenuLayout$1;->this$0:Lcom/powervision/aircraft/ui/views/CircleMenuLayout;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/CircleMenuLayout;->requestLayout()V

    return-void
.end method
