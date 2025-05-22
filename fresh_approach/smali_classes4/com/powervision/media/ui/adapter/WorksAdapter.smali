.class public Lcom/powervision/media/ui/adapter/WorksAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WorksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;,
        Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIDEO_FRAME_TIME_NUM:I = 0x1e8480


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->datas:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$WorksAdapter(Lcom/powervision/base/model/MediaModel;Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->onItemClickListener:Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2, p1}, Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;->onItemClick(Lcom/powervision/base/model/MediaModel;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/adapter/WorksAdapter;->onBindViewHolder(Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;I)V
    .locals 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/model/MediaModel;

    .line 56
    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getVideoThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "video"

    const-string v2, "video/thumbnails"

    .line 59
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mp4"

    const-string v3, "jpg"

    .line 60
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$mipmap;->works_phtot_holder:I

    .line 69
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$mipmap;->works_phtot_holder:I

    .line 70
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    const-wide/32 v2, 0x1e8480

    .line 71
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 72
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 74
    iget-object v0, p1, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;->mTextDate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/powervision/base/utils/TimeUtils;->formatTimeToAllWithoutS(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p1, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;->mTextType:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getEditType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_58:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_59:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p1, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/media/ui/adapter/-$$Lambda$WorksAdapter$iakRmaYM4Y5u5MU378nA6W5bks0;

    invoke-direct {v0, p0, p2}, Lcom/powervision/media/ui/adapter/-$$Lambda$WorksAdapter$iakRmaYM4Y5u5MU378nA6W5bks0;-><init>(Lcom/powervision/media/ui/adapter/WorksAdapter;Lcom/powervision/base/model/MediaModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/powervision/media/ui/adapter/WorksAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/media/R$layout;->media_works_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/media/ui/adapter/WorksAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->datas:Ljava/util/List;

    .line 39
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/WorksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/WorksAdapter;->onItemClickListener:Lcom/powervision/media/ui/adapter/WorksAdapter$OnItemClickListener;

    return-void
.end method
