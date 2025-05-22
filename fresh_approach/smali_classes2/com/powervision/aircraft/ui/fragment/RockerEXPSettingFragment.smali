.class public Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "RockerEXPSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;
.implements Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;
    }
.end annotation


# instance fields
.field private currentSelectIndex:I

.field private mAddBt:Landroid/widget/Button;

.field private mAheadBackValueTv:Landroid/widget/TextView;

.field private mBackBt:Landroid/widget/ImageView;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mGoLeftRightValueTv:Landroid/widget/TextView;

.field private mLeftRightValueTv:Landroid/widget/TextView;

.field private mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

.field private mReductionBt:Landroid/widget/Button;

.field private mResetBtn:Landroid/widget/Button;

.field private mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

.field private mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

.field private mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

.field private mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

.field private mTitle:Landroid/widget/TextView;

.field private mUpDownValueTv:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    return-void
.end method

.method private changeExpViewStatus(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    .line 311
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->setExpViewChecked(I)V

    return-void
.end method

.method private clickAddOrReduction(Z)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->getValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    :goto_0
    const/high16 p1, 0x42c60000    # 99.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    return-void

    :cond_1
    const/high16 p1, -0x3d3a0000    # -99.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    return-void

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValue(FZ)V

    .line 179
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->seekValueToExpValue(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->setExpValue(IF)V

    return-void
.end method

.method private initExpSwitchView()V
    .locals 1

    .line 100
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_up_down_ev:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    .line 101
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_turn_left_right_ev:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    .line 102
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_ahead_back_ev:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    .line 103
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_go_left_right_ev:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    return-void
.end method

.method private initSeekBar()V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->reset()V

    .line 113
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/4 v1, 0x1

    int-to-float v2, v1

    const/16 v3, -0x63

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setSeekLength(IIIF)V

    .line 114
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/16 v2, 0x32

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValue(FZ)V

    return-void
.end method

.method private modifyExpValue(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "MPC_Z_MAN_EXPO"

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 391
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mUpDownValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "MPC_Y_MAN_EXPO"

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 394
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mLeftRightValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "MPC_X_MAN_EXPO"

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 397
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mAheadBackValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "MPC_R_MAN_EXPO"

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 399
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 400
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mGoLeftRightValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private resetAllParameters()V
    .locals 4

    .line 338
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->initSeekBar()V

    .line 339
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$SDt7O89Z8w_F-MFk3Hlka5Mm36Y;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$SDt7O89Z8w_F-MFk3Hlka5Mm36Y;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$Rw1J2o3qzKiTkJ_m6MvMoP4jlvA;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$Rw1J2o3qzKiTkJ_m6MvMoP4jlvA;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$udLeu_pWHZ1sVVSOEuvEMUvGh3M;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$udLeu_pWHZ1sVVSOEuvEMUvGh3M;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$Xkc2dgUxpUZZ33JRjees2LlBvyk;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$Xkc2dgUxpUZZ33JRjees2LlBvyk;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetExpViewCenterState()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    .line 299
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    .line 300
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    .line 301
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    return-void
.end method

.method private seekValueToExpValue(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 224
    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->checkValuesArea(F)F

    move-result p1

    return p1
.end method

.method private setExpValue(IF)V
    .locals 2

    if-nez p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "MPC_Z_MAN_EXPO"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 264
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "MPC_Y_MAN_EXPO"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 266
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "MPC_X_MAN_EXPO"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 268
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "MPC_R_MAN_EXPO"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 270
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expfragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private setExpViewChecked(I)V
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckedState(Z)V

    .line 321
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mUpDownValueTv:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_exp_frame_line:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 321
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    if-ne p1, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckedState(Z)V

    .line 324
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mLeftRightValueTv:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_exp_frame_line:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_3

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 324
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0, v4}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckedState(Z)V

    .line 327
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mAheadBackValueTv:Landroid/widget/TextView;

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_exp_frame_line:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_5

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 327
    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckedState(Z)V

    .line 330
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mGoLeftRightValueTv:Landroid/widget/TextView;

    if-ne p1, v3, :cond_7

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_exp_frame_line:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_6

    .line 331
    :cond_7
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 330
    :goto_6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 71
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_rocker_exp_setting_layout:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_76:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 138
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->initSeekBar()V

    .line 139
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$moy-uZeEFCj5HnXR-TR1AMGu2D8;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$moy-uZeEFCj5HnXR-TR1AMGu2D8;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$iG1qBOoQYK95CNyhD66uR-vs7p4;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$iG1qBOoQYK95CNyhD66uR-vs7p4;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$XN7hEscBMJO9NKPbFj6y_VHAiZU;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$XN7hEscBMJO9NKPbFj6y_VHAiZU;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->rockerEXPHandler:Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$BinB_nwxad8YaEUz1wanoW2fgg0;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$BinB_nwxad8YaEUz1wanoW2fgg0;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment$RockerEXPHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mBackBt:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mBackBt:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_0
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mCloseBt:Landroid/widget/ImageView;

    .line 81
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mTitle:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 84
    sget p1, Lcom/powervision/aircraft/R$id;->content_reduction_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mReductionBt:Landroid/widget/Button;

    .line 85
    sget p1, Lcom/powervision/aircraft/R$id;->content_add_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mAddBt:Landroid/widget/Button;

    .line 86
    sget p1, Lcom/powervision/aircraft/R$id;->reset_all_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mResetBtn:Landroid/widget/Button;

    .line 88
    sget p1, Lcom/powervision/aircraft/R$id;->content_up_down_value_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mUpDownValueTv:Landroid/widget/TextView;

    .line 89
    sget p1, Lcom/powervision/aircraft/R$id;->content_left_right_value_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mLeftRightValueTv:Landroid/widget/TextView;

    .line 90
    sget p1, Lcom/powervision/aircraft/R$id;->content_ahead_back_value_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mAheadBackValueTv:Landroid/widget/TextView;

    .line 91
    sget p1, Lcom/powervision/aircraft/R$id;->content_go_left_right_value_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mGoLeftRightValueTv:Landroid/widget/TextView;

    .line 92
    sget p1, Lcom/powervision/aircraft/R$id;->content_middle_seek_bar:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    .line 94
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->initExpSwitchView()V

    .line 96
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->changeExpViewStatus(I)V

    return-void
.end method

.method public synthetic lambda$initData$0$RockerEXPSettingFragment()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_Z_MAN_EXPO"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$initData$1$RockerEXPSettingFragment()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_Y_MAN_EXPO"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$initData$2$RockerEXPSettingFragment()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_X_MAN_EXPO"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$initData$3$RockerEXPSettingFragment()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_R_MAN_EXPO"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$resetAllParameters$4$RockerEXPSettingFragment()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_Z_MAN_EXPO"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    return-void
.end method

.method public synthetic lambda$resetAllParameters$5$RockerEXPSettingFragment()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_Y_MAN_EXPO"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    return-void
.end method

.method public synthetic lambda$resetAllParameters$6$RockerEXPSettingFragment()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_X_MAN_EXPO"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    return-void
.end method

.method public synthetic lambda$resetAllParameters$7$RockerEXPSettingFragment()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_R_MAN_EXPO"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    return-void
.end method

.method public synthetic lambda$setGetParameterResult$8$RockerEXPSettingFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 5

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expfragment0 s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " s1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " s2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " v "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    const-string v0, "UPLOAD"

    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    const-string v3, "FAILED"

    const-string v4, "SUCCESS"

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 363
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_185:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 364
    invoke-direct {p0, p3, p4}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->modifyExpValue(Ljava/lang/String;F)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_12:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 368
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    mul-float p4, p4, v2

    invoke-virtual {p1, p4, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValue(FZ)V

    goto :goto_1

    :cond_2
    const-string v0, "DOWNLOAD"

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 370
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 371
    invoke-direct {p0, p3, p4}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->modifyExpValue(Ljava/lang/String;F)V

    const-string p1, "MPC_Z_MAN_EXPO"

    .line 372
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 373
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    mul-float p4, p4, v2

    invoke-virtual {p1, p4, v1}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValue(FZ)V

    goto :goto_1

    .line 375
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "expfragment: download failed"

    .line 376
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->d(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 148
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto :goto_0

    .line 150
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_1

    .line 151
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 152
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->content_reduction_bt:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->clickAddOrReduction(Z)V

    goto :goto_0

    .line 154
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->content_add_bt:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 155
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->clickAddOrReduction(Z)V

    goto :goto_0

    .line 156
    :cond_3
    sget v0, Lcom/powervision/aircraft/R$id;->reset_all_bt:I

    if-ne p1, v0, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->resetAllParameters()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onExpChange(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V
    .locals 1

    .line 235
    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getId()I

    move-result p1

    .line 236
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_up_down_ev:I

    if-ne p1, v0, :cond_0

    .line 237
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mUpDownValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_turn_left_right_ev:I

    if-ne p1, v0, :cond_1

    .line 239
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mLeftRightValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_ahead_back_ev:I

    if-ne p1, v0, :cond_2

    .line 241
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mAheadBackValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_2
    sget v0, Lcom/powervision/aircraft/R$id;->rocker_setting_go_left_right_ev:I

    if-ne p1, v0, :cond_3

    .line 243
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mGoLeftRightValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p2, p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setValue(FZ)V

    return-void
.end method

.method public onExpChangeEnd(Lcom/powervision/aircraft/ui/views/ExpSwitchView;F)V
    .locals 0

    .line 250
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->setExpValue(IF)V

    return-void
.end method

.method public onExpCheckStatusChanged(Lcom/powervision/aircraft/ui/views/ExpSwitchView;Z)V
    .locals 0

    .line 281
    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->getId()I

    move-result p1

    .line 282
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->resetExpViewCenterState()V

    .line 283
    sget p2, Lcom/powervision/aircraft/R$id;->rocker_setting_up_down_ev:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 284
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->changeExpViewStatus(I)V

    goto :goto_0

    .line 285
    :cond_0
    sget p2, Lcom/powervision/aircraft/R$id;->rocker_setting_turn_left_right_ev:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 286
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->changeExpViewStatus(I)V

    goto :goto_0

    .line 287
    :cond_1
    sget p2, Lcom/powervision/aircraft/R$id;->rocker_setting_ahead_back_ev:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x2

    .line 288
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->changeExpViewStatus(I)V

    goto :goto_0

    .line 289
    :cond_2
    sget p2, Lcom/powervision/aircraft/R$id;->rocker_setting_go_left_right_ev:I

    if-ne p1, p2, :cond_3

    const/4 p1, 0x3

    .line 290
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->changeExpViewStatus(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSeekChanged(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V
    .locals 1

    .line 191
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->seekValueToExpValue(F)F

    move-result p2

    .line 192
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---------  value="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " format= "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 193
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    .line 212
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 213
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mUpDownValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    .line 206
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 207
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mGoLeftRightValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 201
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    .line 202
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mAheadBackValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpValue(F)V

    .line 196
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mLeftRightValueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {p1, p3}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setCheckCenterPointState(Z)V

    :goto_0
    return-void
.end method

.method public onSeekStopped(FFLcom/powervision/aircraft/ui/views/MiddleSeekBar;)V
    .locals 0

    .line 220
    iget p2, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->currentSelectIndex:I

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->seekValueToExpValue(F)F

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->setExpValue(IF)V

    return-void
.end method

.method public setGetParameterResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8

    .line 355
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v7, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$Qozq7crQ-MqkTqtKI1gJL5ymVpA;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RockerEXPSettingFragment$Qozq7crQ-MqkTqtKI1gJL5ymVpA;-><init>(Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 120
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mReductionBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mAddBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mResetBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mMiddleSeekBar:Lcom/powervision/aircraft/ui/views/MiddleSeekBar;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/MiddleSeekBar;->setOnSeekChangeListener(Lcom/powervision/aircraft/ui/views/MiddleSeekBar$OnSeekChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingUpDownEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpChangeListener(Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingTurnLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpChangeListener(Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingAheadBackEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpChangeListener(Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->mRockerSettingGozLeftRightEv:Lcom/powervision/aircraft/ui/views/ExpSwitchView;

    invoke-virtual {v0, p0}, Lcom/powervision/aircraft/ui/views/ExpSwitchView;->setOnExpChangeListener(Lcom/powervision/aircraft/ui/views/ExpSwitchView$OnExpChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RockerEXPSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyonParameterResultFloatListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyonParameterResultFloatListener;)V

    return-void
.end method
