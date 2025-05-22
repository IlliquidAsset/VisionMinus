.class public Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "HandheldBasicGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/views/HandheldBasicGuideView$OnBasicGuideCompleteListener;
    }
.end annotation


# instance fields
.field private activity:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field private inflater:Landroid/view/LayoutInflater;

.field private isVertical:Z

.field private layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout3:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout4:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout5:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout6:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout7:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout8:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBasicGuideLayout9:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCurrentIndex:I

.field private mGuide2CloseBt:Landroid/widget/ImageView;

.field private mGuide2NextBt:Landroid/widget/ImageView;

.field private mGuide3CloseBt:Landroid/widget/ImageView;

.field private mGuide3NextBt:Landroid/widget/ToggleButton;

.field private mGuide4CloseBt:Landroid/widget/ImageView;

.field private mGuide5CloseBt:Landroid/widget/ImageView;

.field private mGuide6CloseBt:Landroid/widget/ImageView;

.field private mGuide8CancleBt:Landroid/widget/TextView;

.field private mGuide8DismissBt:Landroid/widget/TextView;

.field private mGuide9CancleBt:Landroid/widget/TextView;

.field private mGuide9DismissBt:Landroid/widget/TextView;

.field private mGuideCloseBt:Landroid/widget/ImageView;

.field private mGuideCompleteBt:Landroid/widget/TextView;

.field private mGuideNextBt:Landroid/widget/TextView;

.field private mLastIndex:I

.field private mOnBasicGuideCompleteListener:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView$OnBasicGuideCompleteListener;

.field private mRootLayout:Landroid/view/View;

.field private showResultPage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mLastIndex:I

    .line 30
    iput-boolean p2, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showResultPage:Z

    .line 53
    move-object p3, p1

    check-cast p3, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput-object p3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->activity:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->inflater:Landroid/view/LayoutInflater;

    .line 55
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->isVertical:Z

    .line 56
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initLayoutViews()V

    return-void
.end method

.method private exitHandheldGuide()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 175
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep9Views()V

    .line 176
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    return-void
.end method

.method private hideIndexViews()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 108
    iget v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mLastIndex:I

    return-void
.end method

