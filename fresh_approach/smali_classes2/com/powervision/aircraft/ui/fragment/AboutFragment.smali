.class public Lcom/powervision/aircraft/ui/fragment/AboutFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AboutFragment.java"

# interfaces
.implements Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;
.implements Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;
.implements Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;


# instance fields
.field private count:I

.field private dl03Version:Ljava/lang/String;

.field private mAdapter:Lcom/powervision/aircraft/adapter/AboutAdapter;

.field private mBack:Landroid/widget/ImageView;

.field private mClose:Landroid/widget/ImageView;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/model/bean/AboutItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mcuVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->count:I

    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/ui/fragment/AboutFragment;
    .locals 1

    .line 66
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dl01BSOper(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u83b7\u53d6\u5230dl01\u7248\u672c:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nemoremotever"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput-object p3, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->dl03Version:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 71
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_about_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 96
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->intergrationUpgradeGetVersion()I

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mAdapter:Lcom/powervision/aircraft/adapter/AboutAdapter;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$jpQSMC69WTQsELxqaAPqz1w8I7w;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$jpQSMC69WTQsELxqaAPqz1w8I7w;-><init>(Lcom/powervision/aircraft/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/adapter/AboutAdapter;->setOnClickListener(Lcom/powervision/aircraft/adapter/AboutAdapter$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;->setVersionCode(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->getDl01Version()V

    .line 108
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "PV_RC_VER_STD"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadRemoteParameter(Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$bS_nWf2lyaCfGYlmz0VW5SlX4Iw;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$bS_nWf2lyaCfGYlmz0VW5SlX4Iw;-><init>(Lcom/powervision/aircraft/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_MCUVERSION()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mcuVersion:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager$FirmWareStc;->getDev_DL01VERSION()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->dl03Version:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->dl03Version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mcuVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;->setVersionCode(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "AP03_ACTIVATION_PSN_CODE"

    const-string v3, "N/A"

    invoke-virtual {v1, v2, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;->setVersionCode(Ljava/lang/String;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mBack:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mClose:Landroid/widget/ImageView;

    .line 79
    sget v0, Lcom/powervision/aircraft/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_224:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    const-string v2, "APP"

    const-string v3, "N/A"

    invoke-direct {v0, v2, v3, v1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_227:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_35_1:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_230:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance p1, Lcom/powervision/aircraft/adapter/AboutAdapter;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/powervision/aircraft/adapter/AboutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mAdapter:Lcom/powervision/aircraft/adapter/AboutAdapter;

    .line 90
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 91
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mAdapter:Lcom/powervision/aircraft/adapter/AboutAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public synthetic lambda$initData$0$AboutFragment(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 99
    iget p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->count:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 p2, 0x6d

    invoke-static {p1, p2, p0}, Lcom/powervision/aircraft/utils/SettingUtils;->addSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;ILandroidx/fragment/app/Fragment;)V

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->count:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$initData$1$AboutFragment(Landroid/view/View;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x67

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    return-void
.end method

.method public synthetic lambda$onIntegrationUpgradeGetVersionSuccess$3$AboutFragment(Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/AboutItemBean;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/AboutItemBean;->setVersionCode(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mAdapter:Lcom/powervision/aircraft/adapter/AboutAdapter;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/adapter/AboutAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$setListener$2$AboutFragment(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 119
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->removeListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 120
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->removeAp03IntegrationUpgradeGetVersionStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;)V

    .line 121
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->removeListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    return-void
.end method

.method public onIntegrationUpgradeGetVersionSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_"

    const/16 v1, 0xc

    .line 134
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "BP_FIRMWARE_VERSION"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$bxjDZGrMxjPRL_iSjrEDcZO_Ra0;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$bxjDZGrMxjPRL_iSjrEDcZO_Ra0;-><init>(Lcom/powervision/aircraft/ui/fragment/AboutFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoteParameterDownloadFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterDownloadSuccess(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "PV_RC_VER_STD"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u83b7\u53d6\u5230mcu\u7248\u672c:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nemoremotever"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-boolean p1, Lcn/powervision/upgrade/manager/MatchUtil;->updating:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x37

    .line 154
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 159
    :cond_0
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mcuVersion:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onRemoteParameterDownloadTimeOut()V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadSuccess(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRemoteParameterUploadTimeOut()V
    .locals 0

    return-void
.end method

.method public setIntegrationUpgradeGetVersionTimeout()V
    .locals 2

    const-string v0, "about"

    .line 145
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u7248\u672c\u53f7\u8d85\u65f6"

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AboutFragment;->mClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$7mNzM_OQfATGen2Q3GwhURx8vIo;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AboutFragment$7mNzM_OQfATGen2Q3GwhURx8vIo;-><init>(Lcom/powervision/aircraft/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03OnIntegrationUpgradeGetVersionStatusListener(Lcom/powervision/natives/callback/UpgradeCallback$Ap03OnIntegrationUpgradeGetVersionStatusListener;)V

    .line 128
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->addAp03RemoteModeResultListener(Lcom/powervision/sdk/callback/Ap03RemoteModeResultListener;)V

    .line 129
    invoke-static {}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->get()Lcom/powervision/gcs/manager/Dl01BsOperHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Dl01BsOperHelper;->addListener(Lcom/powervision/natives/callback/RemoteControlCallback$Dl01BSOperListener;)V

    return-void
.end method
