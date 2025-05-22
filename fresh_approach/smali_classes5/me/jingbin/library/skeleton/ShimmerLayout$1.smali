.class Lme/jingbin/library/skeleton/ShimmerLayout$1;
.super Ljava/lang/Object;
.source "ShimmerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/skeleton/ShimmerLayout;


# direct methods
.method constructor <init>(Lme/jingbin/library/skeleton/ShimmerLayout;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lme/jingbin/library/skeleton/ShimmerLayout$1;->this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout$1;->this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-virtual {v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 141
    iget-object v0, p0, Lme/jingbin/library/skeleton/ShimmerLayout$1;->this$0:Lme/jingbin/library/skeleton/ShimmerLayout;

    invoke-virtual {v0}, Lme/jingbin/library/skeleton/ShimmerLayout;->startShimmerAnimation()V

    const/4 v0, 0x1

    return v0
.end method
