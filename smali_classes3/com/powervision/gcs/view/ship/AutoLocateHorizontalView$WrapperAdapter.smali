.class Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AutoLocateHorizontalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter$HeaderFooterViewHolder;
    }
.end annotation


# static fields
.field private static final HEADER_FOOTER_TYPE:I = -0x1


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private context:Landroid/content/Context;

.field private headerFooterWidth:I

.field private itemCount:I

.field private itemView:Landroid/view/View;

.field private itemWidth:I

.field final synthetic this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/Context;I)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 328
    iput-object p3, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    .line 329
    iput p4, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemCount:I

    .line 330
    instance-of p1, p2, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;

    if-eqz p1, :cond_0

    .line 331
    check-cast p2, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;

    invoke-interface {p2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;->getItemView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemView:Landroid/view/View;

    return-void

    .line 333
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " should implements AutoLocateHorizontalView.IAutoLocateHorizontalView !"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isHeaderOrFooter(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getHeaderFooterWidth()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->headerFooterWidth:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getItemWidth()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemWidth:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 361
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->isHeaderOrFooter(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 363
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->access$1000(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 364
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;

    iget v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemWidth:I

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;->onViewSelected(ZILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemWidth:I

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;->onViewSelected(ZILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 340
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 341
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getParentWidth(Landroid/content/Context;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getParentWidth(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemCount:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->headerFooterWidth:I

    .line 342
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v1, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->headerFooterWidth:I

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 343
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance p2, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter$HeaderFooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter$HeaderFooterViewHolder;-><init>(Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;Landroid/view/View;)V

    return-object p2

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 347
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p2, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;

    invoke-interface {p2}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$IAutoLocateHorizontalView;->getItemView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemView:Landroid/view/View;

    .line 348
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->this$0:Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView;->getParentWidth(Landroid/content/Context;)I

    move-result p2

    iget v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemCount:I

    div-int/2addr p2, v0

    .line 349
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 352
    iput p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemWidth:I

    .line 353
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/AutoLocateHorizontalView$WrapperAdapter;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p1
.end method
