.class Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShipScollSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipScollSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalleryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private eW:I

.field private mDatas:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private missageListener:Lcom/powervision/gcs/ui/interfaces/MessageLisetener;

.field private wH:I

.field private wW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/powervision/gcs/ui/interfaces/MessageLisetener;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 288
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 289
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->mDatas:[Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->missageListener:Lcom/powervision/gcs/ui/interfaces/MessageLisetener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->mDatas:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 279
    check-cast p1, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->onBindViewHolder(Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;I)V
    .locals 2

    .line 336
    iget-object v0, p1, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;->mTxt:Lcom/powervision/gcs/view/RoateTextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->mDatas:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lcom/powervision/gcs/view/RoateTextView;->setDrawText(Ljava/lang/String;)V

    .line 337
    iget-object p1, p1, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;->mTxt:Lcom/powervision/gcs/view/RoateTextView;

    iget p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->wW:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/RoateTextView;->setLength(F)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;
    .locals 2

    .line 312
    iget p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->eW:I

    if-nez p2, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x5

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->eW:I

    .line 314
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->wH:I

    .line 315
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->wW:I

    .line 316
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->missageListener:Lcom/powervision/gcs/ui/interfaces/MessageLisetener;

    if-eqz p2, :cond_0

    .line 317
    invoke-interface {p2}, Lcom/powervision/gcs/ui/interfaces/MessageLisetener;->sendMessage()V

    .line 320
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/powervision/gcs/R$layout;->roat_textview:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 321
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 323
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->eW:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 324
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter;->wH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    sget v0, Lcom/powervision/gcs/R$id;->tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/view/RoateTextView;

    iput-object p1, p2, Lcom/powervision/gcs/view/ship/ShipScollSelectView$GalleryAdapter$ViewHolder;->mTxt:Lcom/powervision/gcs/view/RoateTextView;

    return-object p2
.end method
