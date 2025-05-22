.class public Lcom/powervision/media/ui/adapter/MediaLibAdapter;
.super Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;
.source "MediaLibAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;,
        Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;,
        Lcom/powervision/media/ui/adapter/MediaLibAdapter$TitleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter<",
        "Lcom/powervision/localhttp/entity/MediaLib;",
        "Lme/jingbin/library/adapter/BaseByViewHolder<",
        "Lcom/powervision/localhttp/entity/MediaLib;",
        ">;>;"
    }
.end annotation


# instance fields
.field private isSelect:Z

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mEnableListener:Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;

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

.field private mGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMediaType:I

.field private mOriginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field

.field private mSelects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p2}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mMediaType:I

    .line 65
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    .line 67
    iput-boolean p3, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->isSelect:Z

    .line 68
    iput-object p4, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mOriginList:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mFreshMap:Ljava/util/Map;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    .line 72
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->generalGroupMap()V

    .line 73
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 74
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 79
    :goto_0
    new-instance p1, Lcom/powervision/media/ui/adapter/MediaLibAdapter$1;

    invoke-direct {p1, p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$1;-><init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)V

    .line 124
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {p2, p1}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mFreshMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->isSelect:Z

    return p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Lcom/powervision/localhttp/PVW4DownloadManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    return-object p0
.end method

.method private notifyTitleSelectStatus(IIZ)V
    .locals 0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 289
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/localhttp/entity/MediaLib;

    .line 290
    invoke-virtual {p2, p3}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method private updateSelectStatus(I)V
    .locals 8

    .line 340
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    .line 341
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyItemChanged(I)V

    .line 348
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 352
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {v7}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 357
    :cond_2
    iget-object v5, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    iget-object v5, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sub-int/2addr v3, v2

    if-ne v6, v3, :cond_4

    .line 360
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, v4}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyTitleSelectStatus(IIZ)V

    goto :goto_1

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v6, v3, :cond_4

    .line 366
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyTitleSelectStatus(IIZ)V

    .line 370
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mEnableListener:Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;

    if-eqz p1, :cond_5

    .line 371
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->isCollected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectSize()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;->btnEnable(ZI)V

    :cond_5
    return-void
.end method


# virtual methods
.method public generalGroupMap()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mOriginList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mOriginList:Ljava/util/ArrayList;

    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 247
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 248
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$2;-><init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)V

    .line 249
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getGroupMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;>;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 136
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getItemData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result p1

    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getSelectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectSize()I
    .locals 9

    .line 454
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 456
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/MediaLib;

    .line 457
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 458
    :goto_1
    iget v7, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mMediaType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    if-eqz v4, :cond_2

    .line 461
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    if-nez v4, :cond_2

    .line 468
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_4
    if-ne v7, v5, :cond_0

    .line 473
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/MediaLib;->getCollected()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 476
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_2

    .line 482
    :cond_6
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_7
    :goto_2
    return v1
.end method

.method public isCollected()Z
    .locals 9

    .line 416
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/MediaLib;

    .line 419
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 420
    :goto_1
    invoke-virtual {v3}, Lcom/powervision/localhttp/entity/MediaLib;->getCollected()I

    move-result v3

    .line 421
    iget v7, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mMediaType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    if-eqz v4, :cond_1

    if-nez v3, :cond_5

    return v1

    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    if-nez v4, :cond_1

    if-nez v3, :cond_5

    return v1

    :cond_4
    if-ne v7, v5, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    if-nez v3, :cond_5

    return v1

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public synthetic lambda$onAttachedToRecyclerView$0$MediaLibAdapter(Landroid/view/View;I)V
    .locals 2

    .line 151
    invoke-virtual {p0, p2}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 152
    iget-boolean p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->isSelect:Z

    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0, p2}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->updateSelectStatus(I)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/powervision/media/utils/MediaLibDataManager;->getInstance()Lcom/powervision/media/utils/MediaLibDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mOriginList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/powervision/media/utils/MediaLibDataManager;->setMediaPreData(Ljava/util/ArrayList;)V

    .line 156
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mOriginList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/media/ui/activity/MediaLibPreviewActivity;->goInTo(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onAttachedToRecyclerView$1$MediaLibAdapter(Landroid/view/View;I)V
    .locals 0

    .line 163
    invoke-virtual {p0, p2}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyGroupSelectStatus(I)V

    return-void
.end method

.method public notifyGroupSelectStatus(I)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    .line 306
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mGroupMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 309
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 310
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 311
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/MediaLib;

    .line 312
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    .line 313
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 315
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyItemRangeChanged(II)V

    .line 326
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mEnableListener:Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;

    if-eqz p1, :cond_4

    .line 327
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->isCollected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->getSelectSize()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;->btnEnable(ZI)V

    nop

    :cond_4
    :goto_2
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lme/jingbin/library/adapter/BaseByRecyclerViewAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 148
    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lme/jingbin/library/ByRecyclerView;

    .line 150
    new-instance v0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibAdapter$gSrXRpXjGu36FNrHUd4JTQ5u8A8;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibAdapter$gSrXRpXjGu36FNrHUd4JTQ5u8A8;-><init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)V

    invoke-virtual {p1, v0}, Lme/jingbin/library/ByRecyclerView;->setOnItemClickListener(Lme/jingbin/library/ByRecyclerView$OnItemClickListener;)V

    .line 161
    new-instance v0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibAdapter$_eV67lvyh9CMd6pYd0cFPcqQSg0;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibAdapter$_eV67lvyh9CMd6pYd0cFPcqQSg0;-><init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)V

    invoke-virtual {p1, v0}, Lme/jingbin/library/ByRecyclerView;->setOnItemChildClickListener(Lme/jingbin/library/ByRecyclerView$OnItemChildClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/jingbin/library/adapter/BaseByViewHolder;

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
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 172
    new-instance p2, Lcom/powervision/media/ui/adapter/MediaLibAdapter$TitleHolder;

    sget v0, Lcom/powervision/media/R$layout;->media_item_title:I

    invoke-direct {p2, p0, p1, v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$TitleHolder;-><init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;Landroid/view/ViewGroup;I)V

    return-object p2

    .line 174
    :cond_0
    new-instance p2, Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;

    sget v0, Lcom/powervision/media/R$layout;->media_item_content:I

    invoke-direct {p2, p0, p1, v0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$ViewHolder;-><init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;Landroid/view/ViewGroup;I)V

    return-object p2
.end method

.method public setBtnEnableListener(Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mEnableListener:Lcom/powervision/media/ui/adapter/MediaLibAdapter$BtnEnableListener;

    return-void
.end method

.method public setCurrentMediaType(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mMediaType:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 2

    .line 388
    iput-boolean p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->isSelect:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {v1, p1}, Lcom/powervision/localhttp/entity/MediaLib;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 393
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;)V"
        }
    .end annotation

    .line 409
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->mSelects:Ljava/util/ArrayList;

    return-void
.end method
