.class public Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;
.super Lcom/powervision/media/ui/fragment/BaseMediaListFragment;
.source "FreeEditPictureListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;-><init>()V

    return-void
.end method

.method private getImagePath(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
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

    .line 86
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;
    .locals 1

    .line 24
    new-instance v0, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;-><init>()V

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

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/DbHelper;->search(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    invoke-direct {p0, v2}, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;->getImagePath(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0, v2}, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;->showEmptyView(Z)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;->showEmptyView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    invoke-virtual {p0, v0}, Lcom/powervision/media/ui/fragment/FreeEditPictureListFragment;->showEmptyView(Z)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected isLoadingImage()Z
    .locals 1

    const/4 v0, 0x1

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

    .line 67
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/model/SelectModel;

    invoke-direct {v1, p1}, Lcom/powervision/base/model/SelectModel;-><init>(Ljava/util/List;)V

    const/16 p1, 0xe3

    invoke-virtual {v0, p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public showEmptyView(Z)V
    .locals 0

    return-void
.end method

.method public showImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V
    .locals 1

    .line 72
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 74
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 75
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const v0, 0x3dcccccd    # 0.1f

    .line 76
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 79
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 80
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
