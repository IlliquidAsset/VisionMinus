.class Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoAlbumActivity.java"

# interfaces
.implements Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/activity/VideoAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridVideoGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;,
        Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;
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

.field private listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

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
.method constructor <init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;)V
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
            "Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;",
            ")V"
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    .line 370
    iput-object p4, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

    .line 371
    iput-object p2, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    .line 372
    iput-object p3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x24

    .line 373
    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->gvWith:I

    .line 374
    iput p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->gvHeight:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupedId(I)J
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 524
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 528
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    if-nez p2, :cond_2

    .line 532
    new-instance p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;-><init>()V

    .line 533
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/media/R$layout;->media_header_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 534
    sget v0, Lcom/powervision/media/R$id;->header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    .line 535
    sget v0, Lcom/powervision/media/R$id;->checkbox_group_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 536
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 540
    :goto_0
    iget-object p2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 384
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 399
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 403
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 408
    new-instance p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;-><init>()V

    .line 409
    iget-object v2, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/powervision/media/R$layout;->media_grid_group_item:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 410
    sget v2, Lcom/powervision/media/R$id;->img_media_photo:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 411
    sget v2, Lcom/powervision/media/R$id;->checkbox_item_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/powervision/media/widgets/CheckedImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    .line 412
    sget v2, Lcom/powervision/media/R$id;->play_image:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    .line 413
    sget v2, Lcom/powervision/media/R$id;->image_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 414
    sget v2, Lcom/powervision/media/R$id;->text_length:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    .line 415
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    .line 419
    :goto_0
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->time:Ljava/lang/String;

    .line 420
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->gvWith:I

    iget v4, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->gvHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 421
    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 424
    iget-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getDuration()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/powervision/base/utils/StringUtils;->formatVideoLength(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 426
    :cond_3
    iget-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/powervision/media/R$string;->App_MediaLib_196:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :goto_1
    iget-object v2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 430
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

    if-eqz v3, :cond_4

    .line 431
    iget-object v4, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v3, v0, v4}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;->InflateTheImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V

    .line 434
    :cond_4
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 435
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    .line 437
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    :goto_2
    iget-object p2, p2, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$GridVideoGroupAdapter$x8QYssw_54HTp53NZOblbmMLAcU;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$GridVideoGroupAdapter$x8QYssw_54HTp53NZOblbmMLAcU;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method public synthetic lambda$getView$0$VideoAlbumActivity$GridVideoGroupAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 7

    .line 441
    new-instance p4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 446
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 447
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p1, v2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 450
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

    if-eqz v3, :cond_0

    .line 453
    invoke-interface {v3, v0, p2, v2}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 459
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 461
    :cond_2
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 462
    new-instance p1, Lcom/powervision/media/widgets/MediaTipDialog;

    iget-object p2, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;)V

    .line 463
    sget p2, Lcom/powervision/media/R$string;->App_MediaLib_196:I

    invoke-virtual {p1, p2}, Lcom/powervision/media/widgets/MediaTipDialog;->setTitle(I)V

    .line 464
    sget p2, Lcom/powervision/media/R$string;->App_MediaLib_197:I

    invoke-virtual {p1, p2}, Lcom/powervision/media/widgets/MediaTipDialog;->setContent(I)V

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/powervision/media/ui/activity/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;

    invoke-direct {p2, p1}, Lcom/powervision/media/ui/activity/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;-><init>(Lcom/powervision/media/widgets/MediaTipDialog;)V

    invoke-virtual {p1, p2}, Lcom/powervision/media/widgets/MediaTipDialog;->setDialogTipListener(Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;)V

    .line 466
    invoke-virtual {p1}, Lcom/powervision/media/widgets/MediaTipDialog;->show()V

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 469
    invoke-virtual {p1, v1}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 470
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    sget v3, Lcom/powervision/media/R$mipmap;->icon_select:I

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p3, 0x0

    const/4 v3, 0x0

    .line 473
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_5

    .line 474
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 479
    iget-object p3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 485
    :goto_2
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_9

    .line 486
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    .line 488
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 490
    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_a

    move p3, p1

    const/4 p4, 0x1

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    if-le p1, p3, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    move v2, p4

    :cond_a
    if-eqz v2, :cond_b

    .line 505
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

    if-eqz p1, :cond_b

    .line 506
    invoke-interface {p1, v0, p2, v1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    .line 507
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 508
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

    if-eqz p1, :cond_c

    .line 515
    invoke-interface {p1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;->showPopUp()V

    :cond_c
    return-void
.end method