.method private initLayoutViews()V
    .locals 4

    .line 61
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->isVertical:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_basic_guide_portrait_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_basic_guide_landscape_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    :goto_0
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showResultPage:Z

    .line 67
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout4:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout5:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout5:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout6:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout7:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout8:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout8:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mRootLayout:Landroid/view/View;

    sget v2, Lcom/powervision/handheld/R$id;->basic_guide_layout9:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout9:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x9

    new-array v2, v2, [Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout3:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout4:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout5:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout6:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout7:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mBasicGuideLayout8:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStepLayous()V

    .line 82
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    return-void
.end method

.method private initStep2Views()V
    .locals 1

    .line 189
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide2_target:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide2NextBt:Landroid/widget/ImageView;

    .line 190
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide2_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide2CloseBt:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide2NextBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide2CloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 193
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep3Views()V
    .locals 1

    .line 197
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide3_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide3CloseBt:Landroid/widget/ImageView;

    .line 198
    sget v0, Lcom/powervision/handheld/R$id;->toggle_button3:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide3NextBt:Landroid/widget/ToggleButton;

    .line 199
    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide3CloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    .line 201
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep4Views()V
    .locals 1

    .line 205
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide4_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide4CloseBt:Landroid/widget/ImageView;

    .line 206
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    .line 207
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep5Views()V
    .locals 1

    .line 211
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide5_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide5CloseBt:Landroid/widget/ImageView;

    .line 212
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    .line 213
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep6Views()V
    .locals 1

    .line 217
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide6_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide6CloseBt:Landroid/widget/ImageView;

    .line 218
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x5

    .line 219
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep7Views()V
    .locals 1

    .line 223
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide7_complete:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuideCompleteBt:Landroid/widget/TextView;

    .line 224
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x6

    .line 225
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep8Views()V
    .locals 1

    .line 229
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide8_dismiss:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide8DismissBt:Landroid/widget/TextView;

    .line 230
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide8_cancle:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide8CancleBt:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide8DismissBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide8CancleBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x7

    .line 233
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep9Views()V
    .locals 1

    .line 237
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide9_dismiss:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide9DismissBt:Landroid/widget/TextView;

    .line 238
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide9_cancle:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide9CancleBt:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide9DismissBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuide9CancleBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 241
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStepLayous()V
    .locals 1

    .line 180
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide_close:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuideCloseBt:Landroid/widget/ImageView;

    .line 181
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide_next:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuideNextBt:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuideCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mGuideNextBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    return-void
.end method

.method private onComplete()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mOnBasicGuideCompleteListener:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView$OnBasicGuideCompleteListener;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView$OnBasicGuideCompleteListener;->onBasicGuideComplete()V

    :cond_0
    return-void
.end method

.method private showCameraSettingView()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->activity:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->openGuideCameraSettingView(Z)V

    return-void
.end method

.method private showIndexViews()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method private showTargetIndexViews(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iput p1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mCurrentIndex:I

    .line 102
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 116
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide_next:I

    if-ne p1, v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 118
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep2Views()V

    .line 119
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    goto/16 :goto_0

    .line 120
    :cond_0
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide2_target:I

    if-ne p1, v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showCameraSettingView()V

    .line 122
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 123
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep3Views()V

    .line 124
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    goto/16 :goto_0

    .line 125
    :cond_1
    sget v0, Lcom/powervision/handheld/R$id;->toggle_button3:I

    if-ne p1, v0, :cond_2

    .line 127
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->enableGesture(I)V

    .line 128
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 129
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep4Views()V

    .line 130
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    goto/16 :goto_0

    .line 131
    :cond_2
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide7_complete:I

    if-ne p1, v0, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->onComplete()V

    goto :goto_0

    .line 133
    :cond_3
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide_close:I

    if-ne p1, v0, :cond_4

    .line 134
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 135
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep8Views()V

    .line 136
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    goto :goto_0

    .line 137
    :cond_4
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide2_close:I

    if-ne p1, v0, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->exitHandheldGuide()V

    goto :goto_0

    .line 139
    :cond_5
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide3_close:I

    if-ne p1, v0, :cond_6

    .line 140
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->exitHandheldGuide()V

    goto :goto_0

    .line 141
    :cond_6
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide4_close:I

    if-ne p1, v0, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->exitHandheldGuide()V

    goto :goto_0

    .line 143
    :cond_7
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide5_close:I

    if-ne p1, v0, :cond_8

    .line 144
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->exitHandheldGuide()V

    goto :goto_0

    .line 145
    :cond_8
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide6_close:I

    if-ne p1, v0, :cond_9

    .line 146
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->exitHandheldGuide()V

    goto :goto_0

    .line 147
    :cond_9
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide8_dismiss:I

    if-ne p1, v0, :cond_a

    .line 148
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->onComplete()V

    goto :goto_0

    .line 149
    :cond_a
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide8_cancle:I

    if-ne p1, v0, :cond_b

    .line 150
    iget p1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mLastIndex:I

    .line 151
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 152
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showTargetIndexViews(I)V

    goto :goto_0

    .line 153
    :cond_b
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide9_dismiss:I

    if-ne p1, v0, :cond_c

    .line 154
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->onComplete()V

    goto :goto_0

    .line 155
    :cond_c
    sget v0, Lcom/powervision/handheld/R$id;->basic_guide9_cancle:I

    if-ne p1, v0, :cond_d

    .line 156
    iget p1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mLastIndex:I

    .line 157
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 158
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showTargetIndexViews(I)V

    :cond_d
    :goto_0
    return-void
.end method

.method public onCloseFollowGestureCallBack()V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showResultPage:Z

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 265
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep6Views()V

    .line 266
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->isVertical:Z

    .line 89
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->removeAllViews()V

    .line 90
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initLayoutViews()V

    return-void
.end method

.method public onFollowGestureCallBack()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showResultPage:Z

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 253
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep5Views()V

    .line 254
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    return-void
.end method

.method public onPhotoGestureCallBack()V
    .locals 1

    .line 273
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->hideIndexViews()V

    .line 274
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->initStep7Views()V

    .line 275
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showIndexViews()V

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->showResultPage:Z

    return-void
.end method

.method public setOnBasicGuideCompleteListener(Lcom/powervision/handheld/ui/views/HandheldBasicGuideView$OnBasicGuideCompleteListener;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/HandheldBasicGuideView;->mOnBasicGuideCompleteListener:Lcom/powervision/handheld/ui/views/HandheldBasicGuideView$OnBasicGuideCompleteListener;

    return-void
.end method
