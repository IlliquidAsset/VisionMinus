.class public Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "RemoteCalibrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;
.implements Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;
    }
.end annotation


# static fields
.field private static final REMOTE_CALIBRATION_COMPLETE_FAILED:I = 0x5

.field private static final REMOTE_CALIBRATION_COMPLETE_SUCCESS:I = 0x4

.field private static final REMOTE_CALIBRATION_EXTREMA_DONE:I = 0x3

.field private static final REMOTE_CALIBRATION_START_FAILED:I = 0x2

.field private static final REMOTE_CALIBRATION_START_SUCCESS:I = 0x1


# instance fields
.field private currentRCMode:I

.field private mBackBt:Landroid/widget/ImageView;

.field private mCalibraBtn:Landroid/widget/TextView;

.field private mCalibrationSeekBar:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mLeftCircleView:Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

.field private mLeftValue:Landroid/widget/TextView;

.field private mRightCircleView:Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

.field private mRightValue:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

.field private stickProcessValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 45
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->stickProcessValues:[I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->currentRCMode:I

    .line 55
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;Landroid/os/Message;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 2

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_94:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 88
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_103:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 89
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_94:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 83
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_56:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 84
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 74
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    sget v0, Lcom/powervision/aircraft/R$string;->App_MediaLib_89:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;
    .locals 1

    .line 100
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;-><init>()V

    return-object v0
.end method

.method private initSeekBar()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibrationSeekBar:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->reset()V

    .line 153
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibrationSeekBar:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;

    const/4 v1, 0x1

    int-to-float v2, v1

    const/16 v3, -0x64

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->setSeekLength(IIIF)V

    .line 154
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibrationSeekBar:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;

    int-to-float v2, v5

    invoke-virtual {v0, v2, v1}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->setValue(FZ)V

    return-void
.end method

.method private setStickProcess([II)V
    .locals 8

    .line 238
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 239
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, p2, -0x1

    const/4 v5, -0x1

    if-ne v2, v3, :cond_2

    .line 241
    aget v3, p1, v2

    const/16 v6, 0x1f4

    if-le v3, v6, :cond_0

    aget v3, p1, v2

    const/16 v7, 0x1f9

    if-ge v3, v7, :cond_0

    .line 242
    aput v4, v0, v2

    goto :goto_1

    .line 243
    :cond_0
    aget v3, p1, v2

    const/16 v4, 0x1ef

    if-le v3, v4, :cond_1

    aget v3, p1, v2

    if-ge v3, v6, :cond_1

    .line 244
    aput v5, v0, v2

    goto :goto_1

    .line 246
    :cond_1
    aget v3, p1, v2

    sub-int/2addr v3, v6

    int-to-double v3, v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v0, v2

    goto :goto_1

    .line 248
    :cond_2
    aget v3, p1, v2

    if-lez v3, :cond_3

    aget v3, p1, v2

    const/16 v6, 0xa

    if-ge v3, v6, :cond_3

    .line 249
    aput v4, v0, v2

    goto :goto_1

    .line 250
    :cond_3
    aget v3, p1, v2

    const/16 v4, -0xa

    if-le v3, v4, :cond_4

    aget v3, p1, v2

    if-gez v3, :cond_4

    .line 251
    aput v5, v0, v2

    goto :goto_1

    .line 253
    :cond_4
    aget v3, p1, v2

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mLeftCircleView:Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

    if-eqz p1, :cond_a

    .line 257
    aget p2, v0, v1

    if-ltz p2, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    aget p2, v0, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    :goto_2
    aget v2, v0, v4

    if-ltz v2, :cond_7

    aget v2, v0, v4

    .line 258
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    aget v3, v0, v1

    if-ltz v3, :cond_8

    aget v3, v0, v1

    .line 259
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    aget v5, v0, v4

    if-ltz v5, :cond_9

    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    aget v4, v0, v4

    .line 260
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 257
    :goto_5
    invoke-virtual {p1, p2, v2, v3, v4}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->setValue(IIII)V

    .line 262
    :cond_a
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mRightCircleView:Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

    if-eqz p1, :cond_f

    const/4 p2, 0x2

    .line 263
    aget v2, v0, p2

    if-ltz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    aget v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :goto_6
    const/4 v3, 0x3

    aget v4, v0, v3

    if-ltz v4, :cond_c

    aget v4, v0, v3

    .line 264
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    aget v5, v0, p2

    if-ltz v5, :cond_d

    aget p2, v0, p2

    .line 265
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_8

    :cond_d
    const/4 p2, 0x0

    :goto_8
    aget v5, v0, v3

    if-ltz v5, :cond_e

    goto :goto_9

    :cond_e
    aget v0, v0, v3

    .line 266
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 263
    :goto_9
    invoke-virtual {p1, v2, v4, p2, v1}, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;->setValue(IIII)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 105
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_remote_calibration_layout:I

    return v0
.end method

.method public getManualControlResult(IIII)V
    .locals 8

    .line 331
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance v7, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteCalibrationFragment$xf85MuSX23MIHXvwv3YcBxCXAP8;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteCalibrationFragment$xf85MuSX23MIHXvwv3YcBxCXAP8;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;IIII)V

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getRemoteThumbwheelResult(III)V
    .locals 0

    .line 322
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 326
    :cond_0
    new-instance p3, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteCalibrationFragment$2kPbGcb6ySNFOBsn1Emt6KtfIa4;

    invoke-direct {p3, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteCalibrationFragment$2kPbGcb6ySNFOBsn1Emt6KtfIa4;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;I)V

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_90:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 140
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "PV_REMOTE_MODE"

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->currentRCMode:I

    .line 143
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->initSeekBar()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 111
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mBackBt:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mBackBt:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_0
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCloseBt:Landroid/widget/ImageView;

    .line 116
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mTitle:Landroid/widget/TextView;

    .line 117
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_calibration_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    .line 118
    sget p1, Lcom/powervision/aircraft/R$id;->calibration_left_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mLeftCircleView:Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

    .line 119
    sget p1, Lcom/powervision/aircraft/R$id;->calibration_right_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mRightCircleView:Lcom/powervision/aircraft/ui/views/CtlStickCircleView;

    .line 120
    sget p1, Lcom/powervision/aircraft/R$id;->content_middle_seek_bar:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibrationSeekBar:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;

    .line 121
    sget p1, Lcom/powervision/aircraft/R$id;->remote_left_wheel_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mLeftValue:Landroid/widget/TextView;

    .line 122
    sget p1, Lcom/powervision/aircraft/R$id;->remote_right_wheel_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mRightValue:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$getManualControlResult$1$RemoteCalibrationFragment(IIII)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->updateManualControl(IIII)V

    return-void
.end method

.method public synthetic lambda$getRemoteThumbwheelResult$0$RemoteCalibrationFragment(I)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->updateMountControl(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 160
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_0

    .line 161
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x66

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto/16 :goto_1

    .line 162
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_1

    .line 163
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto/16 :goto_1

    .line 164
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_calibration_btn:I

    if-ne p1, v0, :cond_6

    .line 166
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_Msg_27:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_94:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 168
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x0

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_95:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    .line 169
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$1;

    invoke-direct {v6, p0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;)V

    .line 168
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_99:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 176
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->startCalibar()I

    goto :goto_1

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_ConnectGuide_67:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 178
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1}, Lcom/powervision/natives/PVSDK_AP03_API;->completeCalibar()I

    :cond_6
    :goto_1
    return-void
.end method

.method public onRemoteCalibraCompleteFailed()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRemoteCalibraCompleteSuccess()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRemoteCalibraExtremadone()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRemoteCalibraStartFailed()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRemoteCalibraStartSuccess()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRemoteCalibraTimeout()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->remoteCalibratHandler:Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment$RemoteCalibratHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 128
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibraBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyRemoteCalibarListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteCalibraResultListener;)V

    .line 132
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnRemoteManualControlResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteManualControlResultListener;)V

    .line 133
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnRemoteThumbwheelResultListener(Lcom/powervision/natives/callback/RemoteStatusCallback$Ap03NotifyOnRemoteThumbwheelResultListener;)V

    return-void
