.class public Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "PointSurroundModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;


# instance fields
.field private final Tag:Ljava/lang/String;

.field private mBackIv:Landroid/widget/ImageView;

.field private mCloseIv:Landroid/widget/ImageView;

.field mCurrentMode:I

.field private mLocationModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTouchModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, "PointSurroundModeFragment"

    .line 22
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->Tag:Ljava/lang/String;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mCurrentMode:I

    return-void
.end method

.method private initModeSelectViews()V
    .locals 1

    .line 45
    sget v0, Lcom/powervision/aircraft/R$id;->touch_mode_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mTouchModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    sget v0, Lcom/powervision/aircraft/R$id;->location_mode_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mLocationModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    sget v0, Lcom/powervision/aircraft/R$id;->back_arrow:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mBackIv:Landroid/widget/ImageView;

    .line 49
    sget v0, Lcom/powervision/aircraft/R$id;->close_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mCloseIv:Landroid/widget/ImageView;

    return-void
.end method

.method private initSurroundManager()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->initSDK()V

    .line 71
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setOnSetSurroundParmasListener(Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;)V

    return-void
.end method

.method private setResultData(II)V
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 94
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_0
    return-void
.end method

.method private setSurroundMode(I)V
    .locals 3

    .line 103
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundParams(I[I)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 33
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_surround_mode_select_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->initModeSelectViews()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 77
    sget v0, Lcom/powervision/aircraft/R$id;->touch_mode_layout:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 79
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->setSurroundMode(I)V

    goto :goto_0

    .line 81
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->location_mode_layout:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->setSurroundMode(I)V

    goto :goto_0

    .line 84
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->close_iv:I

    if-ne p1, v0, :cond_2

    .line 85
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 86
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->back_arrow:I

    if-ne p1, v0, :cond_3

    .line 87
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 126
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->removeListener(Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;)V

    .line 127
    invoke-static {}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->removeListener()V

    .line 128
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    return-void
.end method

.method public onSetParmasResultFailed(II)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ....  onSetParmasResultFailed       result type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "====status==="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PointSurroundModeFragment"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetParmasResultSuccess(II)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ....  onSetParmasResultSuccess       result type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "====status==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PointSurroundModeFragment"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->setResultData(II)V

    return-void
.end method

.method public onSmartFunctionData(FFFFI)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mTouchModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mLocationModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mCloseIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->mBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundModeFragment;->initSurroundManager()V

    return-void
.end method
