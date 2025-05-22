.class public Lcom/powervision/media/ui/adapter/PhotoPreAdatper;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PhotoPreAdatper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->list:Ljava/util/List;

    return-void
.end method

.method private setImageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->list:Ljava/util/List;

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->list:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public checkDate(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->setImageList(Ljava/util/ArrayList;)V

    .line 37
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->context:Landroid/content/Context;

    .line 60
    :cond_0
    new-instance v0, Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    .line 62
    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setBackgroundColor(I)V

    const/4 v1, -0x1

    .line 64
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 66
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->list:Ljava/util/List;

    .line 71
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 72
    invoke-static {p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget v1, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 73
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/adapter/PhotoPreAdatper;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
