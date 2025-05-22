.class Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;
.super Ljava/lang/Object;
.source "ByStateViewSkeletonScreen.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;->generateShimmerContainerLayout(Landroid/view/ViewGroup;)Lme/jingbin/library/skeleton/ShimmerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;

.field final synthetic val$shimmerLayout:Lme/jingbin/library/skeleton/ShimmerLayout;


# direct methods
.method constructor <init>(Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;Lme/jingbin/library/skeleton/ShimmerLayout;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;->this$0:Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen;

    iput-object p2, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;->val$shimmerLayout:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;->val$shimmerLayout:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-virtual {p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lme/jingbin/library/skeleton/ByStateViewSkeletonScreen$1;->val$shimmerLayout:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-virtual {p1}, Lme/jingbin/library/skeleton/ShimmerLayout;->stopShimmerAnimation()V

    return-void
.end method
