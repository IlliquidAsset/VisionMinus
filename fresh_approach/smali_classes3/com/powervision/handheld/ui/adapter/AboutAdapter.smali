.class public Lcom/powervision/handheld/ui/adapter/AboutAdapter;
.super Lcom/powervision/base/base/BaseRecyclerViewAdapter;
.source "AboutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;,
        Lcom/powervision/handheld/ui/adapter/AboutAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseRecyclerViewAdapter<",
        "Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/handheld/model/AboutItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/powervision/handheld/ui/adapter/AboutAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/powervision/handheld/model/AboutItemBean;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/powervision/base/base/BaseRecyclerViewAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$AboutAdapter(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 68
    iget-object p3, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mListener:Lcom/powervision/handheld/ui/adapter/AboutAdapter$OnClickListener;

    if-eqz p3, :cond_0

    .line 69
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$300(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$OnClickListener;->onClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->onBindViewHolder(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;I)V
    .locals 4

    .line 58
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$000(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$100(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/handheld/model/AboutItemBean;

    invoke-virtual {v3}, Lcom/powervision/handheld/model/AboutItemBean;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$200(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/handheld/model/AboutItemBean;

    invoke-virtual {v3}, Lcom/powervision/handheld/model/AboutItemBean;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$300(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/handheld/model/AboutItemBean;

    invoke-virtual {v3}, Lcom/powervision/handheld/model/AboutItemBean;->isShowCheck()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p2, :cond_2

    .line 63
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$400(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$400(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :goto_2
    invoke-static {p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;->access$300(Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/powervision/handheld/ui/adapter/-$$Lambda$AboutAdapter$xzwWyx-Uk7dhwZjeyKdvuOi974c;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/handheld/ui/adapter/-$$Lambda$AboutAdapter$xzwWyx-Uk7dhwZjeyKdvuOi974c;-><init>(Lcom/powervision/handheld/ui/adapter/AboutAdapter;Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;
    .locals 2

    .line 52
    iget-object p2, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/handheld/R$layout;->hand_about_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/handheld/ui/adapter/AboutAdapter$AboutViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnClickListener(Lcom/powervision/handheld/ui/adapter/AboutAdapter$OnClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/handheld/ui/adapter/AboutAdapter;->mListener:Lcom/powervision/handheld/ui/adapter/AboutAdapter$OnClickListener;

    return-void
.end method
