.class public Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "LiveStreamFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private liveBtnStatusArray:Landroid/util/SparseIntArray;

.field private mBack:Landroid/widget/ImageView;

.field private mClose:Landroid/widget/ImageView;

.field private mCustomStream:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 31
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_live_stream_setting_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 37
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->mBack:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->mClose:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/powervision/aircraft/R$id;->custom_layout:I

    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->mCustomStream:Landroid/widget/RelativeLayout;

    .line 41
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->mBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_DV_GeneralSetting_39:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$setListener$0$LiveStreamFragment(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeGeneralSettingLayout(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public synthetic lambda$setListener$1$LiveStreamFragment(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/16 v0, 0x6e

    invoke-static {p1, v0}, Lcom/powervision/aircraft/utils/SettingUtils;->removeSecondaryFragment(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 61
    sget v0, Lcom/powervision/aircraft/R$id;->custom_layout:I

    if-ne p1, v0, :cond_2

    .line 62
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->isLiveRunning()Z

    move-result p1

    const/16 v0, 0xf43

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    .line 65
    invoke-virtual {p1, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/utils/SettingUtils;->closeView(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Check_22:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 83
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 53
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->mClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LiveStreamFragment$jilMAeqOWcZvNAE6CPrWUewxXpw;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LiveStreamFragment$jilMAeqOWcZvNAE6CPrWUewxXpw;-><init>(Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LiveStreamFragment$2z5M6ooSe6GVjNcmJJ0bXCeZ6RI;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$LiveStreamFragment$2z5M6ooSe6GVjNcmJJ0bXCeZ6RI;-><init>(Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/LiveStreamFragment;->mCustomStream:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
