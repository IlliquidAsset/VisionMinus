.class public Lcom/lewis/edit/ui/adapter/SpliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SpliceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;,
        Lcom/lewis/edit/ui/adapter/SpliceAdapter$PlusViewHolder;,
        Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final NORMAL_LAYOUT:I = 0x64

.field private static final SPECIAL_LAYOUT:I = 0xc8

.field private static final VIDEO_FRAME_TIME_NUM:I = 0x1e8480


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

.field private mItemClickListener:Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;

.field private mLastSelectPosition:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mLastSelectPosition:I

    .line 41
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mList:Ljava/util/List;

    .line 44
    new-instance p1, Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-direct {p1}, Lcom/powervision/base/utils/MediaInfoUtil;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    .line 45
    iget-object p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xc8

    return p1

    :cond_0
    const/16 p1, 0x64

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$SpliceAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const-string p2, "splice"

    .line 95
    invoke-static {p2}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position1= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v2}, Lcom/orhanobut/logger/Printer;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mItemClickListener:Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p2, v1, p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;->onSpliceItemClick(ZI)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 74
    instance-of v0, p1, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;

    if-eqz v0, :cond_2

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;

    .line 76
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v2, v1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v4, "video"

    const-string v5, "video/thumbnails"

    .line 80
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp4"

    const-string v6, "jpg"

    .line 81
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 85
    :goto_0
    iget-object v4, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const-wide/32 v4, 0x1e8480

    .line 86
    invoke-virtual {v1, v4, v5}, Lcom/bumptech/glide/RequestBuilder;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    const v4, 0x3dcccccd    # 0.1f

    .line 87
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 88
    invoke-static {v0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->access$000(Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 89
    invoke-static {v0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->access$100(Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-string v2, "%ss"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {v0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;->access$200(Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mLastSelectPosition:I

    if-ne v1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/lewis/edit/ui/adapter/-$$Lambda$SpliceAdapter$Zv9Hq0NJT1GKPt1Xh3LBZ4U-97M;

    invoke-direct {v0, p0, p1}, Lcom/lewis/edit/ui/adapter/-$$Lambda$SpliceAdapter$Zv9Hq0NJT1GKPt1Xh3LBZ4U-97M;-><init>(Lcom/lewis/edit/ui/adapter/SpliceAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 63
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lewis/edit/R$layout;->edit_splice_item_special:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/lewis/edit/ui/adapter/SpliceAdapter$PlusViewHolder;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter$PlusViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lewis/edit/R$layout;->edit_splice_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;

    invoke-direct {p2, p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter$SpliceViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setOnItemClickListener(Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mItemClickListener:Lcom/lewis/edit/ui/adapter/SpliceAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelect(I)V
    .locals 1

    .line 109
    iget v0, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mLastSelectPosition:I

    if-gez v0, :cond_0

    .line 110
    iput p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mLastSelectPosition:I

    .line 111
    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 114
    :cond_0
    iput p1, p0, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->mLastSelectPosition:I

    .line 115
    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 117
    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/adapter/SpliceAdapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method
