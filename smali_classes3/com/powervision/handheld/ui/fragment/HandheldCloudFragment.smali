.class public Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "HandheldCloudFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;
    }
.end annotation


# static fields
.field private static final GET_GIMABL_LOCK_TIMEOUT:I = 0x9

.field private static final GET_GIMBAL_LCOK_STATUS:I = 0x6

.field private static final GET_GIMBAL_SCENE_MODE_SUCCESS:I = 0x5

.field private static final GET_GIMBAL_SCENE_TIMEOUT:I = 0x8

.field private static final GIMBAL_CABRATIONING:I = 0x3

.field private static final GIMBAL_CABRATION_FAILED:I = 0x2

.field private static final GIMBAL_CABRATION_SUCCESS:I = 0x1

.field private static final SET_GIMBAL_LCOK_STATUS:I = 0x7

.field private static final SET_GIMBAL_MODE_SUCCESS:I = 0x4

.field private static final SHOW_GIMBAL_CALIBRATION:Ljava/lang/String; = "SHOW_GIMBAL_CALIBRATION"


# instance fields
.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private getLockStatus:I

.field private getMode:J

.field private getSceneMode:I

.field private handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

.field private mCalibrationText:Landroid/widget/TextView;

.field private mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

.field private mFollowModeLayout:Landroid/widget/RelativeLayout;

.field private mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

.field private mFreeModeLayout:Landroid/widget/RelativeLayout;

.field private mGimbalModeText:Landroid/widget/TextView;

.field private mGimbalTuning:Landroid/widget/TextView;

.field private mProgress:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSenceModeCheck:Lcom/powervision/base/views/RoundCheckBox;

.field private mSenceModeLayout:Landroid/widget/RelativeLayout;

.field private mSenceModeText:Landroid/widget/TextView;

.field private mWalkModeCheck:Lcom/powervision/base/views/RoundCheckBox;

.field private mWalkModeLayout:Landroid/widget/RelativeLayout;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private setLockStatus:I

.field private setMode:J

