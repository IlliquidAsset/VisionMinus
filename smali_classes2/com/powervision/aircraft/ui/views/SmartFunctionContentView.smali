.class public Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;
.super Landroid/widget/FrameLayout;
.source "SmartFunctionContentView.java"


# static fields
.field public static final TAG_CONTENT_DELAYED_CAPTURE:I = 0x3


# instance fields
.field TAG_CONTENT_ONE_CLIPS:I

.field TAG_CONTENT_POINT_SURROUND:I

.field TAG_CONTENT_SMART_FOLLOW:I

.field private delayCaptureControlFragment:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

.field private mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mClipsMode:I

.field private mCurrentFragment:Landroidx/fragment/app/Fragment;

.field private mDelayMode:I

.field private mFollowMode:I

.field private mFollowSubMode:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mPointSurroundFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

.field private mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

.field private mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

.field private mSurroundMode:I

.field private updateHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSurroundMode:I

    .line 44
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowMode:I

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowSubMode:I

    .line 46
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mClipsMode:I

    .line 47
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mDelayMode:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateHeight:Z

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_SMART_FOLLOW:I

    .line 77
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_POINT_SURROUND:I

    const/4 p1, 0x2

    .line 78
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_ONE_CLIPS:I

    .line 54
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSurroundMode:I

    .line 44
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowMode:I

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowSubMode:I

    .line 46
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mClipsMode:I

    .line 47
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mDelayMode:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateHeight:Z

    const/4 p2, 0x1

    .line 76
    iput p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_SMART_FOLLOW:I

    .line 77
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_POINT_SURROUND:I

    const/4 p1, 0x2

    .line 78
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_ONE_CLIPS:I

    .line 59
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSurroundMode:I

    .line 44
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowMode:I

    .line 45
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowSubMode:I

    .line 46
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mClipsMode:I

    .line 47
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mDelayMode:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->updateHeight:Z

    const/4 p2, 0x1

    .line 76
    iput p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_SMART_FOLLOW:I

    .line 77
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_POINT_SURROUND:I

    const/4 p1, 0x2

    .line 78
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_ONE_CLIPS:I

    .line 64
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initViews()V

    return-void
.end method

.method private initFragmentByIndex(IZ)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_POINT_SURROUND:I

    if-ne p1, v1, :cond_3

    .line 85
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mPointSurroundFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mPointSurroundFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    :cond_0
    if-eqz p2, :cond_2

    .line 93
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mPointSurroundFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 94
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 97
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$id;->smart_view_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mPointSurroundFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 103
    :cond_3
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_SMART_FOLLOW:I

    if-ne p1, v1, :cond_7

    .line 104
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    if-nez p1, :cond_4

    .line 105
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    .line 107
    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 108
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowMode:I

    const-string v2, "mode_tag"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowSubMode:I

    const-string v2, "subMode_tag"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-virtual {v1, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p2, :cond_6

    .line 112
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 114
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 116
    :cond_5
    sget p1, Lcom/powervision/aircraft/R$id;->smart_view_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 119
    :cond_6
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 121
    :cond_7
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->TAG_CONTENT_ONE_CLIPS:I

    if-ne p1, v1, :cond_b

    .line 122
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    if-nez p1, :cond_8

    .line 123
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    .line 125
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 126
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mClipsMode:I

    const-string v2, "mode_clips"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-virtual {v1, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p2, :cond_a

    .line 129
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 130
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 131
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 133
    :cond_9
    sget p1, Lcom/powervision/aircraft/R$id;->smart_view_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 136
    :cond_a
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_f

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->delayCaptureControlFragment:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    if-nez p1, :cond_c

    .line 140
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    invoke-direct {p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->delayCaptureControlFragment:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    .line 142
    :cond_c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 143
    iget v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mDelayMode:I

    const-string v2, "mode_delay"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->delayCaptureControlFragment:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    invoke-virtual {v1, p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p2, :cond_e

    .line 146
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->delayCaptureControlFragment:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 147
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 148
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 150
    :cond_d
    sget p1, Lcom/powervision/aircraft/R$id;->smart_view_container:I

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 153
    :cond_e
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->delayCaptureControlFragment:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    :cond_f
    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mActivity:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 69
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public initFragments(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->initFragmentByIndex(IZ)V

    return-void
.end method

.method public resetAll()V
    .locals 2

    const/16 v0, 0x8

    .line 172
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSurroundMode:I

    :cond_0
    return-void
.end method

.method public setClipsMode(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mClipsMode:I

    return-void
.end method

.method public setDelayMode(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mDelayMode:I

    return-void
.end method

.method public setFollowMode(II)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowMode:I

    .line 188
    iput p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFollowSubMode:I

    return-void
.end method

.method public setSurroundMode(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSurroundMode:I

    return-void
.end method

.method public setTouchViewTrack(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->updateTouchRectangleViewTrack(Ljava/util/List;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_1

    .line 229
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->updateTouchRectangleViewTrack(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, p2, :cond_1

    .line 160
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 161
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$id;->smart_menu_container:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSmartClipsViewSize()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->changeTouchViewSize()V

    :cond_0
    return-void
.end method

.method public updateSmartFollowViewSize()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->changeTouchViewSize()V

    :cond_0
    return-void
.end method

.method public updateSurroundLatLon(II)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mPointSurroundFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->setDeviceLatLon(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSurroundParmas(FF)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mPointSurroundFragment:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->updateHeightAndSpeed(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTouchView(J[F[F[F[F[F[SI)V
    .locals 11

    move-object v0, p0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 216
    iget-object v1, v0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartFollowFragment:Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 217
    invoke-virtual/range {v1 .. v10}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->updateTouchRectangleView(J[F[F[F[F[F[SI)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, v0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mSmartClipsFragment:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/powervision/aircraft/ui/views/SmartFunctionContentView;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 219
    invoke-virtual/range {v1 .. v10}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->updateTouchRectangleView(J[F[F[F[F[F[SI)V

    :cond_1
    :goto_0
    return-void
.end method
