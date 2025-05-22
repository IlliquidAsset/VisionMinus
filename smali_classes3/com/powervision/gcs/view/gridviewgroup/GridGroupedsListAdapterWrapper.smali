.class public Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "GridGroupedsListAdapterWrapper.java"

# interfaces
.implements Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsBaseAdapter;


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDetegate:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    new-instance v0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper$1;-><init>(Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCountForGrouped(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getGroupedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getNumGroupeds()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/view/gridviewgroup/GridGroupedsListAdapterWrapper;->mDetegate:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
