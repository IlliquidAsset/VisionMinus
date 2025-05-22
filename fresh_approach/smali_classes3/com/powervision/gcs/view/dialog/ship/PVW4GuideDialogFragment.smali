.class public Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PVW4GuideDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$OnClickListener;
    }
.end annotation


# static fields
.field public static final PARAM_COMMON:I = 0x1

.field public static final PARAM_MAP:I = 0x2

.field public static final PARAM_SEEKER:I = 0x3

.field public static final PARAM_TYPE:Ljava/lang/String; = "param_type"

.field private static final TAG:Ljava/lang/String; = "FirmwareUpdateDialogFra"


# instance fields
.field private mBottomDistance:Landroid/widget/TextView;

.field private mBottomSpeed:Landroid/widget/TextView;

.field private mCurrentPage:I

.field private mCurrentType:I

.field private mGuideBottom:Landroid/widget/ImageView;

.field private mGuideBottomView:Landroid/widget/RelativeLayout;

.field private mGuideColor:Landroid/widget/ImageView;

.field private mGuideFish:Landroid/widget/ImageView;

.field private mGuideFishView:Landroid/widget/RelativeLayout;

.field private mGuideLed:Landroid/widget/ImageView;

.field private mGuideLeft:Landroid/widget/ImageView;

.field private mGuideLeftView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideMap:Landroid/widget/ImageView;

.field private mGuideMapView:Landroid/widget/RelativeLayout;

.field private mGuideMore:Landroid/widget/ImageView;

.field private mGuideMoreView:Landroid/widget/RelativeLayout;

.field private mGuideRight:Landroid/widget/ImageView;

.field private mGuideRightView:Landroid/widget/RelativeLayout;

.field private mGuideRuler:Landroid/widget/ImageView;

.field private mGuideTop:Landroid/widget/ImageView;

.field private mGuideTopView:Landroid/widget/RelativeLayout;

.field private mLedHint:Landroid/widget/TextView;

.field private mLeftAi:Landroid/widget/TextView;

.field private mLeftLock:Landroid/widget/TextView;

.field private mLeftMiniMap:Landroid/widget/TextView;

.field private mLeftMiniSeeker:Landroid/widget/TextView;

.field private mLeftNest:Landroid/widget/TextView;

.field private mLeftOneKeyBack:Landroid/widget/TextView;

.field private mListener:Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$OnClickListener;

.field private mMoreDirection:Landroid/widget/TextView;

.field private mMoreDraw:Landroid/widget/TextView;

.field private mMoreInterest:Landroid/widget/TextView;

.field private mMoreLayer:Landroid/widget/TextView;

.field private mMoreList:Landroid/widget/TextView;

.field private mMoreLocation:Landroid/widget/TextView;

.field private mRightSet:Landroid/widget/TextView;

.field private mRightSwitch:Landroid/widget/TextView;

.field private mRightTake:Landroid/widget/TextView;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTopBoatPower:Landroid/widget/TextView;

.field private mTopRcPower:Landroid/widget/TextView;

.field private mTopSatellite:Landroid/widget/TextView;

.field private mTopSeekerPower:Landroid/widget/TextView;

.field private mTopSet:Landroid/widget/TextView;

.field private mTopSignal:Landroid/widget/TextView;

.field private mTvSure:Landroid/widget/TextView;

.field private mTvSureSpeed:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 162
    iput v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentPage:I

    return-void
.end method

