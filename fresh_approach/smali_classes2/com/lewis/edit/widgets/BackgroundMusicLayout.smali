.class public Lcom/lewis/edit/widgets/BackgroundMusicLayout;
.super Landroid/widget/FrameLayout;
.source "BackgroundMusicLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;
    }
.end annotation


# instance fields
.field private mAudioMusic:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

.field private mAudioOriginal:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

.field private mBmCancel:Landroid/widget/ImageView;

.field private mBmConfirm:Landroid/widget/ImageView;

.field private mMusicLayout:Landroid/widget/LinearLayout;

.field private mMusicListener:Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;

.field private mMusicRate:F

.field private mOriginalRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 24
    iput p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicRate:F

    iput p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mOriginalRate:F

    .line 33
    invoke-direct {p0}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$layout;->edit_layou_background_music:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    sget v1, Lcom/lewis/edit/R$id;->ecs_bm_original_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mAudioOriginal:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    .line 42
    sget v1, Lcom/lewis/edit/R$id;->ecs_bm_music_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mAudioMusic:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    .line 43
    sget v1, Lcom/lewis/edit/R$id;->iv_bm_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mBmCancel:Landroid/widget/ImageView;

    .line 44
    sget v1, Lcom/lewis/edit/R$id;->iv_bm_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mBmConfirm:Landroid/widget/ImageView;

    .line 45
    sget v1, Lcom/lewis/edit/R$id;->ll_bm_music_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicLayout:Landroid/widget/LinearLayout;

    .line 46
    invoke-direct {p0}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->setListener()V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->isShowAudioLayout(Z)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mBmCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mBmConfirm:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mAudioMusic:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$BackgroundMusicLayout$LhkyIR_ItJI3ZFxpHNIXAuf4Rw4;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$BackgroundMusicLayout$LhkyIR_ItJI3ZFxpHNIXAuf4Rw4;-><init>(Lcom/lewis/edit/widgets/BackgroundMusicLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->setOnSeekBarFinishedListener(Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;)Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    .line 58
    iget-object v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mAudioOriginal:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$BackgroundMusicLayout$VOAiq3KjCCj0CqjXoHN1fpBC0GU;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$BackgroundMusicLayout$VOAiq3KjCCj0CqjXoHN1fpBC0GU;-><init>(Lcom/lewis/edit/widgets/BackgroundMusicLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->setOnSeekBarFinishedListener(Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;)Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    return-void
.end method


# virtual methods
.method public initShowView(FF)V
    .locals 2

    .line 73
    iput p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicRate:F

    .line 74
    iput p2, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mOriginalRate:F

    .line 75
    iget-object v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mAudioMusic:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->setProgress(I)Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    .line 76
    iget-object p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mAudioOriginal:Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/lewis/edit/widgets/EditCenterSeekBarView;->setProgress(I)Lcom/lewis/edit/widgets/EditCenterSeekBarView;

    return-void
.end method

.method public isShowAudioLayout(Z)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 86
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setListener$0$BackgroundMusicLayout(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 57
    iput p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicRate:F

    return-void
.end method

.method public synthetic lambda$setListener$1$BackgroundMusicLayout(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 59
    iput p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mOriginalRate:F

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 96
    sget v0, Lcom/lewis/edit/R$id;->iv_bm_cancel:I

    if-ne v0, p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicListener:Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;

    if-eqz p1, :cond_2

    .line 99
    invoke-interface {p1}, Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;->onBmCancelClick()V

    goto :goto_0

    .line 101
    :cond_1
    sget v0, Lcom/lewis/edit/R$id;->iv_bm_confirm:I

    if-ne v0, p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicListener:Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;

    if-eqz p1, :cond_2

    .line 104
    iget v0, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicRate:F

    iget v1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mOriginalRate:F

    invoke-interface {p1, v0, v1}, Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;->onBmConfirmClick(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBackgroundMusicListener(Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->mMusicListener:Lcom/lewis/edit/widgets/BackgroundMusicLayout$WorkBackgroundMusicListener;

    return-void
.end method
