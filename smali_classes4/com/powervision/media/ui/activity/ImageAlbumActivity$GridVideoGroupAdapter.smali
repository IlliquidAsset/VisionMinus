.class Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAlbumActivity.java"

# interfaces
.implements Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/activity/ImageAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridVideoGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;,
        Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gvHeight:I

.field private gvWith:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private listner:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private seclist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;",
            "Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;",
            ")V"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    .line 361
    iput-object p2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    .line 362
    iput-object p4, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->listner:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    .line 363
    iput-object p3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x24

    .line 364
    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->gvWith:I

    .line 365
    iput p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->gvHeight:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupedId(I)J
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getSection()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 507
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    if-nez p2, :cond_2

    .line 510
    new-instance p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;-><init>()V

    .line 511
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/media/R$layout;->media_header_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 512
    sget v0, Lcom/powervision/media/R$id;->header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    .line 513
    sget v0, Lcom/powervision/media/R$id;->checkbox_group_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 514
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 519
    :goto_0
    iget-object p2, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 391
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 392
    iget-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 393
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 396
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 399
    new-instance p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;-><init>()V

    .line 400
    iget-object v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/powervision/media/R$layout;->media_grid_group_item:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 401
    sget v2, Lcom/powervision/media/R$id;->img_media_photo:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 402
    sget v2, Lcom/powervision/media/R$id;->checkbox_item_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/powervision/media/widgets/CheckedImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    .line 403
    sget v2, Lcom/powervision/media/R$id;->image_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 404
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    .line 408
    :goto_0
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->time:Ljava/lang/String;

    .line 409
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->gvWith:I

    iget v4, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->gvHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 410
    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v2, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    invoke-virtual {v2}, Lcom/powervision/media/widgets/CheckedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 413
    iget v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->gvHeight:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 414
    iget v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->gvHeight:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    iget-object v3, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    invoke-virtual {v3, v2}, Lcom/powervision/media/widgets/CheckedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 418
    iget-object v3, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 420
    iget-object v4, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->listner:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    if-eqz v4, :cond_3

    .line 421
    iget-object v5, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v4, v5, v6}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;->InflateTheImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 424
    :cond_3
    iget-object v4, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 427
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :goto_1
    iget-object p2, p2, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$GridVideoGroupAdapter$lG3d5Z2XcUsOIreVDgS7tbKUI1M;

    invoke-direct {v1, p0, v0, p1, v3}, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$GridVideoGroupAdapter$lG3d5Z2XcUsOIreVDgS7tbKUI1M;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method public synthetic lambda$getView$0$ImageAlbumActivity$GridVideoGroupAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 6

    .line 431
    new-instance p4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 436
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 437
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p1, v2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 440
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->listner:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    if-eqz v3, :cond_0

    .line 443
    invoke-interface {v3, v0, p2, v2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 448
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_2
    const/4 v1, 0x1

    .line 450
    invoke-virtual {p1, v1}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 451
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    sget v3, Lcom/powervision/media/R$mipmap;->icon_select:I

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p3, 0x0

    const/4 v3, 0x0

    .line 454
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_4

    .line 455
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 460
    iget-object p3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 465
    :goto_2
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 466
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    .line 468
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 470
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_9

    move p3, p1

    const/4 p4, 0x1

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_7

    if-le p1, p3, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    move v2, p4

    :cond_9
    if-eqz v2, :cond_a

    .line 485
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->listner:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    if-eqz p1, :cond_a

    .line 486
    invoke-interface {p1, v0, p2, v1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    .line 487
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 488
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->listner:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    if-eqz p1, :cond_b

    .line 494
    invoke-interface {p1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;->showPopUp()V

    :cond_b
    return-void
.end method
