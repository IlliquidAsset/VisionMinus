.class public Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "CameraPhotoSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/view/ICameraPhotoView;
.implements Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;",
        "Lcom/powervision/camera/model/impl/CameraPhotoModel;",
        ">;",
        "Lcom/powervision/camera/ui/view/ICameraPhotoView;",
        "Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;"
    }
.end annotation


# static fields
.field private static isHandle:Z = false


# instance fields
.field private lastMode:Ljava/lang/String;

.field private mPhotoAdapter:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->lastMode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;)Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPhotoAdapter:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    return-object p0
.end method

.method public static getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;
    .locals 0

    .line 49
    sput-boolean p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->isHandle:Z

    .line 50
    new-instance p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    invoke-direct {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 55
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_camera_photo_setting_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;

    invoke-virtual {v0}, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->getCameraPhotoData()Ljava/util/List;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    invoke-direct {v1, v0}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPhotoAdapter:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    .line 67
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 69
    new-instance v1, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;-><init>(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 82
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->updatePhotoIcon(Ljava/lang/String;)V

    .line 86
    sget-boolean v0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->isHandle:Z

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "air_main_mode"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraPhotoSettingFragment$pdWIW6eo8AYBmhtIP_aWCSCQbZM;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraPhotoSettingFragment$pdWIW6eo8AYBmhtIP_aWCSCQbZM;-><init>(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    sget p1, Lcom/lewis/camera/R$id;->camera_photo_recycler:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public synthetic lambda$initData$0$CameraPhotoSettingFragment(Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initData: lastMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->lastMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->lastMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->lastMode:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPhotoAdapter:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    const-string v1, "FOLLOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setFollowOpen(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$notifyAdapter$1$CameraPhotoSettingFragment()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPhotoAdapter:Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;

    invoke-virtual {v1}, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->getCameraPhotoData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public notifyAdapter()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraPhotoSettingFragment$oCMJfZ_34Bz2k0sZwyKDn8Ms3rs;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraPhotoSettingFragment$oCMJfZ_34Bz2k0sZwyKDn8Ms3rs;-><init>(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;

    invoke-virtual {v0}, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->removeListeners()V

    .line 206
    :cond_0
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onGetCustomStyleValue()V
    .locals 2

    const-string v0, "p_camera"

    const-string v1, "onGetCustomStyleValue()..notify adapter ......"

    .line 196
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->notifyAdapter()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onPause()V

    const-string v0, "helin"

    const-string v1, "onPause: "

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 106
    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->lastMode:Ljava/lang/String;

    return-void
.end method

.method public onPhotoResolutionChange(Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    return-void
.end method

.method public onSetCaptureMode(Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onSetContrast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetLuminance(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetPhotoStyle(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "0"

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getStyleMode()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const-string p1, "p_camera"

    const-string p2, "onSetPhotoStyle = ....  get \u3002\u3002\u3002\u3002camer  custom value "

    .line 167
    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getPhotoStyle()V

    :cond_0
    return-void
.end method

.method public onSetSaturation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetWhiteBalance(Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onVideoResolutionChange(Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 112
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;

    invoke-virtual {v0}, Lcom/powervision/camera/presenter/impl/CameraPhotoPresenter;->setListener()V

    return-void
.end method

.method public setPhotoFileFormat(Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method
