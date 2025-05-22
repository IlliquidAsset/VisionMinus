.class public Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VideoSeparateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/VideoSeparateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lewis/edit/model/entries/VideoSeparateBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->mDataArray:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->mDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 44
    check-cast p1, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;

    .line 45
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->mDataArray:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/model/entries/VideoSeparateBean;

    invoke-static {p1, p2}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;->access$100(Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;Lcom/lewis/edit/model/entries/VideoSeparateBean;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 38
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/lewis/edit/R$layout;->edit_item_video_separete:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$VideoSeparateHolder;-><init>(Landroid/view/View;Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter;Lcom/lewis/edit/ui/adapter/VideoSeparateAdapter$1;)V

    return-object p2
.end method
