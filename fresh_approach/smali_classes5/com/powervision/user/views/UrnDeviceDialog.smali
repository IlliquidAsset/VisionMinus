.class public Lcom/powervision/user/views/UrnDeviceDialog;
.super Landroid/app/Dialog;
.source "UrnDeviceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;
    }
.end annotation


# instance fields
.field private mDeviceBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnDeviceItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRealNameAddAdapter:Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;

.field private mRegisterListener:Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;

.field private mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field private mTvCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;)V
    .locals 1

    .line 35
    sget v0, Lcom/powervision/user/R$style;->user_noBgDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mDeviceBeanList:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRegisterListener:Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRealNameAddAdapter:Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;

    new-instance v1, Lcom/powervision/user/views/-$$Lambda$UrnDeviceDialog$NdCODscPID5kqogdRzDEob8LExw;

    invoke-direct {v1, p0}, Lcom/powervision/user/views/-$$Lambda$UrnDeviceDialog$NdCODscPID5kqogdRzDEob8LExw;-><init>(Lcom/powervision/user/views/UrnDeviceDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private initRecycle()V
    .locals 3

    .line 71
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/user/views/UrnDeviceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 76
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 78
    new-instance v0, Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;

    sget v1, Lcom/powervision/user/R$layout;->user_item_real_name_add:I

    iget-object v2, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mDeviceBeanList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRealNameAddAdapter:Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;

    .line 79
    iget-object v1, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 48
    sget v0, Lcom/powervision/user/R$id;->rl_user_dialog_add_content:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/views/UrnDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    sget v0, Lcom/powervision/user/R$id;->tv_user_dialog_add_cancel:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/views/UrnDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mTvCancel:Landroid/widget/TextView;

    .line 50
    invoke-direct {p0}, Lcom/powervision/user/views/UrnDeviceDialog;->initRecycle()V

    .line 51
    invoke-direct {p0}, Lcom/powervision/user/views/UrnDeviceDialog;->initListener()V

    .line 52
    invoke-virtual {p0}, Lcom/powervision/user/views/UrnDeviceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x50

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 56
    sget v1, Lcom/powervision/user/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initListener$0$UrnDeviceDialog(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRegisterListener:Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mDeviceBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRegisterListener:Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;

    iget-object p2, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mDeviceBeanList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/user/bean/UrnDeviceItemBean;

    invoke-interface {p1, p2}, Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;->onClickData(Lcom/powervision/user/bean/UrnDeviceItemBean;)V

    .line 65
    invoke-virtual {p0}, Lcom/powervision/user/views/UrnDeviceDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 96
    sget v0, Lcom/powervision/user/R$id;->tv_user_dialog_add_cancel:I

    if-ne v0, p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/powervision/user/views/UrnDeviceDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/powervision/user/R$layout;->user_dialog_real_name_add:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/views/UrnDeviceDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/powervision/user/views/UrnDeviceDialog;->setCancelable(Z)V

    .line 44
    invoke-direct {p0}, Lcom/powervision/user/views/UrnDeviceDialog;->initView()V

    return-void
.end method

.method public workShowData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnDeviceItemBean;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mDeviceBeanList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mDeviceBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mDeviceBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object p1, p0, Lcom/powervision/user/views/UrnDeviceDialog;->mRealNameAddAdapter:Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;

    invoke-virtual {p1}, Lcom/powervision/user/ui/adapter/UserRealNameAddAdapter;->notifyDataSetChanged()V

    return-void
.end method
