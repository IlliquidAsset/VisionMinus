.class Lme/jingbin/library/SimpleRefreshHeaderView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SimpleRefreshHeaderView.java"


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

.field final synthetic val$destHeight:I


# direct methods
.method constructor <init>(Lme/jingbin/library/SimpleRefreshHeaderView;I)V
    .locals 0

    .line 167
    iput-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView$2;->this$0:Lme/jingbin/library/SimpleRefreshHeaderView;

    iput p2, p0, Lme/jingbin/library/SimpleRefreshHeaderView$2;->val$destHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 171
    iget p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView$2;->val$destHeight:I

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView$2;->this$0:Lme/jingbin/library/SimpleRefreshHeaderView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;->setState(I)V

    :cond_0
    return-void
.end method
