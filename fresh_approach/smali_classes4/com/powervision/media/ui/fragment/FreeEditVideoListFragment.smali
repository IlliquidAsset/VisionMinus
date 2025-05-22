.class public Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;
.super Lcom/powervision/media/ui/fragment/BaseMediaListFragment;
.source "FreeEditVideoListFragment.java"


# instance fields
.field infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;-><init>()V

    .line 101
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    return-void
.end method

.method private getVideoPath(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 106
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v2

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/powervision/base/model/MediaModel;->setDuration(J)V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;
    .locals 1

    .line 29
    new-instance v0, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getListData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/DbHelper;->search(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 49
    invoke-direct {p0, v2}, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->getVideoPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v2}, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->showEmptyView(Z)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->showEmptyView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/FreeEditVideoListFragment;->showEmptyView(Z)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected isLoadingImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isLoadingLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSectionInfos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/model/SelectModel;

    invoke-direct {v1, p1}, Lcom/powervision/base/model/SelectModel;-><init>(Ljava/util/List;)V

    const/16 p1, 0xe4

    invoke-virtual {v0, p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public showEmptyView(Z)V
    .locals 0

    return-void
.end method

.method public showImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "video"

    const-string v1, "video/thumbnails"

    .line 81
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    const-string v2, "jpg"

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 91
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 92
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const-wide/16 v0, 0x1

    .line 93
    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/RequestBuilder;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const v0, 0x3dcccccd    # 0.1f

    .line 94
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 97
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 98
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
