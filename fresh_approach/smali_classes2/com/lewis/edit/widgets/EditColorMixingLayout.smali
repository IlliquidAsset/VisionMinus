.class public Lcom/lewis/edit/widgets/EditColorMixingLayout;
.super Landroid/widget/FrameLayout;
.source "EditColorMixingLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;
    }
.end annotation


# instance fields
.field private mBrightnessNum:F

.field private mBrightnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

.field private mCmCancel:Landroid/widget/ImageView;

.field private mCmConfirm:Landroid/widget/ImageView;

.field private mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

.field private mColorTemNum:F

.field private mColorTempPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

.field private mContrastNum:F

.field private mContrastPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

.field private mSaturationNum:F

.field private mSaturationPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

.field private mSharpnessNum:F

.field private mSharpnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

.field private mVignetteNum:F

.field private mVignettePro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/lewis/edit/widgets/EditColorMixingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessNum:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    iput p2, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationNum:F

    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTemNum:F

    const/high16 p2, 0x40400000    # 3.0f

    iput p2, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignetteNum:F

    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessNum:F

    .line 42
    invoke-direct {p0}, Lcom/lewis/edit/widgets/EditColorMixingLayout;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/lewis/edit/widgets/EditColorMixingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$layout;->edit_layou_color_mixing:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    sget v1, Lcom/lewis/edit/R$id;->ecs_cm_light_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    .line 53
    sget v1, Lcom/lewis/edit/R$id;->ecs_cm_contrast_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    .line 55
    sget v1, Lcom/lewis/edit/R$id;->ecs_cm_saturation_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    .line 57
    sget v1, Lcom/lewis/edit/R$id;->ecs_cm_ct_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTempPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    .line 59
    sget v1, Lcom/lewis/edit/R$id;->ecs_cm_vignetting_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignettePro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    .line 61
    sget v1, Lcom/lewis/edit/R$id;->ecs_cm_sharpness_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    .line 63
    sget v1, Lcom/lewis/edit/R$id;->iv_cm_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mCmCancel:Landroid/widget/ImageView;

    .line 65
    sget v1, Lcom/lewis/edit/R$id;->iv_cm_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mCmConfirm:Landroid/widget/ImageView;

    .line 67
    invoke-direct {p0}, Lcom/lewis/edit/widgets/EditColorMixingLayout;->setListener()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mCmCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mCmConfirm:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$-p7qNj-ejBz1jPxk03HEEWNr21U;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$-p7qNj-ejBz1jPxk03HEEWNr21U;-><init>(Lcom/lewis/edit/widgets/EditColorMixingLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setOnProgressChangeListener(Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$E6RIvIa75xsZzOoRXJiuum7EpRU;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$E6RIvIa75xsZzOoRXJiuum7EpRU;-><init>(Lcom/lewis/edit/widgets/EditColorMixingLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setOnProgressChangeListener(Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$ZrHHEh9K4tQd5-Rx7ZH8vMFlprw;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$ZrHHEh9K4tQd5-Rx7ZH8vMFlprw;-><init>(Lcom/lewis/edit/widgets/EditColorMixingLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setOnProgressChangeListener(Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTempPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$BvnKhc34ntv7mYxfOIZzy-tkCsU;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$BvnKhc34ntv7mYxfOIZzy-tkCsU;-><init>(Lcom/lewis/edit/widgets/EditColorMixingLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setOnProgressChangeListener(Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignettePro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$lLvQ94db6abAT-pkM7CY9de3EVI;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$lLvQ94db6abAT-pkM7CY9de3EVI;-><init>(Lcom/lewis/edit/widgets/EditColorMixingLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setOnProgressChangeListener(Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    new-instance v1, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$eWidKQM-X7CR7p6-n4UaS5wcTiE;

    invoke-direct {v1, p0}, Lcom/lewis/edit/widgets/-$$Lambda$EditColorMixingLayout$eWidKQM-X7CR7p6-n4UaS5wcTiE;-><init>(Lcom/lewis/edit/widgets/EditColorMixingLayout;)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setOnProgressChangeListener(Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar$OnProgressChangeListener;)V

    return-void
.end method


# virtual methods
.method public initShowView()V
    .locals 4

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessNum:F

    .line 141
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setProgress(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 143
    iput v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    .line 144
    iget-object v3, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    invoke-virtual {v3, v2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setProgress(I)V

    .line 146
    iput v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationNum:F

    .line 147
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    invoke-virtual {v1, v2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setProgress(I)V

    .line 149
    iput v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTemNum:F

    .line 150
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTempPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    invoke-virtual {v1, v2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setProgress(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 152
    iput v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignetteNum:F

    .line 153
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignettePro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    invoke-virtual {v1, v2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setProgress(I)V

    .line 155
    iput v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessNum:F

    .line 156
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessPro:Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;

    invoke-virtual {v0, v2}, Lcom/lewis/edit/widgets/EditCenterVerticalSeekBar;->setProgress(I)V

    return-void
.end method

.method public synthetic lambda$setListener$0$EditColorMixingLayout(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 78
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessNum:F

    .line 79
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onLightClick(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$1$EditColorMixingLayout(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 85
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    .line 86
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    add-float/2addr p1, v1

    .line 88
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    goto :goto_0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    .line 90
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    iget v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    invoke-interface {p1, v0}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onContrastClick(F)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setListener$2$EditColorMixingLayout(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 97
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationNum:F

    .line 98
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    .line 99
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationNum:F

    .line 100
    invoke-interface {v0, p1}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onSaturationClick(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$3$EditColorMixingLayout(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    .line 105
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTemNum:F

    .line 106
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onColorTemperatureClick(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$4$EditColorMixingLayout(I)V
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 112
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignetteNum:F

    .line 113
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz v0, :cond_0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40200000    # 2.5f

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    .line 115
    iput v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignetteNum:F

    .line 116
    invoke-interface {v0, v1}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onVignettingClick(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$5$EditColorMixingLayout(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    .line 121
    iput p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessNum:F

    .line 122
    iget-object v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onSharpnessClick(F)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 161
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 165
    sget v0, Lcom/lewis/edit/R$id;->iv_cm_cancel:I

    if-ne v0, p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz p1, :cond_3

    .line 168
    invoke-interface {p1}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onCmCancelClick()V

    goto :goto_0

    .line 170
    :cond_1
    sget v0, Lcom/lewis/edit/R$id;->iv_cm_confirm:I

    if-ne v0, p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    if-eqz p1, :cond_3

    .line 173
    iget v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessNum:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationNum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTemNum:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignetteNum:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessNum:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 175
    invoke-interface {p1}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onCmCancelClick()V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    iget v2, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mBrightnessNum:F

    iget v3, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mContrastNum:F

    iget v4, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSaturationNum:F

    iget v5, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorTemNum:F

    iget v6, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mVignetteNum:F

    iget v7, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mSharpnessNum:F

    invoke-interface/range {v1 .. v7}, Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;->onCmConfirmClick(FFFFFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setColorMixingListener(Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/lewis/edit/widgets/EditColorMixingLayout;->mColorMixingListener:Lcom/lewis/edit/widgets/EditColorMixingLayout$WorkColorMixingListener;

    return-void
.end method
