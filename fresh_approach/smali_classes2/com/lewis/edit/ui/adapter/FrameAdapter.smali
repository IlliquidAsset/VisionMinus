.class public Lcom/lewis/edit/ui/adapter/FrameAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FrameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/VideoThumb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mList:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/lewis/edit/ui/adapter/FrameAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/lewis/edit/ui/adapter/FrameAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemHeight:I

    return p0
.end method


# virtual methods
.method public addItem(Lcom/lewis/edit/model/entries/VideoThumb;)V
    .locals 1

    .line 67
    iget v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemWidth:I

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->notifyItemInserted(I)V

    :cond_0
    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u8bf7\u5148\u8bbe\u7f6e\u6bcf\u4e00\u5e27\u7684\u5bbd\u9ad8"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearData()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->onBindViewHolder(Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;I)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->setImageWH()V

    .line 46
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mList:Ljava/util/List;

    .line 47
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/model/entries/VideoThumb;

    invoke-virtual {p2}, Lcom/lewis/edit/model/entries/VideoThumb;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget v0, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemWidth:I

    iget v1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemHeight:I

    .line 48
    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 49
    invoke-static {p1}, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;->access$000(Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/ui/adapter/FrameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;
    .locals 2

    .line 39
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/lewis/edit/R$layout;->edit_frame_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;

    invoke-direct {p2, p0, p1}, Lcom/lewis/edit/ui/adapter/FrameAdapter$FrameHolder;-><init>(Lcom/lewis/edit/ui/adapter/FrameAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemWidthAndHeight(II)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemWidth:I

    .line 79
    iput p2, p0, Lcom/lewis/edit/ui/adapter/FrameAdapter;->mItemHeight:I

    return-void
.end method
