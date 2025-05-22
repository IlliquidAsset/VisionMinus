.class public Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "HorizontalListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private filterName:[Ljava/lang/String;

.field private filterPic:[I

.field private listener:Lcom/powervision/base/listener/PhotoEditClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectPos:I


# direct methods
.method public constructor <init>([Ljava/lang/String;[ILcom/powervision/base/listener/PhotoEditClickListener;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mSelectPos:I

    .line 29
    iput-object p1, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->filterName:[Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->filterPic:[I

    .line 31
    iput-object p3, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->listener:Lcom/powervision/base/listener/PhotoEditClickListener;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->filterName:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->filterName:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mContext:Landroid/content/Context;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 59
    new-instance p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;)V

    .line 60
    iget-object v1, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/lewis/edit/R$layout;->edit_filter_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 61
    sget v1, Lcom/lewis/edit/R$id;->filter_image:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->filterImage:Landroid/widget/ImageView;

    .line 62
    sget v1, Lcom/lewis/edit/R$id;->filter_name:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->filterName:Landroid/widget/TextView;

    .line 63
    sget v1, Lcom/lewis/edit/R$id;->select_circle:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->filterSelect:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 69
    :goto_0
    iget-object v1, p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->filterImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/lewis/edit/ui/adapter/-$$Lambda$HorizontalListViewAdapter$N1sgmNMSDOjxPLSeosDh4HfNfVQ;

    invoke-direct {v2, p0, p1}, Lcom/lewis/edit/ui/adapter/-$$Lambda$HorizontalListViewAdapter$N1sgmNMSDOjxPLSeosDh4HfNfVQ;-><init>(Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->filterImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->filterPic:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v1, p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->filterSelect:Landroid/widget/ImageView;

    iget v2, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mSelectPos:I

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object p2, p2, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter$ViewHolder;->filterName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->filterName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public synthetic lambda$getView$0$HorizontalListViewAdapter(ILandroid/view/View;)V
    .locals 0

    .line 70
    iget-object p2, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->listener:Lcom/powervision/base/listener/PhotoEditClickListener;

    if-eqz p2, :cond_0

    .line 71
    iput p1, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mSelectPos:I

    .line 72
    invoke-interface {p2, p1}, Lcom/powervision/base/listener/PhotoEditClickListener;->onClick(I)V

    .line 73
    invoke-virtual {p0}, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setSelectPos(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->mSelectPos:I

    .line 94
    invoke-virtual {p0}, Lcom/lewis/edit/ui/adapter/HorizontalListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
