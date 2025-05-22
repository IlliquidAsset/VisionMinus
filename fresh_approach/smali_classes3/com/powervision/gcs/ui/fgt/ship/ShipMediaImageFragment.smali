.class public Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "ShipMediaImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;
    }
.end annotation


# static fields
.field public static final ONCE_MAX_REQUEST:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ShipMediaImageFragment"


# instance fields
.field private final GET_IMG_END:I

.field private final GET_IMG_REQUEST:I

.field private final GET_IMG_SUCCESS:I

.field private aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

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

    .line 82
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mListName:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mTempList:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->GET_IMG_SUCCESS:I

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->GET_IMG_REQUEST:I

    const/4 v0, 0x2

    .line 68
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->GET_IMG_END:I

    .line 73
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    .line 549
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 590
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->onMediaListChangeListener:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->showGallery(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Landroid/os/Message;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->startRename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 2

    .line 202
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "ShipMediaImageFragment"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "dealWithMessage: GET_IMG_END"

    .line 214
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->dismissLoading()V

    .line 221
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isImageEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->showEmptyInfo()V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->hideEmptyInfo()V

    .line 226
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 210
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->getMoreFileList()V

    goto :goto_1

    :cond_3
    const-string p1, "dealWithMessage: GET_IMG_SUCCESS"

    .line 204
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getImageSuccess()V

    :cond_4
    :goto_1
    return-void
.end method

.method private getImageSuccess()V
    .locals 9

    .line 238
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mListName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

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

    .line 242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 243
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v3, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {v3}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;-><init>()V

    .line 247
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setTime(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mListName:Ljava/util/List;

    iget-object v3, v3, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->time:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_0

    .line 253
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 254
    new-instance v6, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {v6}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;-><init>()V

    .line 255
    rem-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_5

    if-eq v7, v4, :cond_4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    goto :goto_2

    .line 266
    :cond_2
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia4(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 263
    :cond_3
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia3(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 260
    :cond_4
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia2(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 257
    :cond_5
    invoke-virtual {v6, v5}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia1(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    .line 270
    :goto_2
    iget-object v7, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v6, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mListName:Ljava/util/List;

    invoke-static {v5}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result v0

    if-nez v0, :cond_7

    .line 279
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->showLoading()V

    goto :goto_3

    .line 281
    :cond_7
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->dismissLoading()V

    .line 283
    :goto_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isImageEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->showEmptyInfo()V

    goto :goto_4

    .line 286
    :cond_8
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->hideEmptyInfo()V

    .line 289
    :goto_4
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getImageTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 468
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;
    .locals 1

    .line 97
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;-><init>()V

    return-object v0
.end method

.method private initListFromModel(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initListFromModel: list == null || list.isEmpty() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShipMediaImageFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 385
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;

    .line 386
    new-instance v4, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-direct {v4}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;-><init>()V

    .line 387
    invoke-virtual {v3}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setFilename(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v3}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setPath(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getThmfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setThmfile(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getCreattime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setCreattime(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v3}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setSize(J)V

    .line 395
    invoke-direct {p0, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 398
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initListFromModel: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->getTotalCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "initListFromModel: ==GET_IMG_END"

    .line 400
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    .line 405
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private showGallery(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 5

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 327
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 332
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 335
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    if-ne v4, p1, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 343
    :cond_2
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v3, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "index"

    .line 344
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaImageFragment$J0iPCG2CfZjG-tE8I0wrZM-3ZYQ;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaImageFragment$J0iPCG2CfZjG-tE8I0wrZM-3ZYQ;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 546
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 2

    .line 410
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getCreattime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getImageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 414
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_media_img_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->setContentView(I)V

    .line 104
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mView:Landroid/view/View;

    sget v0, Lcom/powervision/gcs/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public jumpToMediaManager()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    sget v0, Lcom/powervision/gcs/R$string;->media_img_list:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

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

    .line 514
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 516
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 520
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v3, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "json"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v2, "type"

    .line 522
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$null$0$ShipMediaImageFragment(I)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$startRename$1$ShipMediaImageFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mListName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    .line 533
    iget-object v1, v1, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->model:Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 541
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/FileUtil;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 542
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaImageFragment$cwulcuj70OkEOuwoZFtEra0OUFY;

    invoke-direct {p2, p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$ShipMediaImageFragment$cwulcuj70OkEOuwoZFtEra0OUFY;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    .line 89
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 90
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 473
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroy()V

    .line 474
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 475
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 479
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 480
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->onMediaListChangeListener:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->removeListener(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;)V

    .line 482
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelAllDownload(Z)V

    return-void
.end method

.method public onListChanged(Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onListChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShipMediaImageFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p1, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;->mMediaMap:Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 427
    iget-object p1, p1, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;->mMediaMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    goto :goto_1

    .line 430
    :cond_0
    iget-object v0, p1, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;->create_time:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getImageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 433
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 434
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 435
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 436
    invoke-virtual {v6}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;->path:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 437
    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 445
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 447
    iget-object v4, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 451
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    invoke-virtual {p1, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 454
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "initListFromModel: ==GET_IMG_END"

    .line 455
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 4

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 133
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 135
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 158
    new-instance p1, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/powervision/localhttp/PVW4DownloadManager;I)V

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    .line 159
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->setAdapterListener(Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;)V

    .line 183
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->onMediaListChangeListener:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->addListener(Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;)V

    .line 184
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->getImageList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->initListFromModel(Ljava/util/List;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseFragment;->setUserVisibleHint(Z)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserVisibleHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShipMediaImageFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->listModel:Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->handler:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mAdapter:Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method
