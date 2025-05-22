.class public Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "CameraBasicSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/view/ICameraBasicView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;",
        "Lcom/powervision/camera/model/impl/CameraBasicModel;",
        ">;",
        "Lcom/powervision/camera/ui/view/ICameraBasicView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private isAuto:Z

.field private listener:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;

.field private mAuto:Landroid/widget/TextView;

.field private mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHand:Landroid/widget/TextView;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    return-void
.end method

.method public static getInstance()Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;
    .locals 1

    .line 55
    new-instance v0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    invoke-direct {v0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 60
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_camera_basic_setting_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    new-instance v0, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    .line 83
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    sget p1, Lcom/lewis/camera/R$id;->camera_base_auto:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mAuto:Landroid/widget/TextView;

    .line 66
    sget p1, Lcom/lewis/camera/R$id;->camera_base_hand:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mHand:Landroid/widget/TextView;

    .line 67
    sget p1, Lcom/lewis/camera/R$id;->camera_base_recycler:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-void
.end method

.method public synthetic lambda$notifyAdapterDataOnUIThread$0$CameraBasicSettingFragment()V
    .locals 1

    .line 206
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 207
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->notifyAdapterData()V

    return-void
.end method

.method public synthetic lambda$onVideoResolutionChangeToView$1$CameraBasicSettingFragment()V
    .locals 0

    .line 224
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->notifyAdapter()V

    return-void
.end method

.method public notifyAdapter()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    iget-boolean v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;

    invoke-virtual {v1}, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->getAutoCameraBasicData()Landroid/util/SparseArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;

    .line 135
    invoke-virtual {v1}, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->getCameraBasicData()Landroid/util/SparseArray;

    move-result-object v1

    .line 134
    :goto_0
    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->setData(Landroid/util/SparseArray;)V

    :cond_1
    return-void
.end method

.method public notifyAdapterData()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->updateAutoHandCheckStatus()V

    .line 230
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->notifyAdapter()V

    return-void
.end method

.method public notifyAdapterDataOnUIThread()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraBasicSettingFragment$A3uinBXozy0qFJ6HH9VIJ1YoACU;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraBasicSettingFragment$A3uinBXozy0qFJ6HH9VIJ1YoACU;-><init>(Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraAllParameters()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 102
    sget v0, Lcom/lewis/camera/R$id;->camera_base_auto:I

    const-string v1, "s_camera"

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    .line 103
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->isEvOnly()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-boolean p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    if-nez p1, :cond_4

    .line 107
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setExposureMode(I)V

    const-string p1, "    set \u5207\u6362\u6a21\u5f0f  000000000000 ;"

    .line 108
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    sget v0, Lcom/lewis/camera/R$id;->camera_base_hand:I

    if-ne p1, v0, :cond_4

    .line 111
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->isEvOnly()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    if-ne p1, v2, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    iget-boolean p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    if-eqz p1, :cond_4

    .line 115
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setExposureMode(I)V

    const-string p1, "  set  \u5207\u6362\u6a21\u5f0f  11111111111111111;"

    .line 116
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;

    invoke-virtual {v0}, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->removeListeners()V

    .line 239
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 241
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onVideoResolutionChangeToView()V
    .locals 2

    .line 218
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraBasicSettingFragment$5zOEDo-rA7S0nkYZb1YKI61kNIY;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraBasicSettingFragment$5zOEDo-rA7S0nkYZb1YKI61kNIY;-><init>(Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setEvPickerView(Ljava/lang/String;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->getEvPickerView()Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-virtual {v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 155
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->listener:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;->update()V

    :cond_0
    if-eqz v0, :cond_1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 159
    invoke-virtual {v0, p1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    :cond_1
    return-void
.end method

.method public setExposureModeResult(Ljava/lang/String;)V
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setExposureModeResult() ...result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "s_camera"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 193
    :goto_0
    iput-boolean p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    .line 194
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->notifyAdapterDataOnUIThread()V

    goto :goto_1

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setIsoPickerView(Ljava/lang/String;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->getIsodPickerView()Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-virtual {v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 143
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->listener:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v1}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;->update()V

    :cond_0
    if-eqz v0, :cond_1

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 147
    invoke-virtual {v0, p1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    :cond_1
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mAuto:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mHand:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;

    invoke-virtual {v0}, Lcom/powervision/camera/presenter/impl/CameraBasicPresenter;->setListener()V

    .line 76
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->updateContentViews()V

    return-void
.end method

.method public setListener(Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->listener:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;

    return-void
.end method

.method public setMeteringModePickerView(Ljava/lang/String;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->getMeteringModePickerView()Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    .line 178
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-virtual {v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 179
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->listener:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;->update()V

    :cond_0
    if-eqz v0, :cond_1

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 183
    invoke-virtual {v0, p1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    :cond_1
    return-void
.end method

.method public setShutterPickerView(Ljava/lang/String;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mBasicAdapter:Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraBasicAdapter;->getShutterPickerView()Lcom/powervision/base/views/HPickerView;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-virtual {v1, v2}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 167
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->listener:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v1}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment$UpdateParamListener;->update()V

    :cond_0
    if-eqz v0, :cond_1

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 171
    invoke-virtual {v0, p1}, Lcom/powervision/base/views/HPickerView;->setCallBackResult(Z)V

    :cond_1
    return-void
.end method

.method public updateAutoHandCheckStatus()V
    .locals 3

    .line 122
    iget-boolean v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mHand:Landroid/widget/TextView;

    sget v2, Lcom/lewis/camera/R$drawable;->solid_rectangle_blue_radius15:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mAuto:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mAuto:Landroid/widget/TextView;

    sget v2, Lcom/lewis/camera/R$drawable;->solid_rectangle_blue_radius15:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->mHand:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public updateContentViews()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getExposureMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   -----> \u662f\u5426\u662f\u81ea\u52a8   isAuto= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera__m"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->notifyAdapter()V

    .line 94
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->updateAutoHandCheckStatus()V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateContentViews() ...isAuto ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->isAuto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n_camera"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
