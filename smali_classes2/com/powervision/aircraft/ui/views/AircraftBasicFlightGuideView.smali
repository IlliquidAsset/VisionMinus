.class public Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;
.super Landroid/widget/RelativeLayout;
.source "AircraftBasicFlightGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$OnGuideCompleteListener;,
        Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;
    }
.end annotation


# instance fields
.field private activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private context:Landroid/content/Context;

.field private layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mConplete12:Landroid/widget/TextView;

.field private mCurrentIndex:I

.field private mGuide10LeftArrow:Landroid/widget/ImageView;

.field private mGuide11LeftArrow:Landroid/widget/ImageView;

.field private mGuide13Cancel:Landroid/widget/TextView;

.field private mGuide13Dismiss:Landroid/widget/TextView;

.field private mGuide14Cancel:Landroid/widget/TextView;

.field private mGuide14Dismiss:Landroid/widget/TextView;

.field private mGuide3LeftArrow:Landroid/widget/ImageView;

.field private mGuide3RightArrow:Landroid/widget/ImageView;

.field private mGuide4LeftArrow:Landroid/widget/ImageView;

.field private mGuide5RightArrow:Landroid/widget/ImageView;

.field private mGuide6RightArrow:Landroid/widget/ImageView;

.field private mGuide7RightArrow:Landroid/widget/ImageView;

.field private mGuide8RightArrow:Landroid/widget/ImageView;

.field private mGuide9LeftArrow:Landroid/widget/ImageView;

.field private mGuideBg10:Landroid/widget/ImageView;

.field private mGuideBg11:Landroid/widget/ImageView;

.field private mGuideBg3:Landroid/widget/ImageView;

.field private mGuideBg4:Landroid/widget/ImageView;

.field private mGuideBg5:Landroid/widget/ImageView;

.field private mGuideBg6:Landroid/widget/ImageView;

.field private mGuideBg7:Landroid/widget/ImageView;

.field private mGuideBg8:Landroid/widget/ImageView;

.field private mGuideBg9:Landroid/widget/ImageView;

.field private mGuideClose:Landroid/widget/ImageView;

.field private mGuideClose10:Landroid/widget/ImageView;

.field private mGuideClose11:Landroid/widget/ImageView;

.field private mGuideClose2:Landroid/widget/ImageView;

.field private mGuideClose3:Landroid/widget/ImageView;

.field private mGuideClose4:Landroid/widget/ImageView;

.field private mGuideClose5:Landroid/widget/ImageView;

.field private mGuideClose6:Landroid/widget/ImageView;

.field private mGuideClose7:Landroid/widget/ImageView;

.field private mGuideClose8:Landroid/widget/ImageView;

.field private mGuideClose9:Landroid/widget/ImageView;

.field private mGuideLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout10:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout11:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout12:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout13:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout14:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout3:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout4:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout5:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout6:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout7:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout8:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGuideLayout9:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

.field private mLastIndex:I

.field private mNextStep:Landroid/widget/TextView;

.field private mNextStep2:Landroid/widget/TextView;

.field private onGuideDismissListener:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$OnGuideCompleteListener;

.field private rootLayout:Landroid/view/View;

