.class Lcom/powervision/base/views/widget/WheelViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WheelViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/base/views/widget/WheelViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field adapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

.field final itemCount:I

.field final itemSize:I

.field final orientation:I

.field private final totalItemCount:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput p1, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->orientation:I

    .line 33
    iput p2, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->itemSize:I

    .line 34
    iput p3, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->itemCount:I

    mul-int/lit8 p3, p3, 0x2

    .line 35
    iput p3, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->totalItemCount:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 45
    iget v0, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->totalItemCount:I

    iget-object v1, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->adapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;->getItemCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method getItemString(I)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->adapter:Lcom/powervision/base/views/widget/WheelView$WheelAdapter;

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 10
    check-cast p1, Lcom/powervision/base/views/widget/WheelViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelViewAdapter;->onBindViewHolder(Lcom/powervision/base/views/widget/WheelViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/base/views/widget/WheelViewHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/views/widget/WheelViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/base/views/widget/WheelViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/base/views/widget/WheelViewHolder;
    .locals 1

    .line 50
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    iget p1, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->orientation:I

    iget v0, p0, Lcom/powervision/base/views/widget/WheelViewAdapter;->itemSize:I

    invoke-static {p1, v0}, Lcom/powervision/base/utils/WheelUtils;->createLayoutParams(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance p1, Lcom/powervision/base/views/widget/WheelViewHolder;

    invoke-direct {p1, p2}, Lcom/powervision/base/views/widget/WheelViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