.field private setSceneMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    invoke-direct {v0, p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;Landroid/os/Message;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->initProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 4

    .line 81
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 115
    :pswitch_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "PV_GIM_P_LOCK"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 118
    :pswitch_1
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "PV_GIM_SCENE_WS"

    invoke-virtual {p1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    :pswitch_2
    iget p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->setLockStatus:I

    if-ne p1, v3, :cond_0

    .line 131
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    .line 132
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v2}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_4

    .line 134
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v2}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    .line 135
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 108
    :pswitch_3
    iget p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getLockStatus:I

    if-nez p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_4

    .line 111
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getSceneMode:I

    if-ne p1, v1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_4

    .line 104
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 121
    :pswitch_5
    iget p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->setSceneMode:I

    if-ne p1, v1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    .line 123
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v2}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    .line 125
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v2}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    .line 126
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v3}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 95
    :pswitch_6
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_4

    .line 96
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 97
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgress:I

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 89
    :pswitch_7
    sget p1, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_275:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 90
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 83
    :pswitch_8
    sget p1, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_274:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 84
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;
    .locals 1

    .line 153
    new-instance v0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;

    invoke-direct {v0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;-><init>()V

    return-object v0
.end method

.method private initProgress()V
    .locals 2

    .line 287
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 288
    sget v1, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_198:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 290
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 291
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method private setGimbalModeCheck(J)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 144
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v1}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    .line 145
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x4

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 147
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    .line 148
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {p1, v1}, Lcom/powervision/base/views/RoundCheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getGimbalCalibrationResult(Ljava/lang/String;I)V
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====i=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asdfdasdafaf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SUCCESS"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "FAIL"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 301
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "ADJUSTING"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iput p2, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mProgress:I

    .line 304
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string p2, "TIMEOUT"

    .line 305
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 306
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 158
    sget v0, Lcom/powervision/handheld/R$layout;->handheld_cloud_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 163
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_follow_mode_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mGimbalModeText:Landroid/widget/TextView;

    .line 164
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_scene_mode_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeText:Landroid/widget/TextView;

    .line 165
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_follow_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeLayout:Landroid/widget/RelativeLayout;

    .line 166
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_free_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeLayout:Landroid/widget/RelativeLayout;

    .line 167
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_scene_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeLayout:Landroid/widget/RelativeLayout;

    .line 168
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_walk_mode_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeLayout:Landroid/widget/RelativeLayout;

    .line 169
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_follow_mode_checkbox:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/RoundCheckBox;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    .line 170
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_free_mode_checkbox:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/RoundCheckBox;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    .line 171
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_sence_mode_checkbox:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/RoundCheckBox;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    .line 172
    sget p1, Lcom/powervision/handheld/R$id;->gimbal_walk_mode_checkbox:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/RoundCheckBox;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    .line 173
    sget p1, Lcom/powervision/handheld/R$id;->cloud_auto_calibration:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mCalibrationText:Landroid/widget/TextView;

    .line 174
    sget p1, Lcom/powervision/handheld/R$id;->cloud_horizontal_fine_tuning:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mGimbalTuning:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$onResume$0$HandheldCloudFragment()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_P_LOCK"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 210
    sget v0, Lcom/powervision/handheld/R$id;->gimbal_follow_mode_text:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 211
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$mipmap;->icon_arrow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mGimbalModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$mipmap;->icon_arrow_down:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mGimbalModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 224
    :cond_1
    sget v0, Lcom/powervision/handheld/R$id;->gimbal_scene_mode_text:I

    if-ne p1, v0, :cond_3

    .line 225
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$mipmap;->icon_arrow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 228
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$mipmap;->icon_arrow_down:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 238
    :cond_3
    sget v0, Lcom/powervision/handheld/R$id;->cloud_auto_calibration:I

    if-ne p1, v0, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 243
    :cond_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 244
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 245
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    sget v0, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    sget v0, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_199:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    sget v1, Lcom/powervision/handheld/R$string;->AP03_Activation_6:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$1;

    invoke-direct {v2, p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$1;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 254
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    sget v1, Lcom/powervision/handheld/R$string;->AP03_Activation_9:I

    invoke-virtual {p0, v1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$2;

    invoke-direct {v2, p0}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$2;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 260
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 273
    :cond_5
    sget v0, Lcom/powervision/handheld/R$id;->cloud_horizontal_fine_tuning:I

    if-ne p1, v0, :cond_6

    .line 274
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 275
    :cond_6
    sget v0, Lcom/powervision/handheld/R$id;->gimbal_follow_mode_checkbox:I

    const-string v1, "PV_GIM_SCENE_WS"

    if-ne p1, v0, :cond_7

    .line 276
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 277
    :cond_7
    sget v0, Lcom/powervision/handheld/R$id;->gimbal_free_mode_checkbox:I

    if-ne p1, v0, :cond_8

    .line 278
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 279
    :cond_8
    sget v0, Lcom/powervision/handheld/R$id;->gimbal_sence_mode_checkbox:I

    const-string v1, "PV_GIM_P_LOCK"

    if-ne p1, v0, :cond_9

    .line 280
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    goto :goto_0

    .line 281
    :cond_9
    sget v0, Lcom/powervision/handheld/R$id;->gimbal_walk_mode_checkbox:I

    if-ne p1, v0, :cond_a

    .line 282
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {p1, v1, v3}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadGimbalIntParameter(Ljava/lang/String;I)I

    :cond_a
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 350
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 351
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 358
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 359
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 360
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 201
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 203
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_SCENE_WS"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    new-instance v1, Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldCloudFragment$A13qZixj83kyXka9D6I4IaGtMn8;

    invoke-direct {v1, p0}, Lcom/powervision/handheld/ui/fragment/-$$Lambda$HandheldCloudFragment$A13qZixj83kyXka9D6I4IaGtMn8;-><init>(Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====s1=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====i===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asdfdasdafaf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DOWNLOAD_SUCCESS"

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PV_GIM_P_LOCK"

    const-string v2, "PV_GIM_SCENE_WS"

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iput p3, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getSceneMode:I

    .line 326
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 328
    iput p3, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->getLockStatus:I

    .line 329
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "UPLOAD_SUCCESS"

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 333
    iput p3, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->setSceneMode:I

    .line 334
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 336
    iput p3, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->setLockStatus:I

    .line 337
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string p3, "DOWNLOAD_TIMEOUT"

    .line 339
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 340
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 341
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 343
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->handheldCloudHandler:Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment$HandheldCloudHandler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====s1=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=====l===="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "asdfdasdafaf"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DOWNLOAD_SUCCESS"

    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "UPLOAD_SUCCESS"

    .line 315
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 186
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mGimbalModeText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFollowModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/RoundCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mFreeModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/RoundCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mSenceModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/RoundCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mWalkModeCheck:Lcom/powervision/base/views/RoundCheckBox;

    invoke-virtual {v0, p0}, Lcom/powervision/base/views/RoundCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mCalibrationText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->mGimbalTuning:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGimbalParameterResultLongListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalParameterResultLongListener;)V

    .line 195
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldCloudFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnGimbalCalibrationResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalCalibrationResultListener;)V

    .line 196
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    return-void
.end method