.method private initCommonView()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideLeftView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/dialog/ship/-$$Lambda$PVW4GuideDialogFragment$X_wJYNejUOLUHhInRXHUumomUQg;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/dialog/ship/-$$Lambda$PVW4GuideDialogFragment$X_wJYNejUOLUHhInRXHUumomUQg;-><init>(Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTvSureSpeed:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$1;-><init>(Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 547
    iget v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initSeekerView()V

    goto :goto_0

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initMapView()V

    goto :goto_0

    .line 549
    :cond_2
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initCommonView()V

    :goto_0
    return-void
.end method

.method private initLeftView()V
    .locals 5

    .line 455
    iget v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mScreenWidth:I

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 458
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideLeft:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v0, v0

    const/high16 v2, 0x42f80000    # 124.0f

    mul-float v2, v2, v0

    const v3, 0x43a88000    # 337.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 459
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 460
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideLeft:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/16 v1, 0x151

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 471
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftMiniSeeker:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42340000    # 45.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 472
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 473
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftMiniSeeker:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftOneKeyBack:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42d20000    # 105.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 478
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 479
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftOneKeyBack:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftAi:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x432f0000    # 175.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 483
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 484
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftAi:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftNest:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x43720000    # 242.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 488
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 489
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftNest:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftLock:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x439c0000    # 312.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 493
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 494
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftLock:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initListener()V
    .locals 0

    return-void
.end method

.method private initMapView()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMoreView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/dialog/ship/-$$Lambda$PVW4GuideDialogFragment$X7Gh2stw6CpE8bNtyqPqgSZlTZk;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/dialog/ship/-$$Lambda$PVW4GuideDialogFragment$X7Gh2stw6CpE8bNtyqPqgSZlTZk;-><init>(Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMoreView()V
    .locals 6

    .line 501
    iget v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mScreenWidth:I

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x2f6

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    mul-float v1, v1, v0

    const/16 v3, 0x2a3

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 504
    iget-object v4, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMore:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 505
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 506
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMore:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v0, v0, v2

    div-float/2addr v0, v3

    .line 513
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreDraw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x43640000    # 228.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    .line 514
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x44188000    # 610.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v4, 0x41200000    # 10.0f

    .line 515
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 516
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreDraw:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreDirection:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x439d8000    # 315.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 519
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x43f20000    # 484.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 520
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 521
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreDirection:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreLayer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x43cc8000    # 409.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 524
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x43ba8000    # 373.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 525
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 526
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreLayer:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreLocation:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x43f80000    # 496.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 529
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x43860000    # 268.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 530
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 531
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreLocation:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreInterest:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x44130000    # 588.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 535
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x43020000    # 130.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 536
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 537
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreInterest:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreList:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x44298000    # 678.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 540
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 541
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 542
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreList:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initRightView()V
    .locals 5

    .line 435
    iget v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mScreenWidth:I

    const/high16 v1, 0x432e0000    # 174.0f

    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x70

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    mul-float v1, v1, v0

    const/16 v3, 0xc9

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 438
    iget-object v4, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideRight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 439
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 440
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v0, v0, v2

    div-float/2addr v0, v3

    .line 445
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mRightTake:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x41a00000    # 20.0f

    .line 446
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->spToPx(F)I

    move-result v3

    sub-int v3, v0, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 447
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->spToPx(F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 448
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mRightTake:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initSeekerView()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideFishView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/dialog/ship/-$$Lambda$PVW4GuideDialogFragment$kKCTcaxuKhEWH8nbBcUmwx1YIWE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/dialog/ship/-$$Lambda$PVW4GuideDialogFragment$kKCTcaxuKhEWH8nbBcUmwx1YIWE;-><init>(Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTopView()V
    .locals 5

    .line 389
    iget v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mScreenWidth:I

    const/high16 v1, 0x43220000    # 162.0f

    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x155

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    mul-float v1, v1, v0

    const/16 v3, 0xd6

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 392
    iget-object v4, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideTop:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 393
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    mul-float v0, v0, v2

    div-float/2addr v0, v3

    .line 400
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSatellite:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x424c0000    # 51.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    .line 401
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x43760000    # 246.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 402
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 403
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSatellite:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSignal:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42a60000    # 83.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 406
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x43440000    # 196.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 407
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 408
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSignal:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSeekerPower:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42f20000    # 121.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 411
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x43170000    # 151.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 412
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 413
    iget-object v4, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSeekerPower:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopRcPower:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 416
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x42c20000    # 97.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 417
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 418
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopRcPower:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopBoatPower:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x433b0000    # 187.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 421
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x42400000    # 48.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 422
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 423
    iget-object v2, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopBoatPower:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSet:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x435b0000    # 219.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 426
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v2, 0x41600000    # 14.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 427
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 428
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSet:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 340
    sget v0, Lcom/powervision/gcs/R$id;->guide_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideLeft:Landroid/widget/ImageView;

    .line 341
    sget v0, Lcom/powervision/gcs/R$id;->guide_led:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideLed:Landroid/widget/ImageView;

    .line 342
    sget v0, Lcom/powervision/gcs/R$id;->led_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLedHint:Landroid/widget/TextView;

    .line 343
    sget v0, Lcom/powervision/gcs/R$id;->left_mini_map:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftMiniMap:Landroid/widget/TextView;

    .line 344
    sget v0, Lcom/powervision/gcs/R$id;->left_mini_seeker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftMiniSeeker:Landroid/widget/TextView;

    .line 345
    sget v0, Lcom/powervision/gcs/R$id;->left_one_key_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftOneKeyBack:Landroid/widget/TextView;

    .line 346
    sget v0, Lcom/powervision/gcs/R$id;->left_ai:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftAi:Landroid/widget/TextView;

    .line 347
    sget v0, Lcom/powervision/gcs/R$id;->left_nest:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftNest:Landroid/widget/TextView;

    .line 348
    sget v0, Lcom/powervision/gcs/R$id;->left_lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mLeftLock:Landroid/widget/TextView;

    .line 349
    sget v0, Lcom/powervision/gcs/R$id;->guide_left_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideLeftView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 350
    sget v0, Lcom/powervision/gcs/R$id;->guide_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideTop:Landroid/widget/ImageView;

    .line 351
    sget v0, Lcom/powervision/gcs/R$id;->top_satellite:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSatellite:Landroid/widget/TextView;

    .line 352
    sget v0, Lcom/powervision/gcs/R$id;->top_signal:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSignal:Landroid/widget/TextView;

    .line 353
    sget v0, Lcom/powervision/gcs/R$id;->top_seeker_power:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSeekerPower:Landroid/widget/TextView;

    .line 354
    sget v0, Lcom/powervision/gcs/R$id;->top_rc_power:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopRcPower:Landroid/widget/TextView;

    .line 355
    sget v0, Lcom/powervision/gcs/R$id;->top_boat_power:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopBoatPower:Landroid/widget/TextView;

    .line 356
    sget v0, Lcom/powervision/gcs/R$id;->top_set:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTopSet:Landroid/widget/TextView;

    .line 357
    sget v0, Lcom/powervision/gcs/R$id;->guide_top_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideTopView:Landroid/widget/RelativeLayout;

    .line 358
    sget v0, Lcom/powervision/gcs/R$id;->guide_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideRight:Landroid/widget/ImageView;

    .line 359
    sget v0, Lcom/powervision/gcs/R$id;->right_take:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mRightTake:Landroid/widget/TextView;

    .line 360
    sget v0, Lcom/powervision/gcs/R$id;->right_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mRightSwitch:Landroid/widget/TextView;

    .line 361
    sget v0, Lcom/powervision/gcs/R$id;->right_set:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mRightSet:Landroid/widget/TextView;

    .line 362
    sget v0, Lcom/powervision/gcs/R$id;->guide_right_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideRightView:Landroid/widget/RelativeLayout;

    .line 363
    sget v0, Lcom/powervision/gcs/R$id;->guide_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideBottom:Landroid/widget/ImageView;

    .line 364
    sget v0, Lcom/powervision/gcs/R$id;->bottom_distance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mBottomDistance:Landroid/widget/TextView;

    .line 365
    sget v0, Lcom/powervision/gcs/R$id;->bottom_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mBottomSpeed:Landroid/widget/TextView;

    .line 366
    sget v0, Lcom/powervision/gcs/R$id;->tv_sure_speed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTvSureSpeed:Landroid/widget/TextView;

    .line 367
    sget v0, Lcom/powervision/gcs/R$id;->guide_bottom_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideBottomView:Landroid/widget/RelativeLayout;

    .line 368
    sget v0, Lcom/powervision/gcs/R$id;->guide_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMore:Landroid/widget/ImageView;

    .line 369
    sget v0, Lcom/powervision/gcs/R$id;->more_draw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreDraw:Landroid/widget/TextView;

    .line 370
    sget v0, Lcom/powervision/gcs/R$id;->more_direction:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreDirection:Landroid/widget/TextView;

    .line 371
    sget v0, Lcom/powervision/gcs/R$id;->more_layer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreLayer:Landroid/widget/TextView;

    .line 372
    sget v0, Lcom/powervision/gcs/R$id;->more_location:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreLocation:Landroid/widget/TextView;

    .line 373
    sget v0, Lcom/powervision/gcs/R$id;->more_interest:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreInterest:Landroid/widget/TextView;

    .line 374
    sget v0, Lcom/powervision/gcs/R$id;->more_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mMoreList:Landroid/widget/TextView;

    .line 375
    sget v0, Lcom/powervision/gcs/R$id;->guide_more_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMoreView:Landroid/widget/RelativeLayout;

    .line 376
    sget v0, Lcom/powervision/gcs/R$id;->guide_map:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMap:Landroid/widget/ImageView;

    .line 377
    sget v0, Lcom/powervision/gcs/R$id;->guide_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideColor:Landroid/widget/ImageView;

    .line 378
    sget v0, Lcom/powervision/gcs/R$id;->guide_map_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMapView:Landroid/widget/RelativeLayout;

    .line 379
    sget v0, Lcom/powervision/gcs/R$id;->guide_ruler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideRuler:Landroid/widget/ImageView;

    .line 380
    sget v0, Lcom/powervision/gcs/R$id;->guide_fish:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideFish:Landroid/widget/ImageView;

    .line 381
    sget v0, Lcom/powervision/gcs/R$id;->guide_fish_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideFishView:Landroid/widget/RelativeLayout;

    .line 382
    sget v0, Lcom/powervision/gcs/R$id;->tv_sure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTvSure:Landroid/widget/TextView;

    return-void
.end method

.method public static newInstance(I)Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;
    .locals 3

    .line 170
    new-instance v0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;-><init>()V

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_type"

    .line 172
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$initCommonView$0$PVW4GuideDialogFragment(Landroid/view/View;)V
    .locals 4

    .line 567
    iget p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentPage:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 579
    iput p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentPage:I

    .line 580
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideRightView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 581
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mTvSure:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 574
    :cond_1
    iput v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentPage:I

    .line 575
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideTopView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 576
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideRightView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 569
    :cond_2
    iput v1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentPage:I

    .line 570
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideLeftView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 571
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideTopView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initMapView$1$PVW4GuideDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 608
    iget p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentPage:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    invoke-static {v1}, Lcom/powervision/gcs/utils/SpStore;->setGuidePvw4Map(Z)V

    .line 616
    invoke-virtual {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->dismiss()V

    goto :goto_0

    .line 610
    :cond_1
    iput v0, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentPage:I

    .line 611
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMoreView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 612
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mGuideMapView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initSeekerView$2$PVW4GuideDialogFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 629
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setGuidePvw4Seeker(Z)V

    .line 630
    invoke-virtual {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mCurrentType:I

    :cond_0
    const/4 p1, 0x0

    const v0, 0x103022f

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->setStyle(II)V

    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->setCancelable(Z)V

    .line 187
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    iget p1, p1, Lcom/powervision/base/base/BaseApplication;->mScreenWidth:I

    iput p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mScreenWidth:I

    .line 188
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    iget p1, p1, Lcom/powervision/base/base/BaseApplication;->mScreenHeight:I

    iput p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mScreenHeight:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 198
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_dialog_pwv4_guide:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget v0, Lcom/powervision/gcs/R$color;->transparent:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initView(Landroid/view/View;)V

    .line 201
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initData()V

    .line 202
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initListener()V

    .line 203
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initTopView()V

    .line 204
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initRightView()V

    .line 205
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initLeftView()V

    .line 206
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initMoreView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 212
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setOnClickListener(Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$OnClickListener;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->mListener:Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$OnClickListener;

    return-void
.end method
