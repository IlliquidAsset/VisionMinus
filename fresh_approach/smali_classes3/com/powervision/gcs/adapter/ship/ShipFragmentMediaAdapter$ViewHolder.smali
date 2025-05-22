.class public Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShipFragmentMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field downloadProgressStatus:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

.field imgMediaPhoto:Landroid/widget/ImageView;

.field ivEmpty:Landroid/widget/ImageView;

.field mediaLayout:Landroid/widget/RelativeLayout;

.field mediaTitle:Landroid/widget/TextView;

.field playImage:Landroid/widget/ImageView;

.field tvEmptyContent:Landroid/widget/TextView;

.field tvEmptyTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    sget p2, Lcom/powervision/gcs/R$id;->media_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->mediaLayout:Landroid/widget/RelativeLayout;

    .line 322
    sget p2, Lcom/powervision/gcs/R$id;->play_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    .line 324
    sget p2, Lcom/powervision/gcs/R$id;->img_media_photo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->imgMediaPhoto:Landroid/widget/ImageView;

    .line 325
    sget p2, Lcom/powervision/gcs/R$id;->download_progress_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->downloadProgressStatus:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    goto :goto_0

    .line 315
    :pswitch_1
    sget p2, Lcom/powervision/gcs/R$id;->media_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->mediaTitle:Landroid/widget/TextView;

    goto :goto_0

    .line 306
    :pswitch_2
    sget p2, Lcom/powervision/gcs/R$id;->iv_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->ivEmpty:Landroid/widget/ImageView;

    .line 307
    sget p2, Lcom/powervision/gcs/R$id;->tv_empty_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->tvEmptyTitle:Landroid/widget/TextView;

    .line 308
    sget p2, Lcom/powervision/gcs/R$id;->tv_empty_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$ViewHolder;->tvEmptyContent:Landroid/widget/TextView;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