.field private updateRemoteControlerResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 34
    iput p2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mLastIndex:I

    .line 515
    new-instance p2, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;-><init>(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;)V

    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    .line 67
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->context:Landroid/content/Context;

    .line 68
    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->activity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 69
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;Landroid/os/Message;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private doComplete()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg3:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 573
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg4:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 576
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg5:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 579
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg6:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 582
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg7:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 585
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg8:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 588
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 590
    :cond_5
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg9:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 591
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 593
    :cond_6
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg10:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 594
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 596
    :cond_7
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg11:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 597
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 599
    :cond_8
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onGuideDismissListener:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$OnGuideCompleteListener;

    if-eqz v0, :cond_9

    .line 600
    invoke-interface {v0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$OnGuideCompleteListener;->onGuideConplete()V

    :cond_9
    return-void
.end method

.method private exitFlightGuide()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 170
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep14Views()V

    .line 171
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 531
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 534
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep4Views()V

    .line 535
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 538
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep5Views()V

    .line 539
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 541
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 542
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep6Views()V

    .line 543
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 545
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 546
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep7Views()V

    .line 547
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 550
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep8Views()V

    .line 551
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 553
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 554
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep9Views()V

    .line 555
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    .line 557
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 558
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep10Views()V

    .line 559
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    :cond_6
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 561
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 562
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep11Views()V

    .line 563
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    :cond_7
    const/16 v0, 0xb

    if-ne p1, v0, :cond_8

    .line 565
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 566
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep12Views()V

    .line 567
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    :cond_8
    :goto_0
    return-void
.end method

.method private hideIndexViews()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 110
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mLastIndex:I

    return-void
.end method

.method private initStep10Views()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide10_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose10:Landroid/widget/ImageView;

    .line 257
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide10_left_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide10LeftArrow:Landroid/widget/ImageView;

    .line 258
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose10:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x9

    .line 259
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 260
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide10_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg10:Landroid/widget/ImageView;

    .line 261
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep11Views()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide11_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose11:Landroid/widget/ImageView;

    .line 266
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide11_left_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide11LeftArrow:Landroid/widget/ImageView;

    .line 267
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose11:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xa

    .line 268
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 269
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide11_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg11:Landroid/widget/ImageView;

    .line 270
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep12Views()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide12_complete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mConplete12:Landroid/widget/TextView;

    .line 276
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xb

    .line 277
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->updateRemoteControlerResult:Z

    return-void
.end method

.method private initStep13Views()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide13_cancle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide13Cancel:Landroid/widget/TextView;

    .line 283
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide13_dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide13Dismiss:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide13Cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide13Dismiss:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xc

    .line 286
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep14Views()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide14_cancle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide14Cancel:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide14_dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide14Dismiss:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide14Cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide14Dismiss:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xd

    .line 294
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep2Views()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide2_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose2:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide2_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mNextStep2:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mNextStep2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 187
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initStep3Views()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide3_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose3:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide3_left_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3LeftArrow:Landroid/widget/ImageView;

    .line 193
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide3_right_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3RightArrow:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose3:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    .line 195
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->updateRemoteControlerResult:Z

    .line 197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide3_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg3:Landroid/widget/ImageView;

    .line 198
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_unlock:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep4Views()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide4_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose4:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide4_left_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide4LeftArrow:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose4:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    .line 205
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 206
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide4_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg4:Landroid/widget/ImageView;

    .line 207
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep5Views()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide5_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose5:Landroid/widget/ImageView;

    .line 212
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide5_right_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide5RightArrow:Landroid/widget/ImageView;

    .line 213
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose5:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    .line 214
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 215
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide5_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg5:Landroid/widget/ImageView;

    .line 216
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep6Views()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide6_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose6:Landroid/widget/ImageView;

    .line 221
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide6_right_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide6RightArrow:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose6:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x5

    .line 223
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 224
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide6_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg6:Landroid/widget/ImageView;

    .line 225
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep7Views()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide7_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose7:Landroid/widget/ImageView;

    .line 230
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide7_right_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide7RightArrow:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose7:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x6

    .line 232
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 233
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide7_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg7:Landroid/widget/ImageView;

    .line 234
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep8Views()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide8_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose8:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide8_right_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide8RightArrow:Landroid/widget/ImageView;

    .line 240
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose8:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x7

    .line 241
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 242
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide8_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg8:Landroid/widget/ImageView;

    .line 243
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStep9Views()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide9_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose9:Landroid/widget/ImageView;

    .line 248
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide9_left_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide9LeftArrow:Landroid/widget/ImageView;

    .line 249
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose9:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 250
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 251
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide9_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg9:Landroid/widget/ImageView;

    .line 252
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_remote_left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideBg9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private initStepViews()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->fllight_guide_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mNextStep:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    return-void
.end method

.method private initView()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_basic_flight_guide_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    .line 74
    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 76
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout4:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout5:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout5:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout6:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout6:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout7:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout7:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout8:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout8:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout9:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout9:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout10:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout10:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 84
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout11:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout11:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout12:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout12:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide_layout13:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout13:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->rootLayout:Landroid/view/View;

    sget v1, Lcom/powervision/aircraft/R$id;->flight_guide14_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout14:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0xe

    new-array v1, v1, [Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 88
    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout2:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout3:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout4:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout5:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout6:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout7:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout8:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout9:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout10:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout11:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout12:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuideLayout13:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 91
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStepViews()V

    .line 92
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    return-void
.end method

.method private onLeftRockerDown(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 410
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide11LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/16 v0, 0xb

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 413
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide11LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide11LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private onLeftRockerLeft(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 386
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide9LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_l:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/16 v0, 0x9

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 389
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide9LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_l:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide9LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_l:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private onLeftRockerRight(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 398
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide10LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_r:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/16 v0, 0xa

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 401
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide10LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_r:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide10LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_r:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private onLeftRockerUp(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 326
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide4LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_u:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/4 v0, 0x4

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 329
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide4LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_u:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide4LeftArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_u:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private onRemoteControlerUnLock()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3LeftArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_r_d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3RightArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_l_d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onRemoteControlerUnLockNormal(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3LeftArrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_r_d:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 311
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3RightArrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_l_d:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onRemoteControlerValueError(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3LeftArrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_r_d:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 319
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide3RightArrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_l_d:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onRightRockerDown(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 350
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide6RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/4 v0, 0x6

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 353
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide6RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide6RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private onRightRockerLeft(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 362
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide7RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_l:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/4 v0, 0x7

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 365
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide7RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_l:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide7RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_l:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private onRightRockerRight(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 374
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide8RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_r:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/16 v0, 0x8

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 377
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide8RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_r:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide8RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_r:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private onRightRockerUp(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 338
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide5RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_green_u:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mHandler:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;

    const/4 v0, 0x5

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$RemoteControlerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 341
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide5RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_red_u:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mGuide5RightArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/aircraft/R$mipmap;->aircraft_flight_guide_arrow_u:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showIndexViews()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method private showTargetIndexViews(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xd

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iput p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    .line 104
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->layoutArray:[Landroidx/constraintlayout/widget/ConstraintLayout;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dealWithControlerResult(IIII)V
    .locals 6

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback ..Result ...x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote_value"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mCurrentIndex:I

    const/16 v1, 0x1f4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_4

    if-ge p3, v1, :cond_0

    if-lez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    if-ne p3, v1, :cond_1

    if-nez p4, :cond_1

    .line 431
    invoke-direct {p0, v3, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRemoteControlerUnLockNormal(ZZ)V

    goto :goto_0

    .line 434
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRemoteControlerValueError(ZZ)V

    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-gez p1, :cond_2

    if-gez p2, :cond_2

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 440
    invoke-direct {p0, v4, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRemoteControlerUnLockNormal(ZZ)V

    goto :goto_2

    .line 442
    :cond_3
    invoke-direct {p0, v4, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRemoteControlerValueError(ZZ)V

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz p3, :cond_1c

    if-eqz v3, :cond_1c

    .line 446
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRemoteControlerUnLock()V

    goto/16 :goto_4

    :cond_4
    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    if-le p3, v1, :cond_5

    .line 450
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerUp(I)V

    goto/16 :goto_4

    :cond_5
    if-ne p3, v1, :cond_6

    .line 452
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerUp(I)V

    goto/16 :goto_4

    .line 454
    :cond_6
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerUp(I)V

    goto/16 :goto_4

    :cond_7
    const/4 v5, 0x4

    if-ne v0, v5, :cond_a

    if-lez p1, :cond_8

    .line 458
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerUp(I)V

    goto/16 :goto_4

    :cond_8
    if-nez p1, :cond_9

    .line 460
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerUp(I)V

    goto/16 :goto_4

    .line 462
    :cond_9
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerUp(I)V

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x5

    if-ne v0, v5, :cond_d

    if-gez p1, :cond_b

    .line 466
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerDown(I)V

    goto/16 :goto_4

    :cond_b
    if-nez p1, :cond_c

    .line 468
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerDown(I)V

    goto/16 :goto_4

    .line 470
    :cond_c
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerDown(I)V

    goto/16 :goto_4

    :cond_d
    const/4 p1, 0x6

    if-ne v0, p1, :cond_10

    if-gez p2, :cond_e

    .line 474
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerLeft(I)V

    goto/16 :goto_4

    :cond_e
    if-nez p2, :cond_f

    .line 476
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerLeft(I)V

    goto :goto_4

    .line 478
    :cond_f
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerLeft(I)V

    goto :goto_4

    :cond_10
    const/4 p1, 0x7

    if-ne v0, p1, :cond_13

    if-lez p2, :cond_11

    .line 482
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerRight(I)V

    goto :goto_4

    :cond_11
    if-nez p2, :cond_12

    .line 484
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerRight(I)V

    goto :goto_4

    .line 486
    :cond_12
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onRightRockerRight(I)V

    goto :goto_4

    :cond_13
    const/16 p1, 0x8

    if-ne v0, p1, :cond_16

    if-gez p4, :cond_14

    .line 490
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerLeft(I)V

    goto :goto_4

    :cond_14
    if-nez p4, :cond_15

    .line 492
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerLeft(I)V

    goto :goto_4

    .line 494
    :cond_15
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerLeft(I)V

    goto :goto_4

    :cond_16
    const/16 p1, 0x9

    if-ne v0, p1, :cond_19

    if-lez p4, :cond_17

    .line 498
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerRight(I)V

    goto :goto_4

    :cond_17
    if-nez p4, :cond_18

    .line 500
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerRight(I)V

    goto :goto_4

    .line 502
    :cond_18
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerRight(I)V

    goto :goto_4

    :cond_19
    const/16 p1, 0xa

    if-ne v0, p1, :cond_1c

    if-ge p3, v1, :cond_1a

    .line 506
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerDown(I)V

    goto :goto_4

    :cond_1a
    if-ne p3, v1, :cond_1b

    .line 508
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerDown(I)V

    goto :goto_4

    .line 510
    :cond_1b
    invoke-direct {p0, v2}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onLeftRockerDown(I)V

    :cond_1c
    :goto_4
    return-void
.end method

.method public isUpdateRemoteControlerResult()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->updateRemoteControlerResult:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 117
    sget v0, Lcom/powervision/aircraft/R$id;->fllight_guide_close:I

    if-ne p1, v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 119
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep13Views()V

    .line 120
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto/16 :goto_0

    .line 121
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide2_close:I

    if-ne p1, v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 123
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep13Views()V

    .line 124
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto/16 :goto_0

    .line 125
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide3_close:I

    if-ne p1, v0, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto/16 :goto_0

    .line 127
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide4_close:I

    if-ne p1, v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto/16 :goto_0

    .line 129
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide5_close:I

    if-ne p1, v0, :cond_4

    .line 130
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto/16 :goto_0

    .line 131
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide6_close:I

    if-ne p1, v0, :cond_5

    .line 132
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto/16 :goto_0

    .line 133
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide7_close:I

    if-ne p1, v0, :cond_6

    .line 134
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto/16 :goto_0

    .line 135
    :cond_6
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide8_close:I

    if-ne p1, v0, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto/16 :goto_0

    .line 137
    :cond_7
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide9_close:I

    if-ne p1, v0, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto :goto_0

    .line 139
    :cond_8
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide10_close:I

    if-ne p1, v0, :cond_9

    .line 140
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto :goto_0

    .line 141
    :cond_9
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide11_close:I

    if-ne p1, v0, :cond_a

    .line 142
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->exitFlightGuide()V

    goto :goto_0

    .line 143
    :cond_a
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide12_complete:I

    if-ne p1, v0, :cond_b

    .line 144
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->doComplete()V

    goto :goto_0

    .line 145
    :cond_b
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide_next:I

    if-ne p1, v0, :cond_c

    .line 146
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 147
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep2Views()V

    .line 148
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    .line 149
    :cond_c
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide2_next:I

    if-ne p1, v0, :cond_d

    .line 150
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 151
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->initStep3Views()V

    .line 152
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showIndexViews()V

    goto :goto_0

    .line 153
    :cond_d
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide13_cancle:I

    if-ne p1, v0, :cond_e

    .line 154
    iget p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mLastIndex:I

    .line 155
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 156
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showTargetIndexViews(I)V

    goto :goto_0

    .line 157
    :cond_e
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide13_dismiss:I

    if-ne p1, v0, :cond_f

    .line 158
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->doComplete()V

    goto :goto_0

    .line 159
    :cond_f
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide14_cancle:I

    if-ne p1, v0, :cond_10

    .line 160
    iget p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->mLastIndex:I

    .line 161
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->hideIndexViews()V

    .line 162
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->showTargetIndexViews(I)V

    goto :goto_0

    .line 163
    :cond_10
    sget v0, Lcom/powervision/aircraft/R$id;->flight_guide14_dismiss:I

    if-ne p1, v0, :cond_11

    .line 164
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->doComplete()V

    :cond_11
    :goto_0
    return-void
.end method

.method public setOnGuideDismissListener(Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$OnGuideCompleteListener;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView;->onGuideDismissListener:Lcom/powervision/aircraft/ui/views/AircraftBasicFlightGuideView$OnGuideCompleteListener;

    return-void
.end method
