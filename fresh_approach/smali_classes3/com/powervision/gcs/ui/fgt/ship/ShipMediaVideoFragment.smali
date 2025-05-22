.class public Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipMediaVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;
    }
.end annotation


# static fields
.field public static final ONCE_MAX_REQUEST:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ShipMediaVideoFragment"


# instance fields
.field private final GET_IMG_END:I

.field private final GET_IMG_REQUEST:I

.field private final GET_IMG_SUCCESS:I

.field private aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

.field private listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

.field private mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;",
            ">;"
        }
    .end annotation
.end field

.field mListName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMediaMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;>;"
        }
    .end annotation
.end field

.field mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private onMediaListChangeListener:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mListName:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mTempList:Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->GET_IMG_SUCCESS:I

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->GET_IMG_REQUEST:I

    const/4 v0, 0x2

    .line 66
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->GET_IMG_END:I

    .line 75
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    .line 323
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->onMediaListChangeListener:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    .line 635
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Landroid/os/Message;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->startRename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 1

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->dismissLoading()V

    .line 109
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isVideoEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->showEmptyInfo()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->hideEmptyInfo()V

    .line 114
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 104
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->getMoreFileList()V

    goto :goto_1

    .line 100
    :cond_3
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getVideoSucceed()V

    :cond_4
    :goto_1
    return-void
.end method

.method private getFileListRequest()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->getMoreFileList()V

    return-void
.end method

.method private getImageTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 505
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;
    .locals 1

    .line 135
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;-><init>()V

    return-object v0
.end method

.method private getVideoSucceed()V
    .locals 9

    .line 386
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 387
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mListName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 390
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 391
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    new-instance v3, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {v3}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;-><init>()V

    .line 396
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setTime(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mListName:Ljava/util/List;

    iget-object v3, v3, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->time:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 400
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_0

    .line 402
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 404
    new-instance v6, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {v6}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;-><init>()V

    .line 406
    rem-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_5

    if-eq v7, v4, :cond_4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    goto :goto_2

    .line 417
    :cond_2
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia4(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 414
    :cond_3
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia3(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 411
    :cond_4
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia2(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 408
    :cond_5
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia1(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    .line 421
    :goto_2
    iget-object v7, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v6, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mListName:Ljava/util/List;

    invoke-static {v5}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    :cond_6
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result v0

    if-nez v0, :cond_7

    .line 429
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->showLoading()V

    goto :goto_3

    .line 431
    :cond_7
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->dismissLoading()V

    .line 433
    :goto_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isVideoEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 434
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->showEmptyInfo()V

    goto :goto_4

    .line 436
    :cond_8
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->hideEmptyInfo()V

    .line 439
    :goto_4
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initListFromModel(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;

    .line 290
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-direct {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;-><init>()V

    .line 291
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setFilename(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setPath(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getThmfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setThmfile(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getCreattime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setCreattime(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setSize(J)V

    .line 299
    invoke-direct {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 614
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaVideoFragment$xz8KYWQkJkzWgDbf3DmndoTAd_4;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaVideoFragment$xz8KYWQkJkzWgDbf3DmndoTAd_4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 632
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 2

    .line 491
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getCreattime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getImageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 495
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 145
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_media_video_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->setContentView(I)V

    .line 146
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mView:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public jumpToMediaManager()V
    .locals 4

    .line 588
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget v0, Lcom/powervision/gcs/R$string;->media_video_list:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 593
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 597
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 599
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 606
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v3, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "json"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "type"

    .line 608
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$null$0$ShipMediaVideoFragment(I)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$startRename$1$ShipMediaVideoFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mListName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 619
    iget-object v1, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 627
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/FileUtil;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaVideoFragment$pvVg9fVh7NCCCLtVsiDZQfEVv8w;

    invoke-direct {p2, p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaVideoFragment$pvVg9fVh7NCCCLtVsiDZQfEVv8w;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "index"

    .line 571
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 572
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 573
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mListName:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 574
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    .line 155
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 156
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 558
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroy()V

    .line 559
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 560
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 561
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 563
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->onMediaListChangeListener:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->removeListener(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;)V

    .line 564
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelAllDownload(Z)V

    return-void
.end method

.method public onListChanged(Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 518
    iget-object v0, p1, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;->mMediaMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    iget-object p1, p1, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;->mMediaMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    .line 520
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 522
    :cond_0
    iget-object v0, p1, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;->create_time:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getImageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 527
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 528
    invoke-virtual {v4}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;->path:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    .line 537
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 539
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 543
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    .line 545
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 546
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 548
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    :cond_6
    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 4

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 210
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 212
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 234
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 235
    new-instance p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v3, 0x2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/powervision/localhttp/PVW4DownloadManager;I)V

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    .line 236
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 238
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->setAdapterListener(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;)V

    .line 269
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->onMediaListChangeListener:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->addListener(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;)V

    .line 270
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->getVideoList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->initListFromModel(Ljava/util/List;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 164
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseFragment;->setUserVisibleHint(Z)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserVisibleHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipMediaVideoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method
