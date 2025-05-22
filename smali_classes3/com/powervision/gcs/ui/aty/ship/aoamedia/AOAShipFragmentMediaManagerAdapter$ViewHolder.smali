.class public Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AOAShipFragmentMediaManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mImagePhoto:Landroid/widget/ImageView;

.field mImageSelect:Landroid/widget/ImageView;

.field mLayoutMedia:Landroid/widget/RelativeLayout;

.field mProgress:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

.field mTextStatus:Landroid/widget/TextView;

.field mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 496
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    sget p2, Lcom/powervision/gcs/R$id;->media_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mLayoutMedia:Landroid/widget/RelativeLayout;

    .line 510
    sget p2, Lcom/powervision/gcs/R$id;->item_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 511
    sget p2, Lcom/powervision/gcs/R$id;->img_media_photo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mImagePhoto:Landroid/widget/ImageView;

    .line 512
    sget p2, Lcom/powervision/gcs/R$id;->download_progress_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mProgress:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    .line 513
    sget p2, Lcom/powervision/gcs/R$id;->download_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mTextStatus:Landroid/widget/TextView;

    goto :goto_0

    .line 503
    :cond_1
    sget p2, Lcom/powervision/gcs/R$id;->media_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$ViewHolder;->mTextTitle:Landroid/widget/TextView;

    :goto_0
    return-void
.end method
