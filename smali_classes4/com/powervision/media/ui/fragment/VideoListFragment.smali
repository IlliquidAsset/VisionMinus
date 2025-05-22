.class public Lcom/powervision/media/ui/fragment/VideoListFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;,
        Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaVideoListFragment"

.field private static final VIDEO_FRAME_TIME_NUM:I = 0x1e8480

.field public static selectMode:Z = false


# instance fields
.field private adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

.field private bottomPopouWindow:Landroid/widget/PopupWindow;

.field private dbHelper:Lcom/powervision/base/utils/DbHelper;

.field private groupInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

.field private listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

.field private mLength:I

.field private parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

.field public popisShowing:Z

.field private sectionInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private topPopouWindow:Landroid/widget/PopupWindow;

.field private totalDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private tvNum:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 81
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->groupInfo:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    .line 129
    new-instance v0, Lcom/powervision/media/ui/fragment/VideoListFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/fragment/VideoListFragment$1;-><init>(Lcom/powervision/media/ui/fragment/VideoListFragment;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/fragment/VideoListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->popUpNotify()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/fragment/VideoListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/fragment/VideoListFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->deleteSelect()V

    return-void
.end method

.method private contentView(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setVisibility(I)V

    .line 287
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p1, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private deleteSelect()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    invoke-virtual {p0, v0, v1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->dbDelete(Ljava/util/List;Lcom/powervision/base/utils/DbHelper;)V

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 603
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 604
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 609
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 610
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->contentView(Z)V

    .line 611
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->notifyDataSetChanged()V

    .line 612
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->popUpNotify()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->contentView(Z)V

    .line 615
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->popUpNotify()V

    .line 617
    :goto_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    if-eqz v0, :cond_3

    .line 618
    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->clearGroup()V

    :cond_3
    return-void
.end method

.method private getVideoPath(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 350
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hideMenu()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaFragment;->setScrollable(Z)V

    .line 305
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 306
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->popisShowing:Z

    .line 308
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    iput-boolean v0, v1, Lcom/powervision/base/base/BaseApplication;->isPopShow:Z

    :cond_0
    return-void
.end method

.method private initPopupWindow()V
    .locals 6

    .line 324
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_gcs_media_top_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 326
    sget v1, Lcom/powervision/media/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 327
    sget v3, Lcom/powervision/media/R$id;->tv_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->tvNum:Landroid/widget/TextView;

    .line 328
    sget v3, Lcom/powervision/media/R$id;->icon_download:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 329
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    .line 333
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/powervision/media/R$style;->PopupAnimationTop:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 336
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_album_bottom_select:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 337
    sget v1, Lcom/powervision/media/R$id;->image_hd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 338
    sget v2, Lcom/powervision/media/R$id;->image_delete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 339
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    .line 343
    sget v0, Lcom/powervision/media/R$style;->PopupAnimationBottom:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 344
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initdata()V
    .locals 3

    const/4 v0, 0x0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/DbHelper;->search(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getVideoPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    .line 271
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 272
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->contentView(Z)V

    .line 273
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->loadingVideo()V

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->contentView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->contentView(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadingVideo()V
    .locals 7

    .line 358
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    new-instance v1, Lcom/powervision/media/utils/CTCmparator;

    invoke-direct {v1}, Lcom/powervision/media/utils/CTCmparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 361
    :goto_0
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 363
    :goto_1
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 364
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v6, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 374
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 375
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 377
    invoke-virtual {v1, v3}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    .line 378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 381
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 384
    :cond_4
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->popUpNotify()V

    .line 385
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->notifyTheAdapter()V

    return-void
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/VideoListFragment;
    .locals 1

    .line 225
    new-instance v0, Lcom/powervision/media/ui/fragment/VideoListFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;-><init>()V

    return-object v0
.end method

.method private notifyShowSelectText()V
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 442
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 443
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 444
    instance-of v5, v4, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    if-eqz v5, :cond_0

    .line 445
    check-cast v4, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 446
    iget-object v3, v4, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    goto :goto_1

    .line 451
    :cond_0
    instance-of v3, v3, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v3, :cond_1

    .line 453
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 454
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 455
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childCount1 + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaVideoListFragment"

    invoke-static {v5, v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    .line 458
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 459
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 460
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private popUpNotify()V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 404
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    invoke-virtual {v1, v2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    .line 409
    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    .line 415
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->tvNum:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_17:I

    invoke-virtual {p0, v3}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 417
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->contentView(Z)V

    goto :goto_2

    .line 419
    :cond_4
    invoke-direct {p0, v2}, Lcom/powervision/media/ui/fragment/VideoListFragment;->contentView(Z)V

    goto :goto_2

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->tvNum:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v5, Lcom/powervision/media/R$string;->AP03_MediaLib_12:I

    invoke-virtual {p0, v5}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private showAndHideMenu(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->showMenu()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->hideMenu()V

    :goto_0
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaFragment;->setScrollable(Z)V

    .line 315
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mContentView:Landroid/view/View;

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 316
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mContentView:Landroid/view/View;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->popisShowing:Z

    .line 318
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    iput-boolean v0, v1, Lcom/powervision/base/base/BaseApplication;->isPopShow:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelEvent()V
    .locals 3

    const/4 v0, 0x0

    .line 544
    sput-boolean v0, Lcom/powervision/media/ui/fragment/VideoListFragment;->selectMode:Z

    .line 545
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 546
    :goto_0
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v0}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->showAndHideMenu(Z)V

    .line 550
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->popUpNotify()V

    .line 551
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->notifyInvadeCancel()V

    .line 552
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->clearGroup()V

    :cond_1
    return-void
.end method

.method public dbDelete(Ljava/util/List;Lcom/powervision/base/utils/DbHelper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;",
            "Lcom/powervision/base/utils/DbHelper;",
            ")V"
        }
    .end annotation

    .line 583
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 584
    const-class v1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/powervision/base/utils/DbHelper;->searchVideoByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getMainPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    invoke-static {v1}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    const-string v2, "NewVisionPlus"

    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MediaVideoListFragment"

    const-string v3, "dbDelete: "

    .line 591
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/powervision/base/utils/FileUtils;->deleteVideo(Landroid/content/Context;Ljava/lang/String;)I

    .line 594
    :cond_2
    invoke-virtual {p2, v0}, Lcom/powervision/base/utils/DbHelper;->delete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 230
    sget v0, Lcom/powervision/media/R$layout;->media_video_layout:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 241
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 242
    new-instance v0, Lcom/powervision/base/utils/ScreenUtils;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalHeight()I

    move-result v1

    .line 244
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result v0

    .line 245
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mLength:I

    .line 246
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/fragment/MediaFragment;

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

    .line 247
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->initPopupWindow()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 235
    sget p1, Lcom/powervision/media/R$id;->llt_empty:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mEmptyView:Landroid/widget/LinearLayout;

    .line 236
    sget p1, Lcom/powervision/media/R$id;->grid_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    return-void
.end method

.method public notifyInvadeCancel()V
    .locals 7

    .line 558
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 560
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 561
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 562
    instance-of v4, v3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    .line 563
    check-cast v3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 564
    iget-object v2, v3, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    goto :goto_1

    .line 569
    :cond_0
    instance-of v2, v2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 571
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 572
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    .line 573
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 574
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    sget v6, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 575
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyTheAdapter()V
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    iget v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mLength:I

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->listener:Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;-><init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/fragment/VideoListFragment$VideoShowListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    .line 391
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->setSeclist(Ljava/util/ArrayList;)V

    .line 394
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->setList(Ljava/util/List;)V

    .line 395
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->access$200(Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;)V

    .line 396
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 489
    sget v0, Lcom/powervision/media/R$id;->tv_cancel:I

    if-ne p1, v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->cancelEvent()V

    goto/16 :goto_0

    .line 491
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->text_edit:I

    const/4 v1, 0x0

    const-string v2, "video_path"

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6

    .line 492
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_1

    .line 493
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_159:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 495
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {p1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object p1

    .line 496
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/MediaInfoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    const-wide/16 v4, 0x6

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    .line 498
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_63:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoTime()J

    move-result-wide v0

    const-wide/32 v4, 0xdbba0

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    .line 500
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_195:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 502
    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_196:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->infoUtil:Lcom/powervision/base/utils/MediaInfoUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/MediaInfoUtil;->is4K()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 504
    sget p1, Lcom/powervision/media/R$string;->APP_function_43:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_5
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/edit/aVEditActivity"

    .line 507
    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v2, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 512
    :cond_6
    sget v0, Lcom/powervision/media/R$id;->text_share:I

    if-ne p1, v0, :cond_7

    .line 513
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 514
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v3, "ap03_video_share"

    invoke-static {p1, v3, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 515
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/share/shareActivity"

    .line 516
    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    .line 517
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    goto :goto_0

    .line 520
    :cond_7
    sget v0, Lcom/powervision/media/R$id;->image_delete:I

    if-ne p1, v0, :cond_9

    .line 521
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 524
    :cond_8
    new-instance p1, Lcom/powervision/media/widgets/MediaDialog;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;-><init>(Landroid/content/Context;)V

    .line 525
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_36:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;->setContent(I)V

    .line 526
    new-instance v0, Lcom/powervision/media/ui/fragment/VideoListFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/media/ui/fragment/VideoListFragment$2;-><init>(Lcom/powervision/media/ui/fragment/VideoListFragment;Lcom/powervision/media/widgets/MediaDialog;)V

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;->setDialogClickListener(Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;)V

    .line 538
    invoke-virtual {p1}, Lcom/powervision/media/widgets/MediaDialog;->show()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 469
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

    .line 471
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->adapter:Lcom/powervision/media/ui/fragment/VideoListFragment$GridVideoGroupAdapter;

    .line 472
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 473
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 474
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->sectionInfos:Ljava/util/ArrayList;

    .line 475
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->groupInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 476
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->groupInfo:Ljava/util/List;

    .line 477
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 478
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->totalDatas:Ljava/util/List;

    .line 479
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/VideoListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    .line 480
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 259
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 260
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->initdata()V

    return-void
.end method

.method public showPop()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe2
    .end annotation

    const-string v0, "showpop"

    .line 429
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 430
    sput-boolean v0, Lcom/powervision/media/ui/fragment/VideoListFragment;->selectMode:Z

    .line 431
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->showMenu()V

    .line 432
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/VideoListFragment;->notifyShowSelectText()V

    return-void
.end method
