.class Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PictureListFragment.java"

# interfaces
.implements Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/PictureListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridVideoGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;,
        Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;
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

.field private listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

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
.method constructor <init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;)V
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
            "Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;",
            ")V"
        }
    .end annotation

    .line 691
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    .line 692
    iput-object p4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    .line 693
    iput-object p2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    .line 694
    iput-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x24

    .line 695
    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->gvWith:I

    .line 696
    iput p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->gvHeight:I

    .line 697
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->initGroup()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->initGroup()V

    return-void
.end method

.method private initGroup()V
    .locals 9

    .line 710
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 716
    :goto_0
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 717
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 718
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 724
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 725
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 728
    :goto_2
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 729
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    .line 731
    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 732
    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 741
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method


# virtual methods
.method clearGroup()V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupedId(I)J
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 906
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 907
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 910
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    if-nez p2, :cond_2

    .line 913
    new-instance p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;-><init>()V

    .line 914
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/media/R$layout;->media_header_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 915
    sget v0, Lcom/powervision/media/R$id;->header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    .line 916
    sget v0, Lcom/powervision/media/R$id;->checkbox_group_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 917
    sget v0, Lcom/powervision/media/R$id;->text_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextSelect:Landroid/widget/TextView;

    .line 918
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 920
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 922
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 923
    iget-object v1, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object p2, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextSelect:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$PictureListFragment$GridVideoGroupAdapter$4ApLZ0hMtGvzaX8vBEApb17Yr7o;

    invoke-direct {v1, p0, v0, p1}, Lcom/powervision/media/ui/fragment/-$$Lambda$PictureListFragment$GridVideoGroupAdapter$4ApLZ0hMtGvzaX8vBEApb17Yr7o;-><init>(Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 774
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 775
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 776
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 779
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 782
    new-instance p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;-><init>()V

    .line 783
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/powervision/media/R$layout;->media_grid_group_item:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 784
    sget v2, Lcom/powervision/media/R$id;->img_media_photo:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 785
    sget v2, Lcom/powervision/media/R$id;->checkbox_item_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/powervision/media/widgets/CheckedImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    .line 786
    sget v2, Lcom/powervision/media/R$id;->image_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 787
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 791
    :goto_0
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->gvWith:I

    iget v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->gvHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 792
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 794
    iget-object v3, p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 796
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz v4, :cond_3

    .line 797
    iget-object v5, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v4, v5, v6}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->InflateTheImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 799
    :cond_3
    iget-object v4, p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    invoke-virtual {v4}, Lcom/powervision/media/widgets/CheckedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 800
    iget v5, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->gvHeight:I

    div-int/lit8 v5, v5, 0x3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 801
    iget v5, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->gvHeight:I

    div-int/lit8 v5, v5, 0x3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 802
    iget-object v5, p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    invoke-virtual {v5, v4}, Lcom/powervision/media/widgets/CheckedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 806
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 808
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    :goto_1
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->time:Ljava/lang/String;

    .line 811
    iget-object p3, p3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$PictureListFragment$GridVideoGroupAdapter$WflvTo5sYR7nE5iN6pvrwZt2TZs;

    invoke-direct {v1, p0, v0, p1, v3}, Lcom/powervision/media/ui/fragment/-$$Lambda$PictureListFragment$GridVideoGroupAdapter$WflvTo5sYR7nE5iN6pvrwZt2TZs;-><init>(Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz p1, :cond_5

    .line 897
    invoke-interface {p1}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->showPopUp()V

    :cond_5
    return-object p2
.end method

.method public synthetic lambda$getGroupedView$1$PictureListFragment$GridVideoGroupAdapter(Ljava/lang/String;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 926
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 927
    new-instance p4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 929
    check-cast p3, Landroid/widget/TextView;

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 930
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_23:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 932
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 934
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 935
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_0

    .line 940
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    goto :goto_0

    .line 945
    :cond_3
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz p3, :cond_9

    .line 947
    invoke-interface {p3, p1, p2, v2}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->reSetTheImageCheckBox(Ljava/lang/String;IZ)V

    goto :goto_3

    .line 950
    :cond_4
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 953
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 954
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 955
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 956
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 957
    invoke-virtual {v0, v2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 963
    :cond_7
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz p3, :cond_8

    .line 964
    invoke-interface {p3, p1, p2, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->reSetTheImageCheckBox(Ljava/lang/String;IZ)V

    .line 966
    :cond_8
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 968
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz p1, :cond_a

    .line 969
    invoke-interface {p1}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->showPopUp()V

    :cond_a
    return v2
.end method

.method public synthetic lambda$getView$0$PictureListFragment$GridVideoGroupAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 7

    .line 812
    sget-boolean p4, Lcom/powervision/media/ui/fragment/PictureListFragment;->selectMode:Z

    if-eqz p4, :cond_b

    .line 815
    new-instance p4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 816
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    const-string v2, "PictureListFragment"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " 1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 821
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 822
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {p1, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 825
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 826
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 827
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz v4, :cond_0

    .line 828
    invoke-interface {v4, v0, p2, v3}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 834
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 836
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " 2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 837
    invoke-virtual {p1, v1}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 838
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    sget v4, Lcom/powervision/media/R$mipmap;->icon_select:I

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p3, 0x0

    const/4 v4, 0x0

    .line 841
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_4

    .line 842
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 847
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 853
    :goto_2
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_8

    .line 854
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    .line 856
    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 858
    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

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
    move v3, p4

    :cond_9
    if-eqz v3, :cond_a

    .line 874
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz p1, :cond_a

    .line 875
    invoke-interface {p1, v0, p2, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    .line 876
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 877
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz p1, :cond_c

    const-string p1, "showPopUp"

    .line 886
    invoke-static {v2, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    invoke-interface {p1}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->showPopUp()V

    goto :goto_6

    .line 891
    :cond_b
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    if-eqz p1, :cond_c

    .line 892
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {p1, p2, p3}, Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;->onClick(ILjava/util/List;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 701
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    return-void
.end method

.method setSeclist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 706
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    return-void
.end method
