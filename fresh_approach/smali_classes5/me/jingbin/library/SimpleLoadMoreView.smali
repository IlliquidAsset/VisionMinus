.class public Lme/jingbin/library/SimpleLoadMoreView;
.super Landroid/widget/LinearLayout;
.source "SimpleLoadMoreView.java"

# interfaces
.implements Lme/jingbin/library/BaseLoadMore;


# instance fields
.field private isShowLoadingMoreHeight:Z

.field private llMoreLoading:Landroid/widget/LinearLayout;

.field private tvMoreFailed:Landroid/widget/TextView;

.field private tvNoMore:Landroid/widget/TextView;

.field private viewBottom:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lme/jingbin/library/SimpleLoadMoreView;->isShowLoadingMoreHeight:Z

    .line 24
    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleLoadMoreView;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 97
    invoke-virtual {p0}, Lme/jingbin/library/SimpleLoadMoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getFailureView()Landroid/view/View;
    .locals 1

    .line 90
    iget-object v0, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvMoreFailed:Landroid/widget/TextView;

    return-object v0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lme/jingbin/library/R$layout;->simple_by_load_more_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    sget p1, Lme/jingbin/library/R$id;->view_bottom:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->viewBottom:Landroid/view/View;

    .line 30
    sget p1, Lme/jingbin/library/R$id;->ll_more_loading:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->llMoreLoading:Landroid/widget/LinearLayout;

    .line 31
    sget p1, Lme/jingbin/library/R$id;->tv_no_more:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvNoMore:Landroid/widget/TextView;

    .line 32
    sget p1, Lme/jingbin/library/R$id;->tv_more_failed:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvMoreFailed:Landroid/widget/TextView;

    .line 33
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleLoadMoreView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLoadingMoreBottomHeight(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 79
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleLoadMoreView;->dip2px(F)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->viewBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->isShowLoadingMoreHeight:Z

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lme/jingbin/library/SimpleLoadMoreView;->setVisibility(I)V

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvMoreFailed:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->llMoreLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvNoMore:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvNoMore:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->llMoreLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvMoreFailed:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->llMoreLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvNoMore:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvMoreFailed:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-virtual {p0, v1}, Lme/jingbin/library/SimpleLoadMoreView;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_3
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->llMoreLoading:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvNoMore:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->tvMoreFailed:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_0
    iget-boolean p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->isShowLoadingMoreHeight:Z

    if-eqz p1, :cond_4

    .line 66
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->viewBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 68
    :cond_4
    iget-object p1, p0, Lme/jingbin/library/SimpleLoadMoreView;->viewBottom:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
