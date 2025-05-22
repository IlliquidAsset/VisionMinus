.class public Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "PointSurroundGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCheck:Landroid/widget/CheckBox;

.field private mVideoCancleBt:Landroid/widget/TextView;

.field private mVideoGuideLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mVideoOKbt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method private setListeners()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->mVideoOKbt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->mVideoCancleBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 30
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_surround_guide_video_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    sget p1, Lcom/powervision/aircraft/R$id;->surround_ok_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->mVideoOKbt:Landroid/widget/TextView;

    .line 36
    sget p1, Lcom/powervision/aircraft/R$id;->surround_cancle_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->mVideoCancleBt:Landroid/widget/TextView;

    .line 37
    sget p1, Lcom/powervision/aircraft/R$id;->check_box:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->mCheck:Landroid/widget/CheckBox;

    .line 38
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->setListeners()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 54
    sget v0, Lcom/powervision/aircraft/R$id;->surround_ok_bt:I

    if-ne p1, v0, :cond_1

    .line 55
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundGuideFragment;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "INTEREST_REMINDER"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 59
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->surround_cancle_bt:I

    if-ne p1, v0, :cond_2

    .line 60
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_2
    :goto_0
    return-void
.end method
