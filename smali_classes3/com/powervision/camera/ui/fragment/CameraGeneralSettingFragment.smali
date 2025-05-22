.class public Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "CameraGeneralSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/ui/view/ICameraGeneralView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseFragment<",
        "Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;",
        "Lcom/powervision/camera/model/impl/CameraGeneralModel;",
        ">;",
        "Lcom/powervision/camera/ui/view/ICameraGeneralView;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraGeneralSettingFra"

.field private static isHandHeld:Z


# instance fields
.field private cameraManager:Lcom/powervision/camera/camera/CameraManager;

.field private mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private sparseIntArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)Lcom/powervision/camera/camera/CameraManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-object p0
.end method

.method public static getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;
    .locals 0

    .line 58
    sput-boolean p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->isHandHeld:Z

    .line 59
    new-instance p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    invoke-direct {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$onResetResult$0(Ljava/lang/String;)V
    .locals 2

    .line 272
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 273
    invoke-static {p0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    return-void
.end method

.method private notifyAntiFlickerModeView()V
    .locals 9

    .line 354
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    .line 355
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 356
    check-cast v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    .line 357
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getAntiFlickerMode()I

    move-result v1

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...notifyAntiFlickerModeView() ... mAntiFlickerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "afworknot"

    invoke-static {v3, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const-string v2, "50Hz"

    .line 365
    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    const-string v2, "60Hz"

    .line 367
    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_49:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    .line 371
    :goto_0
    invoke-virtual {v0}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItems()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 372
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 373
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    const/4 v7, 0x1

    if-ne v1, v5, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v6, v8}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    if-nez v5, :cond_5

    .line 375
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    goto :goto_6

    :cond_5
    if-ne v5, v7, :cond_7

    .line 377
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    if-ne v1, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6, v7}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    goto :goto_6

    :cond_7
    if-ne v5, v4, :cond_9

    .line 379
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    if-ne v1, v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6, v7}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 382
    :cond_a
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 64
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_camera_general_setting_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mModel:Lcom/powervision/base/base/BaseModel;

    check-cast v1, Lcom/powervision/camera/model/impl/CameraGeneralModel;

    sget-boolean v2, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->isHandHeld:Z

    invoke-virtual {v1, v0, v2}, Lcom/powervision/camera/model/impl/CameraGeneralModel;->getCameraGeneralData(Landroidx/fragment/app/FragmentActivity;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mList:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v1, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;

    iget-object v2, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->setData(Ljava/util/List;)V

    .line 88
    new-instance v1, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    iget-object v2, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mList:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;-><init>(Ljava/util/List;Landroidx/fragment/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    .line 89
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    new-instance v1, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$1;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->setCheckedChangeListener(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$CheckedChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    new-instance v1, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$2;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->setGridAndDiagonalCallBack(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$GridAndDiagonalCallBack;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    new-instance v1, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$3;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->setShowDialogCallBack(Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter$ShowDialogCallBack;)V

    .line 235
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->notifyLinesView()V

    .line 236
    invoke-direct {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->notifyAntiFlickerModeView()V

    .line 237
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->notifyStorageTypeData()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    sget p1, Lcom/lewis/camera/R$id;->camera_general_recycler:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public synthetic lambda$onNotifyEnableAudioStatus$4$CameraGeneralSettingFragment(Ljava/lang/String;)V
    .locals 3

    const-string v0, "0"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0xd2

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraAudioState()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 470
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onNotifyEnableResistbLinkStatus$3$CameraGeneralSettingFragment()V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->notifyAntiFlickerModeView()V

    return-void
.end method

.method public synthetic lambda$onNotifyHeadlightLogoStatus$2$CameraGeneralSettingFragment()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$onNotifyWaterLogoStatus$1$CameraGeneralSettingFragment()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyAdapter()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    if-eqz v0, :cond_0

    const-string v0, "check_item_oc"

    const-string v1, "  ...0000000000.....notifyAdapter()......."

    .line 249
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyLinesView()V
    .locals 7

    .line 331
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 333
    check-cast v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    .line 334
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getLinesMode()I

    move-result v1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...notifyLinesView() ... linesMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "n_camera"

    invoke-static {v3, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 339
    sget v3, Lcom/lewis/camera/R$mipmap;->aircraft_grid_diagonal_select:I

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 341
    sget v3, Lcom/lewis/camera/R$mipmap;->aircraft_grid_select:I

    goto :goto_0

    .line 343
    :cond_1
    sget v3, Lcom/lewis/camera/R$mipmap;->aircraft_icon_none_select:I

    .line 345
    :goto_0
    invoke-virtual {v0, v3}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setBackRes(I)V

    .line 346
    invoke-virtual {v0}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItems()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 347
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 348
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    if-ne v1, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyStorageTypeData()V
    .locals 13

    .line 387
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .line 389
    check-cast v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    .line 391
    invoke-virtual {v0}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->getSubItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 392
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    const/4 v4, 0x1

    .line 393
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    .line 394
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/camera/camera/CameraManager;->getDeviceCurrentStorageTypeSD()Z

    move-result v5

    .line 397
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/powervision/camera/camera/CameraManager;->getSDAllCapacity()I

    move-result v7

    .line 402
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/powervision/camera/camera/CameraManager;->getSDRemainingCapacity()I

    move-result v8

    .line 404
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/powervision/camera/camera/CameraManager;->getEmmcAllCapacity()I

    move-result v9

    .line 405
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/powervision/camera/camera/CameraManager;->getEmmcRemainCapacity()I

    move-result v10

    .line 406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/powervision/camera/utils/CameraUtil;->formatGB(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "GB/"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/powervision/camera/utils/CameraUtil;->formatGB(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "GB"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 407
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/powervision/camera/utils/CameraUtil;->formatGB(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/powervision/camera/utils/CameraUtil;->formatGB(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 408
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/powervision/camera/camera/CameraManager;->getCameraConnect()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 409
    invoke-virtual {v3, v2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    .line 410
    invoke-virtual {v1, v4}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    .line 411
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 414
    invoke-virtual {v3, v4}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    .line 415
    invoke-virtual {v1, v2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    .line 416
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {v3, v2}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    .line 419
    invoke-virtual {v1, v4}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setSelect(Z)V

    .line 420
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->setItemValue(Ljava/lang/String;)V

    .line 423
    :goto_0
    invoke-virtual {v3, v11}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setmItemValue(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, v7}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;->setmItemValue(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->cameraManager:Lcom/powervision/camera/camera/CameraManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;

    invoke-virtual {v0}, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->removeListeners()V

    .line 312
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 313
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onNotifyEnableAudioStatus(Ljava/lang/String;)V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$nblHehWtGkoZphoznydaRBAc7zI;

    invoke-direct {v1, p0, p1}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$nblHehWtGkoZphoznydaRBAc7zI;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNotifyEnableResistbLinkStatus()V
    .locals 2

    .line 449
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$p-vdZDpuuY_KPuB1wpyyafGDiUM;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$p-vdZDpuuY_KPuB1wpyyafGDiUM;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotifyHeadlightLogoStatus()V
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$VlPNhrVCT9uwcCfAH0tebvNeM7A;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$VlPNhrVCT9uwcCfAH0tebvNeM7A;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotifyWaterLogoStatus()V
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mAdapter:Lcom/powervision/camera/ui/adapter/CameraGeneralAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$iwmyO6TuHT2yVPROfE-dp9bfGx8;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$iwmyO6TuHT2yVPROfE-dp9bfGx8;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResetCameraResult(Z)V
    .locals 4

    .line 279
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_71:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_Msg_151:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...onResetCameraResult. hint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "set_camera"

    invoke-static {v3, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v2, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;-><init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResetResult(Z)V
    .locals 4

    .line 256
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    .line 257
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getLocalFormatType()I

    .line 262
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_87:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_88:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->deleteNoUseMediaFile()V

    .line 269
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ...onResetResult.result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  =hint="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "set_camera"

    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance p1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$ZMNf020CWo-pVx9fJ-dSAbpa6wk;

    invoke-direct {p1, v1}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$ZMNf020CWo-pVx9fJ-dSAbpa6wk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 304
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    return-void
.end method

.method public onSetAntiFlickerMode(I)V
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   onSetAntiFlickerMode()  mode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_antiflick"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/camera/CameraManager;->sendAntiFlickerMode(I)V

    return-void
.end method

.method public openCloseLine(I)V
    .locals 2

    .line 317
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v1, 0xa7

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 243
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;

    invoke-virtual {v0}, Lcom/powervision/camera/presenter/impl/CameraGeneralPresenter;->setListener()V

    return-void
.end method
