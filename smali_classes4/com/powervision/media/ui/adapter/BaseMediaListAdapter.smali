.class public Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseMediaListAdapter.java"

# interfaces
.implements Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;,
        Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;
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

.field private gvWidth:I

.field private isImage:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

.field private seclist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;",
            "Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->selectMode:Z

    .line 43
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p6, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    .line 45
    iput-object p4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    .line 46
    iput-object p5, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    add-int/lit8 p3, p3, -0x24

    .line 47
    div-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->gvWidth:I

    .line 48
    iput p3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->gvHeight:I

    .line 49
    iput-boolean p2, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->isImage:Z

    .line 50
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->initGroup()V

    .line 51
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    return-void
.end method

.method private showImageTipDialog()V
    .locals 2

    .line 331
    new-instance v0, Lcom/powervision/media/widgets/MediaTipDialog;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;)V

    .line 332
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_62:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setTitle(I)V

    .line 333
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_201:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setContent(I)V

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/powervision/media/ui/adapter/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;

    invoke-direct {v1, v0}, Lcom/powervision/media/ui/adapter/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;-><init>(Lcom/powervision/media/widgets/MediaTipDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setDialogTipListener(Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;)V

    .line 335
    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaTipDialog;->show()V

    return-void
.end method

.method private showSelectOneDialog(I)V
    .locals 2

    .line 323
    new-instance v0, Lcom/powervision/media/widgets/MediaTipDialog;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;-><init>(Landroid/content/Context;)V

    .line 324
    sget v1, Lcom/powervision/media/R$string;->App_MediaLib_62:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/MediaTipDialog;->setTitle(I)V

    .line 325
    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->setContent(I)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/powervision/media/ui/adapter/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;

    invoke-direct {p1, v0}, Lcom/powervision/media/ui/adapter/-$$Lambda$ABJdJZexM0QuGwv1gKsM0KTynbU;-><init>(Lcom/powervision/media/widgets/MediaTipDialog;)V

    invoke-virtual {v0, p1}, Lcom/powervision/media/widgets/MediaTipDialog;->setDialogTipListener(Lcom/powervision/media/widgets/MediaTipDialog$DialogTipListener;)V

    .line 327
    invoke-virtual {v0}, Lcom/powervision/media/widgets/MediaTipDialog;->show()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupedId(I)J
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

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

    .line 122
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    if-nez p2, :cond_2

    .line 129
    new-instance p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;-><init>()V

    .line 130
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/media/R$layout;->media_header_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 131
    sget v0, Lcom/powervision/media/R$id;->header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/powervision/media/R$id;->checkbox_group_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 133
    sget v0, Lcom/powervision/media/R$id;->text_select:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;->mTextSelect:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object p2, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$GroupedViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

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
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 150
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->context:Landroid/content/Context;

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 157
    new-instance p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;-><init>()V

    .line 158
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/powervision/media/R$layout;->media_grid_group_item:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 159
    sget v2, Lcom/powervision/media/R$id;->img_media_photo:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 160
    sget v2, Lcom/powervision/media/R$id;->checkbox_item_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/powervision/media/widgets/CheckedImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->checkBox:Lcom/powervision/media/widgets/CheckedImageView;

    .line 161
    sget v2, Lcom/powervision/media/R$id;->image_select:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 162
    sget v2, Lcom/powervision/media/R$id;->text_length:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, p3

    move-object p3, p2

    move-object p2, v8

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;

    .line 167
    :goto_0
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->gvWidth:I

    iget v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->gvHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 168
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-boolean v2, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->isImage:Z

    const/16 v3, 0x8

    if-nez v2, :cond_4

    .line 170
    iget-object v2, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 172
    iget-object v2, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getDuration()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/StringUtils;->formatVideoLength(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 174
    :cond_3
    iget-object v2, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    sget v4, Lcom/powervision/media/R$string;->App_MediaLib_196:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 177
    :cond_4
    iget-object v2, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v2, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mTextLength:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 181
    iget-object v4, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    .line 183
    iget-object v5, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    if-eqz v5, :cond_5

    .line 184
    iget-object v6, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v5, v2, v6}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;->InflateTheImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V

    .line 190
    :cond_5
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 193
    :cond_6
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :goto_2
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->time:Ljava/lang/String;

    .line 196
    iget-object p3, p3, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;

    invoke-direct {v1, p0, v0, p1, v4}, Lcom/powervision/media/ui/adapter/-$$Lambda$BaseMediaListAdapter$kbqRyqyrBZkIjyAIegsG5t18eMo;-><init>(Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    if-eqz p1, :cond_7

    .line 317
    invoke-interface {p1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;->showPopUp()V

    :cond_7
    return-object p2
.end method

.method public initGroup()V
    .locals 9

    .line 63
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    :goto_0
    iget-object v3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

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

    .line 74
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 81
    :goto_2
    iget-object v6, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 82
    iget-object v6, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    .line 84
    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 85
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

    .line 94
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public synthetic lambda$getView$0$BaseMediaListAdapter(Lcom/powervision/base/model/MediaModel;ILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 8

    .line 197
    iget-boolean p4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->selectMode:Z

    if-eqz p4, :cond_12

    .line 200
    new-instance p4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 201
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 206
    iget-boolean v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->isImage:Z

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p1, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 210
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    iget-object v5, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    if-eqz v4, :cond_1

    .line 214
    invoke-interface {v4, v0, p2, v3}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;->reSetTheGroupCheck(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p1, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 222
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 223
    iget-object v5, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    iget-object v5, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 225
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    if-eqz v4, :cond_1

    .line 226
    invoke-interface {v4, v0, p2, v3}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;->reSetTheGroupCheck(Ljava/lang/String;IZ)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 232
    :cond_2
    sget p1, Lcom/powervision/media/ui/activity/FreeEditActivity;->allSize:I

    sub-int/2addr p1, v2

    sput p1, Lcom/powervision/media/ui/activity/FreeEditActivity;->allSize:I

    const/16 p1, 0x8

    .line 233
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 235
    :cond_3
    iget-boolean v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->isImage:Z

    if-eqz v1, :cond_4

    .line 236
    invoke-direct {p0}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->showImageTipDialog()V

    return-void

    .line 239
    :cond_4
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1770

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 240
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_63:I

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->showSelectOneDialog(I)V

    return-void

    .line 243
    :cond_5
    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xdbba0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    .line 244
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_195:I

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->showSelectOneDialog(I)V

    return-void

    .line 247
    :cond_6
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 249
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_197:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 252
    :cond_7
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->mInfoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v1}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    .line 253
    sget p1, Lcom/powervision/media/R$string;->APP_function_43:I

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->showSelectOneDialog(I)V

    return-void

    .line 256
    :cond_8
    invoke-virtual {p1, v2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 257
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    sget v1, Lcom/powervision/media/R$mipmap;->icon_select:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p3, 0x0

    const/4 v1, 0x0

    .line 260
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_b

    .line 261
    iget-boolean v4, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->isImage:Z

    if-eqz v4, :cond_9

    .line 262
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    .line 266
    :cond_9
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_3
    const/4 v1, 0x1

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_b
    if-nez v1, :cond_c

    .line 272
    iget-object p3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget p1, Lcom/powervision/media/ui/activity/FreeEditActivity;->allSize:I

    add-int/2addr p1, v2

    sput p1, Lcom/powervision/media/ui/activity/FreeEditActivity;->allSize:I

    :cond_c
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 278
    :goto_4
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_f

    .line 279
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 281
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 283
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_10

    move p3, p1

    const/4 p4, 0x1

    goto :goto_5

    :cond_d
    if-eqz p3, :cond_e

    if-le p1, p3, :cond_e

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_f
    :goto_6
    move v3, p4

    :cond_10
    if-eqz v3, :cond_11

    .line 298
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    if-eqz p1, :cond_11

    .line 299
    invoke-interface {p1, v0, p2, v2}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;->reSetTheGroupCheck(Ljava/lang/String;IZ)V

    .line 300
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 301
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->group:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_11
    :goto_7
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    if-eqz p1, :cond_13

    .line 307
    invoke-interface {p1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;->showPopUp()V

    goto :goto_8

    .line 310
    :cond_12
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    if-eqz p1, :cond_13

    .line 311
    iget-object p3, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    invoke-interface {p1, p2, p3}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;->onClick(ILjava/util/List;)V

    :cond_13
    :goto_8
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

    .line 55
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public setSeclist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->seclist:Ljava/util/ArrayList;

    return-void
.end method
