.class public Lcom/powervision/handheld/ui/views/HandheldGuideView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "HandheldGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/views/HandheldGuideView$OnGuideCompleteListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private isVertical:Z

.field private mAudioIv:Landroid/widget/ImageView;

.field private mAudioPromptTv:Landroid/widget/TextView;

.field private mCurrentIndex:I

.field private mGimbaleModeIv:Landroid/widget/ImageView;

.field private mGimbaleModePromptTv:Landroid/widget/TextView;

.field private mGimbaleModeTv:Landroid/widget/TextView;

.field private mOnGuideCompleteListener:Lcom/powervision/handheld/ui/views/HandheldGuideView$OnGuideCompleteListener;

.field private mRockerIv:Landroid/widget/ImageView;

.field private mRockerPointIv:Landroid/widget/ImageView;

.field private mRockerPointPromptTv:Landroid/widget/TextView;

.field private mRockerPromptTv:Landroid/widget/TextView;

.field private mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->inflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->isVertical:Z

    .line 40
    invoke-direct {p0, p2}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->initViews(I)V

    return-void
.end method

.method private initViews(I)V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->isVertical:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_guide_portrait_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_guide_landscape_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    :goto_0
    sget v0, Lcom/powervision/handheld/R$id;->handheld_guidle_root_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    sget v0, Lcom/powervision/handheld/R$id;->handheld_audio_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioIv:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/powervision/handheld/R$id;->guide_aduio_prompt_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioPromptTv:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/powervision/handheld/R$id;->handheld_rocker_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerIv:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/powervision/handheld/R$id;->guide_rocker_prompt_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPromptTv:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/powervision/handheld/R$id;->handheld_rocker_point_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointIv:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/powervision/handheld/R$id;->guide_rocker_point_prompt_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointPromptTv:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/powervision/handheld/R$id;->handheld_gimbale_mode_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeIv:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/powervision/handheld/R$id;->guide_gimbal_mode_prompt_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModePromptTv:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/powervision/handheld/R$id;->handheld_gimbale_mode_tv:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeTv:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mCurrentIndex:I

    .line 70
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->showGuideViews(I)V

    return-void
.end method

.method private showGuideViews(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModePromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModePromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 112
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModePromptTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mAudioPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mRockerPointPromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModePromptTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mGimbaleModeTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   index=......index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "show-guide"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-le p1, v0, :cond_4

    .line 134
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mOnGuideCompleteListener:Lcom/powervision/handheld/ui/views/HandheldGuideView$OnGuideCompleteListener;

    if-eqz p1, :cond_3

    .line 135
    invoke-interface {p1}, Lcom/powervision/handheld/ui/views/HandheldGuideView$OnGuideCompleteListener;->onGuideComplete()V

    :cond_3
    const/4 p1, 0x0

    .line 140
    :cond_4
    iput p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 85
    sget v0, Lcom/powervision/handheld/R$id;->handheld_guidle_root_layout:I

    if-ne p1, v0, :cond_0

    .line 86
    iget p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mCurrentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->showGuideViews(I)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->removeAllViews()V

    .line 78
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->isVertical:Z

    .line 79
    iget p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/views/HandheldGuideView;->initViews(I)V

    return-void
.end method

.method public setOnGuideCompleteListener(Lcom/powervision/handheld/ui/views/HandheldGuideView$OnGuideCompleteListener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/HandheldGuideView;->mOnGuideCompleteListener:Lcom/powervision/handheld/ui/views/HandheldGuideView$OnGuideCompleteListener;

    return-void
.end method
