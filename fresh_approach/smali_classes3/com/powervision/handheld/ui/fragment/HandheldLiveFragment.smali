.class public Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "HandheldLiveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private liveBtnStatusArray:Landroid/util/SparseIntArray;

.field private mCustomLiveLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;
    .locals 1

    .line 24
    new-instance v0, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;

    invoke-direct {v0}, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 29
    sget v0, Lcom/powervision/handheld/R$layout;->handheld_live_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    sget p1, Lcom/powervision/handheld/R$id;->custom_live_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->mCustomLiveLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 53
    sget v0, Lcom/powervision/handheld/R$id;->custom_live_layout:I

    if-ne p1, v0, :cond_2

    .line 54
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/livestreaming/LiveStreaming;->isLiveRunning()Z

    move-result p1

    const/16 v0, 0xf45

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 56
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    .line 57
    invoke-virtual {p1, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->liveBtnStatusArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_1
    sget p1, Lcom/powervision/handheld/R$string;->AP03_Home_2:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 45
    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldLiveFragment;->mCustomLiveLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
