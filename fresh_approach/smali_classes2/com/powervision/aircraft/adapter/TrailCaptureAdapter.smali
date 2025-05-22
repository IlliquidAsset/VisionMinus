.class public Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TrailCaptureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;,
        Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/model/bean/TrailCaptureData;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/model/bean/TrailCaptureData;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    .line 24
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public addData(Lcom/powervision/aircraft/model/bean/TrailCaptureData;I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    const/4 v0, 0x1

    .line 31
    iput v0, p1, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->isAdded:I

    :cond_0
    const/4 p1, 0x2

    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public deleteData(I)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    iget p1, p1, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->isAdded:I

    const/4 v0, 0x0

    const/4 v2, 0x5

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    new-instance v3, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    invoke-direct {v3, v2, v0, v1}, Lcom/powervision/aircraft/model/bean/TrailCaptureData;-><init>(ILandroid/graphics/Bitmap;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    new-instance v1, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lcom/powervision/aircraft/model/bean/TrailCaptureData;-><init>(ILandroid/graphics/Bitmap;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastItem(I)Z
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$onBindViewHolder$0$TrailCaptureAdapter(ILandroid/view/View;)V
    .locals 0

    const/16 p2, 0x1f4

    .line 75
    invoke-static {p2}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->onItemClickListener:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;

    if-eqz p2, :cond_1

    .line 79
    invoke-interface {p2, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;->onDeleteClick(I)V

    .line 80
    iget-object p2, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->onItemClickListener:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;

    invoke-interface {p2, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;->onItemCountChange(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$TrailCaptureAdapter(ILandroid/view/View;)V
    .locals 0

    const/16 p2, 0x1f4

    .line 90
    invoke-static {p2}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->onItemClickListener:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;

    if-eqz p2, :cond_1

    .line 94
    invoke-interface {p2, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;->onAddClick(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 95
    iget-object p2, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->onItemClickListener:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;->onItemCountChange(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->onBindViewHolder(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;I)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    .line 65
    iget v1, v0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->isAdded:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 66
    iget-object v1, v0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, v0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$100(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->icon_lapse_trail_delete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$100(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$200(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$200(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$IZH9z64eFXbLHIA--sntJxdiyk8;

    invoke-direct {v0, p0, p2}, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$IZH9z64eFXbLHIA--sntJxdiyk8;-><init>(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 83
    :cond_1
    iget v0, v0, Lcom/powervision/aircraft/model/bean/TrailCaptureData;->isAdded:I

    const/4 v1, 0x1

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    .line 84
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$drawable;->trail_capture_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$100(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->icon_lapse_trail_add:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$100(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$200(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$hUauP6ksXfn6hpt1oUGod26KFMQ;

    invoke-direct {v0, p0, p2}, Lcom/powervision/aircraft/adapter/-$$Lambda$TrailCaptureAdapter$hUauP6ksXfn6hpt1oUGod26KFMQ;-><init>(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$color;->transparent:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$drawable;->trail_capture_dash_bg:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$100(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$200(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-static {p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;->access$000(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$layout;->trail_capture_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/model/bean/TrailCaptureData;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->dataList:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->onItemClickListener:Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;

    return-void
.end method
