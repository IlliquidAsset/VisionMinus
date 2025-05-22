.class Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;
.super Ljava/lang/Object;
.source "AutoPollRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/widgets/AutoPollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoPollTask"
.end annotation


# instance fields
.field private mRecycleView:Lcom/lewis/edit/widgets/AutoPollRecyclerView;


# direct methods
.method private constructor <init>(Lcom/lewis/edit/widgets/AutoPollRecyclerView;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/widgets/AutoPollRecyclerView;

    iput-object p1, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;->mRecycleView:Lcom/lewis/edit/widgets/AutoPollRecyclerView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewis/edit/widgets/AutoPollRecyclerView;Lcom/lewis/edit/widgets/AutoPollRecyclerView$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;-><init>(Lcom/lewis/edit/widgets/AutoPollRecyclerView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;->mRecycleView:Lcom/lewis/edit/widgets/AutoPollRecyclerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;->mRecycleView:Lcom/lewis/edit/widgets/AutoPollRecyclerView;

    div-int/lit8 v0, v0, 0x4

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0, v1, v3}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 121
    iget-object v0, p0, Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;->mRecycleView:Lcom/lewis/edit/widgets/AutoPollRecyclerView;

    invoke-static {v0}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->access$100(Lcom/lewis/edit/widgets/AutoPollRecyclerView;)Lcom/lewis/edit/widgets/AutoPollRecyclerView$AutoPollTask;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewis/edit/widgets/AutoPollRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
