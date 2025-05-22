.class public Lme/jingbin/library/SimpleRefreshHeaderView;
.super Landroid/widget/LinearLayout;
.source "SimpleRefreshHeaderView.java"

# interfaces
.implements Lme/jingbin/library/BaseRefreshHeader;


# static fields
.field private static final ROTATE_ANIM_DURATION:I = 0xb4


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mIvArrow:Landroid/widget/ImageView;

.field private mMeasuredHeight:I

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRotateDownAnim:Landroid/view/animation/Animation;

.field private mRotateUpAnim:Landroid/view/animation/Animation;

.field private mState:I

.field private tvRefreshTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    .line 39
    invoke-direct {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lme/jingbin/library/SimpleRefreshHeaderView;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->setVisibleHeight(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 12

    .line 43
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lme/jingbin/library/R$layout;->simple_by_refresh_view:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mContainer:Landroid/widget/LinearLayout;

    .line 45
    invoke-virtual {p0, p1, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x50

    .line 46
    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->setGravity(I)V

    .line 48
    sget p1, Lme/jingbin/library/R$id;->iv_arrow:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    .line 49
    sget p1, Lme/jingbin/library/R$id;->pb_progress:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mProgress:Landroid/widget/ProgressBar;

    .line 50
    sget p1, Lme/jingbin/library/R$id;->tv_refresh_tip:I

    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->tvRefreshTip:Landroid/widget/TextView;

    const/4 p1, -0x2

    .line 52
    invoke-virtual {p0, v1, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->measure(II)V

    .line 53
    invoke-virtual {p0}, Lme/jingbin/library/SimpleRefreshHeaderView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mMeasuredHeight:I

    .line 55
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xb4

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 58
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 60
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVisibleHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 183
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 185
    iget-object p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 159
    invoke-virtual {p0}, Lme/jingbin/library/SimpleRefreshHeaderView;->getVisibleHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 161
    new-instance v1, Lme/jingbin/library/SimpleRefreshHeaderView$1;

    invoke-direct {v1, p0}, Lme/jingbin/library/SimpleRefreshHeaderView$1;-><init>(Lme/jingbin/library/SimpleRefreshHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    new-instance v1, Lme/jingbin/library/SimpleRefreshHeaderView$2;

    invoke-direct {v1, p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView$2;-><init>(Lme/jingbin/library/SimpleRefreshHeaderView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 195
    iget v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    return v0
.end method

.method public getVisibleHeight()I
    .locals 1

    .line 190
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public onMove(F)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lme/jingbin/library/SimpleRefreshHeaderView;->getVisibleHeight()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    float-to-int p1, p1

    .line 71
    invoke-virtual {p0}, Lme/jingbin/library/SimpleRefreshHeaderView;->getVisibleHeight()I

    move-result v0

    add-int/2addr p1, v0

    .line 72
    invoke-direct {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->setVisibleHeight(I)V

    .line 73
    iget p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lme/jingbin/library/SimpleRefreshHeaderView;->getVisibleHeight()I

    move-result p1

    iget v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mMeasuredHeight:I

    if-le p1, v1, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;->setState(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lme/jingbin/library/SimpleRefreshHeaderView;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshComplete()V
    .locals 1

    const/4 v0, 0x3

    .line 153
    invoke-virtual {p0, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;->setState(I)V

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;->setState(I)V

    .line 155
    invoke-direct {p0, v0}, Lme/jingbin/library/SimpleRefreshHeaderView;->smoothScrollTo(I)V

    return-void
.end method

.method public releaseAction()Z
    .locals 4

    .line 137
    invoke-virtual {p0}, Lme/jingbin/library/SimpleRefreshHeaderView;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mMeasuredHeight:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    if-ge v0, v3, :cond_0

    .line 138
    invoke-virtual {p0, v3}, Lme/jingbin/library/SimpleRefreshHeaderView;->setState(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    iget v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    if-ne v1, v3, :cond_1

    .line 144
    iget v2, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mMeasuredHeight:I

    .line 146
    :cond_1
    invoke-direct {p0, v2}, Lme/jingbin/library/SimpleRefreshHeaderView;->smoothScrollTo(I)V

    return v0
.end method

.method public setState(I)V
    .locals 5

    .line 85
    iget v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->tvRefreshTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-ne p1, v2, :cond_1

    .line 92
    iget-object v4, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 93
    iget-object v4, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mMeasuredHeight:I

    invoke-direct {p0, v1}, Lme/jingbin/library/SimpleRefreshHeaderView;->smoothScrollTo(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 97
    iget-object v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->tvRefreshTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v4, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 125
    :cond_3
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->tvRefreshTip:Landroid/widget/TextView;

    sget v1, Lme/jingbin/library/R$string;->by_refresh_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 122
    :cond_4
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->tvRefreshTip:Landroid/widget/TextView;

    sget v1, Lme/jingbin/library/R$string;->by_refreshing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 117
    :cond_5
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 118
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->tvRefreshTip:Landroid/widget/TextView;

    sget v1, Lme/jingbin/library/R$string;->by_header_hint_release:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 108
    :cond_6
    iget v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    if-ne v0, v1, :cond_7

    .line 109
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    :cond_7
    iget v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    if-ne v0, v2, :cond_8

    .line 112
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    :cond_8
    iget-object v0, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->tvRefreshTip:Landroid/widget/TextView;

    sget v1, Lme/jingbin/library/R$string;->by_header_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :goto_1
    iput p1, p0, Lme/jingbin/library/SimpleRefreshHeaderView;->mState:I

    return-void
.end method
