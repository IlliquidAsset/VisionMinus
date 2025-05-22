.class public Lcom/powervision/user/ui/adapter/MessageDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;,
        Lcom/powervision/user/ui/adapter/MessageDetailAdapter$EmptyHolder;,
        Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;
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
.field private static viewType:I


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->dataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/user/ui/adapter/MessageDetailAdapter;)Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->onItemClickListener:Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->dataList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 46
    instance-of v0, p1, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;

    .line 48
    move-object v1, p1

    check-cast v1, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;

    invoke-static {v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->access$000(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroidx/constraintlayout/widget/Group;

    move-result-object v2

    iget-object v3, v0, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 49
    invoke-static {v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->access$100(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-static {v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->access$100(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v0, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->image_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-static {v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->access$200(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 54
    :cond_2
    invoke-static {v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->access$200(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, v0, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->image_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->access$200(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 57
    :goto_2
    invoke-static {v1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;->access$300(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;->send_date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$1;-><init>(Lcom/powervision/user/ui/adapter/MessageDetailAdapter;Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 36
    sget p2, Lcom/powervision/user/R$layout;->user_message_detail_item:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 39
    :cond_0
    sget p2, Lcom/powervision/user/R$layout;->user_message_empty_item:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$EmptyHolder;

    invoke-direct {p2, p1}, Lcom/powervision/user/ui/adapter/MessageDetailAdapter$EmptyHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageDetailAdapter;->onItemClickListener:Lcom/powervision/user/ui/adapter/MessageDetailAdapter$OnItemClickListener;

    return-void
.end method
