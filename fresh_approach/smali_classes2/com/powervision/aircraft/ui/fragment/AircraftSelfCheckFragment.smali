.class public Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AircraftSelfCheckFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/aircraft/ui/view/ISelfCheckView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;",
        "Lcom/powervision/aircraft/model/impl/SelfCheckModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/aircraft/ui/view/ISelfCheckView;"
    }
.end annotation


# instance fields
.field private isTempWarn:Z

.field private lastMode:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mClose:Landroid/widget/ImageView;

.field private mHeaderView:Landroid/view/View;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/aircraft/model/bean/SelfCheckItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

.field private mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

.field private tempMode:I

.field private tryTime:I

.field private waterMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->lastMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->tryTime:I

    .line 373
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->isTempWarn:Z

    return-void
.end method

.method private initListData()V
    .locals 5

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$array;->aircraft_self_check_titles:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$array;->aircraft_self_check_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 114
    new-instance v3, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-direct {v3}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;-><init>()V

    .line 115
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setTitle(Ljava/lang/String;)V

    .line 116
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static newInstance(I)Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;
    .locals 3

    .line 58
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mode"

    .line 60
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 75
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_self_check_fragment_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 93
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->initListData()V

    .line 94
    new-instance v0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 96
    new-instance v1, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-direct {v1, v0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mRecyclerView:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->addHeaderView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->init()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    sget p1, Lcom/powervision/aircraft/R$id;->self_check_recycler_views:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mRecyclerView:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    .line 82
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 84
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mRecyclerView:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_self_check_adapter_list_header:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mRecyclerView:Lcom/powervision/aircraft/ui/views/HeaderRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mHeaderView:Landroid/view/View;

    .line 88
    sget v0, Lcom/powervision/aircraft/R$id;->self_check_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mClose:Landroid/widget/ImageView;

    return-void
.end method

.method public synthetic lambda$updateBatteryInfo$4$AircraftSelfCheckFragment(II)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/16 v1, 0xc

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=====isTempWarn==="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->isTempWarn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adsfasdfadfadfsfdadfaf"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->isTempWarn:Z

    const/16 v0, 0xd

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u2103"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setTempWarn(Z)V

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemRangeData(II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$updateFlyMode$0$AircraftSelfCheckFragment(Ljava/lang/String;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "self"

    .line 165
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 168
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateGimbalState$8$AircraftSelfCheckFragment(II)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-static {p1, p2}, Lcom/powervision/base/utils/WarnUtil;->getGimbalState(II)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 336
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateRemoteCustomKey$6$AircraftSelfCheckFragment(I)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v0}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->getCustomKey()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setCustomKey(I)V

    .line 298
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateRemoteElectric$3$AircraftSelfCheckFragment(I)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    .line 232
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateRemoteMode$5$AircraftSelfCheckFragment(Ljava/lang/String;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateSDCardAndEmmSize$7$AircraftSelfCheckFragment(II)V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/powervision/camera/utils/CameraUtil;->formatGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GB"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/powervision/camera/utils/CameraUtil;->formatGB(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1, v2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemRangeData(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateSelfCheckHealthInfo$9$AircraftSelfCheckFragment(I)V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 385
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_ConnectGuide_52_3:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    .line 388
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_ConnectGuide_52_2:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    .line 392
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    const/4 v3, 0x6

    invoke-static {p1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 393
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {v0, v2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    const/16 v0, 0x1d

    .line 394
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->isTempWarn:Z

    if-eqz p1, :cond_2

    .line 396
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Check_21:I

    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setValue(Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setTempWarn(Z)V

    .line 398
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$updateSelfCheckInfo$1$AircraftSelfCheckFragment(I)V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 183
    invoke-static {p1, v0}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    const/4 v2, 0x6

    .line 184
    invoke-static {p1, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v2

    .line 185
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v3, v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setNeedCalibration(Z)V

    .line 186
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setLargeInterference(Z)V

    .line 188
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->isIMUNormal(I)Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 189
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->isIMUNeedCalibrate(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setNeedCalibration(Z)V

    .line 191
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 193
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    const/4 v3, 0x7

    invoke-static {p1, v3}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 195
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/powervision/base/utils/WarnUtil;->isWarn(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 197
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getVisualState(I)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 199
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getArmState(I)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 200
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v4, v2}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemRangeData(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateSelfCheckWarnInfo$2$AircraftSelfCheckFragment(I)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;

    invoke-static {p1}, Lcom/powervision/base/utils/WarnUtil;->getESCState(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->setError(Z)V

    .line 216
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mSelfCheckWrapAdapter:Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;

    invoke-virtual {p1, v1}, Lcom/powervision/aircraft/adapter/SelfCheackWrapAdapter;->notifyItemData(I)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 54
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 127
    sget v0, Lcom/powervision/aircraft/R$id;->self_check_close:I

    if-ne p1, v0, :cond_0

    .line 128
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xb7

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->removeListener()V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 407
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/SelfCheckPresenter;->requestRemoteMode()V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateBatteryInfo(II)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 248
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$ZMvZXxJLlZmazuvucRbMZWHU9DI;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$ZMvZXxJLlZmazuvucRbMZWHU9DI;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateFlyMode(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->lastMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->lastMode:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 163
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$xKst6V57Tfq-FVaXdMz4DHTBbPw;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$xKst6V57Tfq-FVaXdMz4DHTBbPw;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public updateGimbalState(II)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 332
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Kx09xMvsGUMGSFFmKPta1z9kJro;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateRemoteCustomKey(I)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 295
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$UGGuKVGrNbkn1E7VfNVKAFMwQvg;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$UGGuKVGrNbkn1E7VfNVKAFMwQvg;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateRemoteElectric(I)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$XRLEt5ZU2bohYbGtGcLqNU5G6XU;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$XRLEt5ZU2bohYbGtGcLqNU5G6XU;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateRemoteMode(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 272
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_106:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 274
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_108:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 276
    :cond_1
    sget p1, Lcom/powervision/aircraft/R$string;->AP03_GeneralSetting_107:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Vg6O0M4FPWVXOR1Ki6Lc15NtRZ0;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Vg6O0M4FPWVXOR1Ki6Lc15NtRZ0;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public updateSDCardAndEmmSize(II)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 313
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$vMULoPc3jbIioxXB2ATI9Kk_LtY;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$vMULoPc3jbIioxXB2ATI9Kk_LtY;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateSelfCheckHealthInfo(I)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 383
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Yt9ikUS_N_po-Jpet5BBpmI_KEk;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$Yt9ikUS_N_po-Jpet5BBpmI_KEk;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateSelfCheckInfo(I)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$LWt5i8AMXdfjgD5-vMSzcNP6dwY;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$LWt5i8AMXdfjgD5-vMSzcNP6dwY;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateSelfCheckWarnInfo(I)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$WMqshoWZkGLXFVrSskZtDUcsKsY;

    invoke-direct {v1, p0, p1}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$AircraftSelfCheckFragment$WMqshoWZkGLXFVrSskZtDUcsKsY;-><init>(Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateWaterMode(I)V
    .locals 0

    return-void
.end method
