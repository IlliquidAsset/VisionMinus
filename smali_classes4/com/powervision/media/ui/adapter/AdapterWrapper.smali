.class public Lcom/powervision/media/ui/adapter/AdapterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/media/ui/adapter/WorksAdapter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mHeaderView:Landroid/view/View;

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = = = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    invoke-virtual {v1}, Lcom/powervision/media/ui/adapter/WorksAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/WorksAdapter;->getItemCount()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 29
    sget-object p1, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->HEADER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->ordinal()I

    move-result p1

    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/WorksAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 31
    sget-object p1, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->FOOTER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->ordinal()I

    move-result p1

    return p1

    .line 33
    :cond_1
    sget-object p1, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->NORMAL:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position == == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-lez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    check-cast p1, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Lcom/powervision/media/ui/adapter/WorksAdapter;->onBindViewHolder(Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 55
    sget-object v0, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->HEADER:Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/AdapterWrapper$ITEM_TYPE;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 56
    new-instance p1, Lcom/powervision/media/ui/adapter/AdapterWrapper$1;

    iget-object p2, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mHeaderView:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/powervision/media/ui/adapter/AdapterWrapper$1;-><init>(Lcom/powervision/media/ui/adapter/AdapterWrapper;Landroid/view/View;)V

    return-object p1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/AdapterWrapper;->mAdapter:Lcom/powervision/media/ui/adapter/WorksAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/media/ui/adapter/WorksAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
