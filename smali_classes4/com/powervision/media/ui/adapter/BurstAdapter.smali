.class public Lcom/powervision/media/ui/adapter/BurstAdapter;
.super Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;
.source "BurstAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;,
        Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter<",
        "Lcom/powervision/localhttp/entity/BurstInfo;",
        "Lme/jingbin/library/adapter/BaseByViewHolder<",
        "Lcom/powervision/localhttp/entity/BurstInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDeleteListener:Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mFreshMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mSelectList:Ljava/util/ArrayList;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mFreshMap:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 44
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 51
    :goto_0
    new-instance p1, Lcom/powervision/media/ui/adapter/BurstAdapter$1;

    invoke-direct {p1, p0}, Lcom/powervision/media/ui/adapter/BurstAdapter$1;-><init>(Lcom/powervision/media/ui/adapter/BurstAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/adapter/BurstAdapter;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mFreshMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/adapter/BurstAdapter;)Lcom/powervision/localhttp/PVW4DownloadManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    return-object p0
.end method


# virtual methods
.method public getSelect()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mSelectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public synthetic lambda$onAttachedToRecyclerView$0$BurstAdapter(Landroid/view/View;I)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    .line 118
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/BurstAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/BurstInfo;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/entity/BurstInfo;->setSelected(Z)V

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/BurstAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/BurstAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mDeleteListener:Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;

    if-eqz p1, :cond_1

    .line 125
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;->deleteState(ZI)V

    :cond_1
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 114
    check-cast p1, Lme/jingbin/library/ByRecyclerView;

    .line 115
    new-instance v0, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$jqckrkoa_UVYxHqEaPcJuUZ7V5Q;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/adapter/-$$Lambda$BurstAdapter$jqckrkoa_UVYxHqEaPcJuUZ7V5Q;-><init>(Lcom/powervision/media/ui/adapter/BurstAdapter;)V

    invoke-virtual {p1, v0}, Lme/jingbin/library/ByRecyclerView;->setOnItemChildClickListener(Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/adapter/BurstAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance p2, Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;

    sget v0, Lcom/powervision/media/R$layout;->media_burst_item:I

    invoke-direct {p2, p0, p1, v0}, Lcom/powervision/media/ui/adapter/BurstAdapter$ViewHolder;-><init>(Lcom/powervision/media/ui/adapter/BurstAdapter;Landroid/view/ViewGroup;I)V

    return-object p2
.end method

.method public setDeleteStateListener(Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BurstAdapter;->mDeleteListener:Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;

    return-void
.end method
