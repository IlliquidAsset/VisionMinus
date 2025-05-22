.class Lcom/powervision/home/ui/fragment/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/HomeFragment;->startConnectAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/HomeFragment;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/HomeFragment$2;->this$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 276
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/HomeFragment$2;->this$0:Lcom/powervision/home/ui/fragment/HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/HomeFragment;->access$300(Lcom/powervision/home/ui/fragment/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
