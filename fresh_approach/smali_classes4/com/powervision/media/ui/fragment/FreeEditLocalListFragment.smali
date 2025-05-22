.class public Lcom/powervision/media/ui/fragment/FreeEditLocalListFragment;
.super Lcom/powervision/media/ui/fragment/BaseMediaListFragment;
.source "FreeEditLocalListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/FreeEditLocalListFragment;
    .locals 1

    .line 23
    new-instance v0, Lcom/powervision/media/ui/fragment/FreeEditLocalListFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/FreeEditLocalListFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isLoadingImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isLoadingLocal()Z
    .locals 1

    const/4 v0, 0x1

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

    .line 48
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    new-instance v1, Lcom/powervision/base/model/SelectModel;

    invoke-direct {v1, p1}, Lcom/powervision/base/model/SelectModel;-><init>(Ljava/util/List;)V

    const/16 p1, 0xe5

    invoke-virtual {v0, p1, v1}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public showEmptyView(Z)V
    .locals 0

    return-void
.end method

.method public showImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "video"

    const-string v1, "video/thumbnails"

    .line 58
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    const-string v2, "jpg"

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 68
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 69
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const-wide/16 v0, 0x1

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/RequestBuilder;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const v0, 0x3dcccccd    # 0.1f

    .line 71
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 74
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 75
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
