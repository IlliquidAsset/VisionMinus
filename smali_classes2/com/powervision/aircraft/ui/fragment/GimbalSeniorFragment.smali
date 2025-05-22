.class public Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "GimbalSeniorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final GET_GIMBAL_SENIOR_EXTENDS:I = 0x2

.field private static final GET_GIMBAL_SENIOR_SENSITIVITY:I = 0x4

.field private static final RESET_GIMBAL_FAILED:I = 0x5

.field private static final RESET_GIMBAL_SUCCESS:I = 0x6

.field private static final RESET_GIMBAL_TIMEOUT:I = 0x7

.field private static final SET_GIMBAL_SENIOR_EXTENDS:I = 0x1

.field private static final SET_GIMBAL_SENIOR_SENSITIVITY:I = 0x3


# instance fields
.field private appCompatSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field b:I

.field private ex:I

.field private lastSmt:I

.field private mBack:Landroid/widget/ImageView;

.field private mClose:Landroid/widget/ImageView;

.field private mGimbalExtendsTg:Landroid/widget/ToggleButton;

.field private mGimbalValue:Landroid/widget/TextView;

.field private mResetParamText:Landroid/widget/TextView;

.field private myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private smt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/16 v0, 0x1e

    .line 107
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->b:I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;I)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getSwitchValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mGimbalValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroid/widget/ToggleButton;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mGimbalExtendsTg:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->ex:I

    return p0
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->lastSmt:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->lastSmt:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->smt:I

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->appCompatSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method private getSwitchValue(I)I
    .locals 1

    .line 110
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->b:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v0

    .line 111
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->b:I

    rsub-int/lit8 p1, p1, 0x1e

    return p1
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 42
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_gimbal_senior_set:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 62
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_14:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mClose:Landroid/widget/ImageView;

    .line 50
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mBack:Landroid/widget/ImageView;

    .line 51
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mClose:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_senior_extend_tg:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mGimbalExtendsTg:Landroid/widget/ToggleButton;

    .line 54
    sget p1, Lcom/powervision/aircraft/R$id;->seekbar_senior_sensitivity:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->appCompatSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 55
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_senior_reset_param:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mResetParamText:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/powervision/aircraft/R$id;->gimbal_senior_sensitivity_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mGimbalValue:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 131
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 133
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6b

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto :goto_0

    .line 135
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->gimbal_senior_reset_param:I

    if-ne p1, v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_270:I

    .line 140
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_2:I

    .line 141
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/aircraft/R$string;->AP03_AI_3:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$4;

    invoke-direct {v5, p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V

    new-instance v6, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$5;

    invoke-direct {v6, p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$5;-><init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V

    .line 139
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 118
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_GIM_PITCH_EX"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadGimbalParameter(Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setGetGimbalParameterResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "DOWNLOAD_SUCCESS"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PV_GIM_P_SMT"

    const-string v2, "PV_GIM_PITCH_EX"

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iput p3, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->ex:I

    .line 162
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 164
    iput p3, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->smt:I

    .line 165
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string p3, "UPLOAD_SUCCESS"

    .line 167
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 168
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setGimbalResetAllParamResultinfoFailed()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setGimbalResetAllParamResultinfoSuccess()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setGimbalResetAllParamResultinfoTimeout()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->myHandler:Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 68
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mResetParamText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03NotifyOnGimbalParameterResultIntListener(Lcom/powervision/sdk/callback/Ap03NotifyOnGimbalParameterResultIntListener;)V

    .line 72
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03OnResetAllParamResultListener(Lcom/powervision/natives/PowerSDKCallback$Ap03OnResetAllParamResultListener;)V

    .line 73
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->appCompatSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;->mGimbalExtendsTg:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/GimbalSeniorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
