.class public Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotifyMessageListAdatper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final Tag:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "NotifymsgAdatper"

    .line 31
    iput-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->Tag:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addData(I)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemInserted(I)V

    return-void
.end method

.method public addData(Lcom/powervision/base/warning/HoverMessage;)Z
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/warning/HoverMessage;

    .line 146
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "message = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    return v2

    .line 150
    :cond_1
    invoke-virtual {p1}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 156
    invoke-virtual {p0, v2, p1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemRangeChanged(II)V

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/warning/HoverMessage;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$0$NotifyMessageListAdatper(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;)V
    .locals 2

    .line 109
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_1

    .line 111
    iget-object p1, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->itemContentTv:Lcom/powervision/base/views/NotifyMessageTextView;

    invoke-virtual {p1}, Lcom/powervision/base/views/NotifyMessageTextView;->getMessage()Lcom/powervision/base/warning/HoverMessage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemRemoved(I)V

    .line 121
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->onBindViewHolder(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;I)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v0}, Lcom/powervision/base/warning/HoverMessage;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->closeBt:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->closeBt:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v2}, Lcom/powervision/base/warning/HoverMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    iget-object v3, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->itemContentTv:Lcom/powervision/base/views/NotifyMessageTextView;

    invoke-virtual {v3, v2}, Lcom/powervision/base/views/NotifyMessageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    iget-object v2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->itemContentTv:Lcom/powervision/base/views/NotifyMessageTextView;

    iget-object v3, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/warning/HoverMessage;

    invoke-virtual {v2, p2}, Lcom/powervision/base/views/NotifyMessageTextView;->setMessage(Lcom/powervision/base/warning/HoverMessage;)V

    if-ne v0, v1, :cond_2

    .line 66
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_msg_warning:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 68
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->sideBar:Landroid/view/View;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_msg_warning:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object p1, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->closeBt:Landroid/widget/ImageView;

    new-instance p2, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;

    invoke-direct {p2, p0}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$1;-><init>(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne v0, p2, :cond_3

    .line 88
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_msg_notice:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 90
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->sideBar:Landroid/view/View;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_msg_notice:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->closeBt:Landroid/widget/ImageView;

    new-instance v0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$2;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$2;-><init>(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/powervision/aircraft/adapter/-$$Lambda$NotifyMessageListAdatper$S_87qFIZrUkcySG5C0d0Avkt1OI;

    invoke-direct {v0, p0, p1}, Lcom/powervision/aircraft/adapter/-$$Lambda$NotifyMessageListAdatper$S_87qFIZrUkcySG5C0d0Avkt1OI;-><init>(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p2, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;
    .locals 3

    .line 41
    new-instance p2, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$layout;->aircraft_notify_msg_adapter_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper$MyViewHolder;-><init>(Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/warning/HoverMessage;

    invoke-static {v0}, Lcom/powervision/aircraft/utils/NotifyMessageUtil;->updateMsgCount(Lcom/powervision/base/warning/HoverMessage;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/adapter/NotifyMessageListAdatper;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
