.class Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VideoSeparateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoSeparateHolder"
.end annotation


# instance fields
.field private mIvImage:Landroid/widget/ImageView;

.field private mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

.field private mTvTime:Landroid/widget/TextView;

.field private mViewLine:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    sget v0, Lcom/lewis/edit/R$id;->iv_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mIvImage:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/lewis/edit/R$id;->tv_item_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mTvTime:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/lewis/edit/R$id;->view_vs_time_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mViewLine:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;-><init>(Landroid/view/View;Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;Lcom/lewis/edit/model/entries/VideoSeparateBean;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->setData(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V

    return-void
.end method

.method private isCutFun(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mTvTime:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mViewLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mTvTime:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mViewLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setData(Lcom/lewis/edit/model/entries/VideoSeparateBean;)V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mIvImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mSeparateAdapter:Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;

    invoke-static {v1}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->access$200(Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 78
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 79
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->getCurrentTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Lcom/lewis/edit/model/entries/VideoSeparateBean;->isCutFlag()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->isCutFun(Z)V

    return-void
.end method