.end method

.method public updateManualControl(IIII)V
    .locals 6

    .line 190
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->currentRCMode:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->stickProcessValues:[I

    aput p4, v0, v2

    .line 224
    aput p3, v0, v4

    .line 225
    aput p2, v0, v5

    .line 226
    aput p1, v0, v3

    .line 227
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->setStickProcess([II)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->stickProcessValues:[I

    aput p4, v0, v2

    .line 211
    aput p3, v0, v4

    .line 212
    aput p2, v0, v5

    .line 213
    aput p1, v0, v3

    .line 214
    invoke-direct {p0, v0, v5}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->setStickProcess([II)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->stickProcessValues:[I

    aput p4, v0, v2

    .line 198
    aput p1, v0, v4

    .line 199
    aput p2, v0, v5

    .line 200
    aput p3, v0, v3

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->setStickProcess([II)V

    :goto_0
    return-void
.end method

.method public updateMountControl(I)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mCalibrationSeekBar:Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    div-int/lit8 p1, p1, 0xa

    int-to-float v1, p1

    const/4 v2, 0x1

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/powervision/aircraft/ui/views/CalibrationSeekBar;->setValue(FZ)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteTestDebug"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mLeftValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mRightValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mLeftValue:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteCalibrationFragment;->mRightValue:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
