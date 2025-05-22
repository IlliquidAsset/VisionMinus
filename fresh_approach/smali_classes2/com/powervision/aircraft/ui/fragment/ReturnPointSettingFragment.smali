.class public Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "ReturnPointSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;
.implements Lcom/powervision/sdk/callback/Ap03ReturnPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;
    }
.end annotation


# instance fields
.field private airMapManager:Lcom/powervision/map/manager/AirMapManager;

.field private aircraftReturn:Landroid/widget/TextView;

.field private aircraftText:Landroid/widget/TextView;

.field private handler:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;

.field private mBackBt:Landroid/widget/ImageView;

.field private mCloseBt:Landroid/widget/ImageView;

.field private mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field private mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

.field private mTitle:Landroid/widget/TextView;

.field private mapLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private startLocationText:Landroid/widget/TextView;

.field private startReturn:Landroid/widget/TextView;

.field private userLocationText:Landroid/widget/TextView;

.field private userReturn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->swtichButtonUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;Landroid/os/Message;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x447f341d

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x238526bf

    if-eq v1, v2, :cond_1

    const v2, 0x7b29883d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, "timeout"

    .line 242
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "fail"

    .line 239
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-nez p1, :cond_7

    .line 226
    invoke-direct {p0, v5}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->swtichButtonUI(I)V

    goto :goto_2

    :cond_7
    if-ne p1, v5, :cond_8

    .line 228
    invoke-direct {p0, v3}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->swtichButtonUI(I)V

    goto :goto_2

    :cond_8
    if-ne p1, v4, :cond_9

    .line 230
    invoke-direct {p0, v4}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->swtichButtonUI(I)V

    .line 232
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_Msg_71:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    invoke-virtual {v0, v4}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    .line 234
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v1, 0xf23

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private swtichButtonUI(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userLocationText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startLocationText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userLocationText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startLocationText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 152
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userLocationText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startLocationText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftReturn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 63
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_return_point_setting_layout:I

    return v0
.end method

.method public getReturnPointStatus(Ljava/lang/String;I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->handler:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 176
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 177
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x64

    .line 178
    iput p1, v0, Landroid/os/Message;->what:I

    .line 179
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->handler:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getReturnPotinInfo(III)V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;

    invoke-direct {p2, p0, p3}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initData()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 101
    invoke-static {}, Lcom/powervision/map/manager/AirMapManager;->getInstance()Lcom/powervision/map/manager/AirMapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->airMapManager:Lcom/powervision/map/manager/AirMapManager;

    .line 102
    new-instance v0, Lcom/powervision/sdk/dto/MapLocationDto;

    invoke-direct {v0}, Lcom/powervision/sdk/dto/MapLocationDto;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mapLocationDto:Lcom/powervision/sdk/dto/MapLocationDto;

    .line 103
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;-><init>(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->handler:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;

    .line 104
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/SoundPoolUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/SoundPoolUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mSoundUtil:Lcom/powervision/base/utils/SoundPoolUtils;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mBackBt:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mBackBt:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 85
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mCloseBt:Landroid/widget/ImageView;

    .line 86
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mTitle:Landroid/widget/TextView;

    .line 87
    sget p1, Lcom/powervision/aircraft/R$id;->return_point_user_status_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userReturn:Landroid/widget/TextView;

    .line 88
    sget p1, Lcom/powervision/aircraft/R$id;->return_starting_point_status_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startReturn:Landroid/widget/TextView;

    .line 89
    sget p1, Lcom/powervision/aircraft/R$id;->current_location_status_bt:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftReturn:Landroid/widget/TextView;

    .line 91
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_user_location_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userLocationText:Landroid/widget/TextView;

    .line 92
    sget p1, Lcom/powervision/aircraft/R$id;->return_starting_point_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startLocationText:Landroid/widget/TextView;

    .line 93
    sget p1, Lcom/powervision/aircraft/R$id;->current_location_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftText:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 110
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    if-ne p1, v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    goto :goto_1

    .line 112
    :cond_0
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    if-ne p1, v0, :cond_1

    .line 113
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mContext:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_1

    .line 114
    :cond_1
    sget v0, Lcom/powervision/aircraft/R$id;->return_point_user_status_bt:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 115
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLatitude()D

    move-result-wide v2

    double-to-float p1, v2

    .line 116
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/FlightLogUtil;->getUserLongitude()D

    move-result-wide v2

    double-to-float v0, v2

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_3

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    new-instance v2, Lcom/powervision/base/model/LatLong;

    float-to-double v3, p1

    float-to-double v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/powervision/base/model/LatLong;-><init>(DD)V

    .line 127
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v0, 0x2

    invoke-virtual {v2}, Lcom/powervision/base/model/LatLong;->getLatitude()D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    const-wide/high16 v7, 0x401c000000000000L    # 7.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v3, v3, v9

    double-to-float v3, v3

    .line 128
    invoke-virtual {v2}, Lcom/powervision/base/model/LatLong;->getLongitude()D

    move-result-wide v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v9, v9, v4

    double-to-float v2, v9

    .line 127
    invoke-virtual {p1, v0, v3, v2, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setReturnPoint(IFFF)I

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 129
    :cond_4
    sget v0, Lcom/powervision/aircraft/R$id;->return_starting_point_status_bt:I

    if-ne p1, v0, :cond_5

    .line 130
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setReturnPoint(IFFF)I

    goto :goto_1

    .line 131
    :cond_5
    sget v0, Lcom/powervision/aircraft/R$id;->current_location_status_bt:I

    if-ne p1, v0, :cond_6

    .line 132
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setReturnPoint(IFFF)I

    :cond_6
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 249
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03ReturnPointListener(Lcom/powervision/sdk/callback/Ap03ReturnPointListener;)V

    .line 250
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->handler:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$ReturnSetHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getHomePoint()I

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 69
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->userReturn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->startReturn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->aircraftReturn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnSetReturnPointListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnSetReturnPointListener;)V

    .line 75
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03ReturnPointListener(Lcom/powervision/sdk/callback/Ap03ReturnPointListener;)V

    return-void
.end method
