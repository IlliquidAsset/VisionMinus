.class public Lcom/powervision/media/ui/fragment/WorksFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "WorksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapterWrapper:Lcom/powervision/media/ui/adapter/AdapterWrapper;

.field private cardView:Landroidx/cardview/widget/CardView;

.field private mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/WorksFragment;
    .locals 1

    .line 36
    new-instance v0, Lcom/powervision/media/ui/fragment/WorksFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/WorksFragment;-><init>()V

    return-object v0
.end method

.method private refreshAdapterData()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v0

    .line 82
    const-class v1, Lcom/powervision/base/model/MediaModel;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/DbHelper;->search(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    invoke-virtual {v1, v0}, Lcom/powervision/media/ui/adapter/WorksAdapter;->setData(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->adapterWrapper:Lcom/powervision/media/ui/adapter/AdapterWrapper;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/AdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 41
    sget v0, Lcom/powervision/media/R$layout;->media_fragment_work:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    sget p1, Lcom/powervision/media/R$id;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/WorksFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    new-instance v0, Lcom/powervision/media/ui/adapter/WorksAdapter;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/WorksFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/media/ui/adapter/WorksAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    .line 50
    new-instance v1, Lcom/powervision/media/ui/adapter/AdapterWrapper;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/adapter/AdapterWrapper;-><init>(Lcom/powervision/media/ui/adapter/WorksAdapter;)V

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->adapterWrapper:Lcom/powervision/media/ui/adapter/AdapterWrapper;

    .line 51
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/WorksFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 55
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/WorksFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_works_header_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    sget v1, Lcom/powervision/media/R$id;->cardview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->cardView:Landroidx/cardview/widget/CardView;

    .line 59
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->adapterWrapper:Lcom/powervision/media/ui/adapter/AdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/powervision/media/ui/adapter/AdapterWrapper;->addHeaderView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->adapterWrapper:Lcom/powervision/media/ui/adapter/AdapterWrapper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 62
    new-instance v0, Lcom/powervision/media/widgets/SimplePaddingDecoration;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/WorksFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/media/widgets/SimplePaddingDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public synthetic lambda$setListener$0$WorksFragment(Lcom/powervision/base/model/MediaModel;)V
    .locals 3

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/WorksFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/powervision/media/ui/activity/VideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "model"

    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/WorksFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 101
    sget v0, Lcom/powervision/media/R$id;->cardview:I

    if-ne p1, v0, :cond_0

    .line 102
    const-class p1, Lcom/powervision/media/ui/activity/FreeEditActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/WorksFragment;->startActivity(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/WorksFragment;->refreshAdapterData()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 90
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/WorksFragment;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$WorksFragment$fTAcjROIJmrGTZasCNK5wFAvc4A;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/fragment/-$$Lambda$WorksFragment$fTAcjROIJmrGTZasCNK5wFAvc4A;-><init>(Lcom/powervision/media/ui/fragment/WorksFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/WorksAdapter;->setOnItemClickListener(Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/WorksFragment;->refreshAdapterData()V

    :cond_0
    return-void
.end method
