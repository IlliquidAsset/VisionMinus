.class public Lcom/powervision/media/ui/adapter/MediaLibListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MediaLibListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;,
        Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field public currentPosition:I

.field private mActivity:Landroid/app/Activity;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mFreshMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClick:Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->currentPosition:I

    .line 42
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mData:Ljava/util/List;

    .line 44
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mActivity:Landroid/app/Activity;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mFreshMap:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 48
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 55
    :goto_0
    new-instance p1, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;

    invoke-direct {p1, p0}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;-><init>(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)V

    .line 99
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mFreshMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method private loadImage(Landroid/widget/ImageView;ZI)V
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/localhttp/entity/MediaLib;

    const-string v0, "0-0"

    if-eqz p2, :cond_1

    .line 148
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getThumbPath()Ljava/lang/String;

    move-result-object p2

    .line 149
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03ThmDir()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getTempThmName()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getPrePos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getThmPos()Ljava/lang/String;

    move-result-object v3

    .line 153
    :goto_0
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getThmPos()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v0}, Lcom/powervision/base/utils/ImageUtil;->isMediaImageExit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 155
    :cond_1
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getPreImagePath()Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03PrevDir()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getTempPrevName()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p3}, Lcom/powervision/localhttp/entity/MediaLib;->getPrePos()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 161
    :goto_1
    invoke-static {p2, v3, v3}, Lcom/powervision/base/utils/ImageUtil;->isMediaImageExit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v5, v3

    move-object v3, v0

    move v0, v5

    :goto_2
    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 165
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    const/4 p3, 0x0

    .line 166
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    sget-object p3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 167
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 168
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    .line 170
    :cond_3
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mFreshMap:Ljava/util/Map;

    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$MediaLibListAdapter(ILandroid/view/View;)V
    .locals 0

    .line 121
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mItemClick:Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;

    if-eqz p2, :cond_0

    .line 122
    invoke-interface {p2, p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$MediaLibListAdapter(ILandroid/view/View;)V
    .locals 0

    .line 127
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mItemClick:Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;

    if-eqz p2, :cond_0

    .line 128
    invoke-interface {p2, p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->onBindViewHolder(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;I)V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 112
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->access$300(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    .line 114
    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->access$400(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 116
    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->access$400(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->loadImage(Landroid/widget/ImageView;ZI)V

    goto :goto_2

    .line 119
    :cond_3
    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->access$300(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v0

    invoke-direct {p0, v0, v2, p2}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->loadImage(Landroid/widget/ImageView;ZI)V

    .line 120
    invoke-static {p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->access$300(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$S4doWHoWmIDzhBPFl0iRsQFrCrs;

    invoke-direct {v1, p0, p2}, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$S4doWHoWmIDzhBPFl0iRsQFrCrs;-><init>(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :goto_2
    iget-object p1, p1, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$-ibFRKUwlweiV54EMwg4NK-zQ_Q;

    invoke-direct {v0, p0, p2}, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$-ibFRKUwlweiV54EMwg4NK-zQ_Q;-><init>(Lcom/powervision/media/ui/adapter/MediaLibListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;
    .locals 2

    .line 104
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/media/R$layout;->media_lib_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    new-instance p2, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClick(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->mItemClick:Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ItemClick;

    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter;->currentPosition:I

    return-void
.end method
