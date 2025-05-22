.class public Lcom/powervision/user/ui/adapter/MessageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;,
        Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageBean;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;

.field private readType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->messageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->messageList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$MessageAdapter(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;Lcom/powervision/base/net/retrofit/message/response/MessageBean;ILandroid/view/View;)V
    .locals 0

    .line 82
    iget-object p4, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->onItemClickListener:Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;

    if-eqz p4, :cond_0

    .line 83
    iget-object p1, p1, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p4, p1, p2, p3}, Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/powervision/base/net/retrofit/message/response/MessageBean;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/user/ui/adapter/MessageAdapter;->onBindViewHolder(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;I)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;

    .line 54
    sget v1, Lcom/powervision/user/R$mipmap;->user_message_active:I

    .line 55
    iget-object v2, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->type:Ljava/lang/String;

    const-string v3, "event_message"

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget v1, Lcom/powervision/user/R$mipmap;->user_message_active:I

    goto :goto_0

    :cond_0
    const-string v3, "system_message"

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    sget v1, Lcom/powervision/user/R$mipmap;->user_message_system:I

    goto :goto_0

    :cond_1
    const-string v3, "user_message"

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    sget v1, Lcom/powervision/user/R$mipmap;->user_message_user:I

    .line 63
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->access$000(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, p2, :cond_3

    .line 65
    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->access$100(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->access$100(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_1
    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->access$200(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->lastMessage:Lcom/powervision/base/net/retrofit/message/response/MessageBean$Desc;

    iget-object v4, v4, Lcom/powervision/base/net/retrofit/message/response/MessageBean$Desc;->send_date:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->access$300(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->lastMessage:Lcom/powervision/base/net/retrofit/message/response/MessageBean$Desc;

    iget-object v4, v4, Lcom/powervision/base/net/retrofit/message/response/MessageBean$Desc;->content:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->access$400(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->lastMessage:Lcom/powervision/base/net/retrofit/message/response/MessageBean$Desc;

    iget-object v4, v4, Lcom/powervision/base/net/retrofit/message/response/MessageBean$Desc;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->access$500(Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget v4, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->unread_count:I

    if-lez v4, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v1, p1, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/powervision/user/ui/adapter/-$$Lambda$MessageAdapter$bLBlqlCmBwkqehZy02USjG-iYgA;-><init>(Lcom/powervision/user/ui/adapter/MessageAdapter;Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;Lcom/powervision/base/net/retrofit/message/response/MessageBean;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/powervision/user/ui/adapter/MessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 47
    sget v0, Lcom/powervision/user/R$layout;->user_message_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/user/ui/adapter/MessageAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->onItemClickListener:Lcom/powervision/user/ui/adapter/MessageAdapter$OnItemClickListener;

    return-void
.end method

.method public setReadAll(Ljava/lang/String;)V
    .locals 4

    .line 30
    iput-object p1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->readType:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->messageList:Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;

    .line 33
    iget-object v1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->readType:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 34
    iput v2, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->unread_count:I

    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/powervision/user/ui/adapter/MessageAdapter;->readType:Ljava/lang/String;

    iget-object v3, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iput v2, v0, Lcom/powervision/base/net/retrofit/message/response/MessageBean;->unread_count:I

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/user/ui/adapter/MessageAdapter;->notifyDataSetChanged()V

    return-void
.end method
