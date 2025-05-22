.class Lme/jingbin/library/skeleton/ShimmerLayout$2;
.super Ljava/lang/Object;
.source "ShimmerLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/skeleton/ShimmerLayout;->getShimmerAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

.field final synthetic val$animationFromX:I

.field final synthetic val$shimmerBitmapWidth:I


# direct methods
.method constructor <init>(Lme/jingbin/library/skeleton/ShimmerLayout;II)V
    .locals 0

    .line 363
    iput-object p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

    iput p2, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->val$animationFromX:I

    iput p3, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->val$shimmerBitmapWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

    iget v1, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->val$animationFromX:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lme/jingbin/library/skeleton/ShimmerLayout;->access$002(Lme/jingbin/library/skeleton/ShimmerLayout;I)I

    .line 368
    iget-object p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-static {p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->access$000(Lme/jingbin/library/skeleton/ShimmerLayout;)I

    move-result p1

    iget v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->val$shimmerBitmapWidth:I

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 369
    iget-object p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout$2;->this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-virtual {p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->invalidate()V

    :cond_0
    return-void
.end method
