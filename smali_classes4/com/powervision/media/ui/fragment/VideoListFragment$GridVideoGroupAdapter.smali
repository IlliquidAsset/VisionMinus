.class Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/VideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridVideoGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;,
        Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;
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

.field infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

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
.method constructor <init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;)V
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
            "Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;",
            ")V"
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    .line 632
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    .line 635
    iput-object p2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    .line 636
    iput-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x24

    .line 637
    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->gvWith:I

    .line 638
    iput p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->gvHeight:I

    .line 639
    iput-object p4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    .line 640
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->initGroup()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;)V
    .locals 0

    .line 622
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->initGroup()V

    return-void
.end method

.method private initGroup()V
    .locals 9

    .line 644
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 650
    :goto_0
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 651
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

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

    .line 652
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

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

    .line 655
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 658
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 659
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 662
    :goto_2
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 663
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    .line 665
    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 666
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

    .line 675
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private showTipDialog()V
    .locals 2

    .line 959
    new-instance v0, Lcom/powervision/media/widgets/MediaTipDialog;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;)V

    .line 960
    sget v1, Lcom/powervision/media/R$string;->APP_function_43:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setContent(I)V

    .line 961
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;-><init>(Lcom/powervision/media/widgets/MediaTipDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setDialogTipListener(Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;)V

    .line 962
    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaTipDialog;->show()V

    return-void
.end method


# virtual methods
.method clearGroup()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupedId(I)J
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 874
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 878
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    if-nez p2, :cond_2

    .line 881
    new-instance p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;-><init>()V

    .line 882
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/media/R$layout;->media_header_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 883
    sget v0, Lcom/powervision/media/R$id;->header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    .line 884
    sget v0, Lcom/powervision/media/R$id;->checkbox_group_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 885
    sget v0, Lcom/powervision/media/R$id;->text_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextSelect:Landroid/widget/TextView;

    .line 886
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 888
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 890
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 892
    iget-object v1, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object p2, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$GroupedViewHolder;->mTextSelect:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;

    invoke-direct {v1, p0, v0, p1}, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$hTUj5qZCmb-nSMZWwqOoBFMjI_A;-><init>(Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 715
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 716
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 717
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 720
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 723
    new-instance p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;-><init>()V

    .line 724
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/powervision/media/R$layout;->media_grid_group_item:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 725
    sget v2, Lcom/powervision/media/R$id;->play_image:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    .line 726
    sget v2, Lcom/powervision/media/R$id;->img_media_photo:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 727
    sget v2, Lcom/powervision/media/R$id;->checkbox_item_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/powervision/media/widgets/CheckedImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    .line 728
    sget v2, Lcom/powervision/media/R$id;->image_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 729
    sget v2, Lcom/powervision/media/R$id;->text_length:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    .line 730
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    goto :goto_0

    .line 732
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 734
    :goto_0
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->gvWith:I

    iget v4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->gvHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 735
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    iget-object v2, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v2

    .line 739
    iget-object v4, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/powervision/base/utils/StringUtils;->formatVideoLength(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v2, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    invoke-virtual {v2}, Lcom/powervision/media/widgets/CheckedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 742
    iget v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->gvHeight:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 743
    iget v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->gvHeight:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 744
    iget-object v3, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    invoke-virtual {v3, v2}, Lcom/powervision/media/widgets/CheckedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->time:Ljava/lang/String;

    .line 746
    iget-object v2, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object v2, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$XP8pChflsRe4VdsHgLjgYXtgcv0;

    invoke-direct {v4, p0, v0, p1}, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$XP8pChflsRe4VdsHgLjgYXtgcv0;-><init>(Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;Lcom/powervision/base/model/MediaModel;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 771
    iget-object v4, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 773
    iget-object v5, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    iget-object v6, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v5, v2, v6}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->InflateTheImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V

    .line 775
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 776
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 778
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    :goto_1
    iget-object p3, p3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;

    invoke-direct {v1, p0, v0, p1, v4}, Lcom/powervision/media/ui/fragment/-$$Lambda$VideoListFragment$GridVideoGroupAdapter$S7zwewOwTHeCFUuZebF1cIRpkNM;-><init>(Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public synthetic lambda$getGroupedView$2$VideoListFragment$GridVideoGroupAdapter(Ljava/lang/String;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 895
    new-instance p4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 896
    check-cast p3, Landroid/widget/TextView;

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 897
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_23:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 899
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

    .line 901
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 902
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

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

    .line 907
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    goto :goto_0

    .line 912
    :cond_3
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    if-eqz p3, :cond_9

    .line 914
    invoke-interface {p3, p1, p2, v2}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->reSetTheImageCheckBox(Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 917
    :cond_4
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 920
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

    .line 921
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 922
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 923
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v0, v2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 925
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v5}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 930
    :cond_7
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    if-eqz p3, :cond_8

    .line 931
    invoke-interface {p3, p1, p2, v1}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->reSetTheImageCheckBox(Ljava/lang/String;IZ)V

    .line 933
    :cond_8
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 935
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    if-eqz p1, :cond_a

    .line 936
    invoke-interface {p1}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->showPopUp()V

    :cond_a
    return v2
.end method

.method public synthetic lambda$getView$0$VideoListFragment$GridVideoGroupAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/view/View;)V
    .locals 2

    .line 748
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 749
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 750
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    sget p2, Lcom/powervision/media/R$string;->App_MediaLib_196:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 753
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 754
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->showTipDialog()V

    return-void

    .line 758
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 761
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    const-string v1, "com.powervision.newvisionplus.fileprovider"

    invoke-static {p2, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 763
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 765
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p2}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_0
    const-string p3, "video/mp4"

    .line 767
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$getView$1$VideoListFragment$GridVideoGroupAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 6

    const-string p4, "-------->"

    .line 782
    invoke-static {p4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 783
    sget-boolean p4, Lcom/powervision/media/ui/fragment/VideoListFragment;->selectMode:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_b

    .line 785
    new-instance p4, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 786
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 790
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 791
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual {p1, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 794
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 796
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    if-eqz v2, :cond_0

    .line 797
    invoke-interface {v2, v1, p2, v3}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 802
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 804
    :cond_2
    invoke-virtual {p1, v0}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 805
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    sget v2, Lcom/powervision/media/R$mipmap;->icon_select:I

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p3, 0x0

    const/4 v2, 0x0

    .line 808
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_4

    .line 809
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 814
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 820
    :goto_2
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_8

    .line 821
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 823
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 825
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

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

    .line 841
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    if-eqz p1, :cond_a

    .line 842
    invoke-interface {p1, v1, p2, v0}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->reSetTheGroupCheckBox(Ljava/lang/String;IZ)V

    .line 844
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 845
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    if-eqz p1, :cond_d

    .line 852
    invoke-interface {p1}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->showPopUp()V

    goto :goto_6

    .line 855
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "-------->---------"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 856
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 857
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result p1

    if-ne p1, v0, :cond_c

    .line 858
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_196:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 861
    :cond_c
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    if-eqz p1, :cond_d

    .line 862
    iget-object p3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

    invoke-interface {p1, p2, p3}, Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;->onClick(ILjava/util/List;)V

    :cond_d
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

    .line 689
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->list:Ljava/util/List;

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

    .line 685
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->seclist:Ljava/util/ArrayList;

    return-void
.end method
