.class Lme/jingbin/library/SimpleRefreshHeaderView$1;
.super Ljava/lang/Object;
.source "SimpleRefreshHeaderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/SimpleRefreshHeaderView;->smoothScrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/SimpleRefreshHeaderView;


# direct methods
.method constructor <init>(Lme/jingbin/library/SimpleRefreshHeaderView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView$1;->this$0:Lme/jingbin/library/SimpleRefreshHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView$1;->this$0:Lme/jingbin/library/SimpleRefreshHeaderView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->access$000(Lme/jingbin/library/SimpleRefreshHeaderView;I)V

    return-void
.end method
