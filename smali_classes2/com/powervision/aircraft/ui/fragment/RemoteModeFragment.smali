.class public Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "RemoteModeFragment.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;
    }
.end annotation


# static fields
.field private static final REMOTE_MODE_GET_FAILED:I = 0x4

.field private static final REMOTE_MODE_GET_SUCCESS:I = 0x3

.field private static final REMOTE_MODE_SET_FAILED:I = 0x2

.field private static final REMOTE_MODE_SET_SUCCESS:I = 0x1


# instance fields
.field private isRemoteModeChecked:Z

.field private mBack:Landroid/widget/ImageView;

.field private mClose:Landroid/widget/ImageView;

.field private mLeftRockerImg2:Landroid/widget/ImageView;

.field private mLeftRockerText1:Landroid/widget/TextView;

.field private mLeftRockerText2:Landroid/widget/TextView;

.field private mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRightRockerImg2:Landroid/widget/ImageView;

.field private mRightRockerText1:Landroid/widget/TextView;

.field private mRightRockerText2:Landroid/widget/TextView;

.field private remoteMode:I

.field private remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    .line 54
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;Landroid/os/Message;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 2

    .line 70
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 90
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_12:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/FlightLogUtil;->setLocalRemoteMode(I)V

    .line 86
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->setChecked()V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_12:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->setChecked()V

    goto :goto_0

    .line 72
    :cond_4
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/AudioUtil;->playAudio(I)V

    .line 73
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_185:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 74
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v0, 0x0

    .line 75
    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;
    .locals 1

    .line 118
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;-><init>()V

    return-object v0
.end method

.method private setChecked()V
    .locals 2

    .line 100
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcom/powervision/aircraft/R$id;->rocker_japan_hand:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcom/powervision/aircraft/R$id;->rocker_american_hand:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcom/powervision/aircraft/R$id;->rocker_china_hand:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcom/powervision/aircraft/R$id;->rocker_china_hand:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 123
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_remote_mode_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 1

    .line 145
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_104:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mClose:Landroid/widget/ImageView;

    .line 131
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mBack:Landroid/widget/ImageView;

    .line 132
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mClose:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    sget p1, Lcom/powervision/aircraft/R$id;->mode_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 135
    sget p1, Lcom/powervision/aircraft/R$id;->left_rocker_mode2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerImg2:Landroid/widget/ImageView;

    .line 136
    sget p1, Lcom/powervision/aircraft/R$id;->left_rocker_mode1_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText1:Landroid/widget/TextView;

    .line 137
    sget p1, Lcom/powervision/aircraft/R$id;->left_rocker_mode2_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText2:Landroid/widget/TextView;

    .line 138
    sget p1, Lcom/powervision/aircraft/R$id;->right_rocker_mode2:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerImg2:Landroid/widget/ImageView;

    .line 139
    sget p1, Lcom/powervision/aircraft/R$id;->right_rocker_mode1_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText1:Landroid/widget/TextView;

    .line 140
    sget p1, Lcom/powervision/aircraft/R$id;->right_rocker_mode2_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText2:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$setListener$0$RemoteModeFragment(Landroid/widget/RadioGroup;I)V
    .locals 2

    const-string p1, "remotemode"

    .line 166
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRemoteModeChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 167
    sget p1, Lcom/powervision/aircraft/R$id;->rocker_japan_hand:I

    const-string v0, "PV_RC_MODE"

    if-ne p2, p1, :cond_1

    .line 168
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerImg2:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_rocker_mode2:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerImg2:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_rocker_mode3:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 174
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText1:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_114:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText2:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_113:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText1:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_112:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText2:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_115:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$id;->rocker_american_hand:I

    if-ne p2, p1, :cond_3

    .line 180
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    if-nez p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 p2, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerImg2:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_rocker_mode2:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerImg2:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_rocker_mode3:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 186
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText1:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_112:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText2:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_113:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText1:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_114:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText2:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_115:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_3
    sget p1, Lcom/powervision/aircraft/R$id;->rocker_china_hand:I

    if-ne p2, p1, :cond_5

    .line 192
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    if-nez p1, :cond_4

    .line 193
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 p2, 0x3

    invoke-virtual {p1, v0, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerImg2:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_rocker_mode3:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerImg2:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/aircraft/R$mipmap;->aircraft_rocker_mode2:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 198
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText1:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_114:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mLeftRockerText2:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_115:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText1:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_112:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRightRockerText2:Landroid/widget/TextView;

    sget p2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_113:I

    invoke-virtual {p0, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string p1, "\u6b63\u5728\u5f00\u53d1\u4e2d"

    .line 204
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 214
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    const/16 v1, 0xd4

    if-ne p1, v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x68

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    goto :goto_0

    .line 220
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    .line 159
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->removeListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    return-void
.end method

.method public onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
    .locals 1

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==setRemotemodeonRemoteParameterDownloadFailed==="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "remotemode"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==setRemotemode==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remotemode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PV_RC_MODE"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    if-eq p1, p2, :cond_0

    .line 243
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;->sendEmptyMessage(I)Z

    .line 244
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    :cond_0
    return-void
.end method

.method public onRemoteParameterDownloadTimeOut()V
    .locals 2

    const-string v0, "remotemode"

    const-string v1, "==setRemotemode===onRemoteParameterDownloadTimeOut"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRemoteParameterUploadFailed(Ljava/lang/String;I)V
    .locals 1

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==setRemotemodeonRemoteParameterUploadFailed==="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "remotemode"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    .line 253
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    return-void
.end method

.method public onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==setRemotemodeonRemoteParameterUploadSuccess==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remotemode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PV_RC_MODE"

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    if-eq p1, p2, :cond_0

    .line 233
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;->sendEmptyMessage(I)Z

    .line 234
    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteMode:I

    .line 235
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "PV_REMOTE_MODE"

    invoke-virtual {p1, v0, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRemoteParameterUploadTimeOut()V
    .locals 2

    const-string v0, "remotemode"

    const-string v1, "==setRemotemodeononRemoteParameterUploadTimeOut==="

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->remoteModeHandler:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment$RemoteModeHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->isRemoteModeChecked:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    const-string v0, "remotemode"

    .line 151
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "onResume() mode"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->addAp03RemoteModeResultListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 153
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mPowerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "PV_RC_MODE"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadRemoteParameter(Ljava/lang/String;)I

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 164
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 165
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteModeFragment$fVwDpBoONMVDTZ-Oi_zq78z3r2Y;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$RemoteModeFragment$fVwDpBoONMVDTZ-Oi_zq78z3r2Y;-><init>(Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
