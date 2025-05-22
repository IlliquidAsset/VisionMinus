.class public Lcom/powervision/media/ui/fragment/PictureListFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "PictureListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;,
        Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureListFragment"

.field public static selectMode:Z = false


# instance fields
.field adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

.field private bottomPopouWindow:Landroid/widget/PopupWindow;

.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/powervision/base/utils/DbHelper;

.field private length:I

.field private listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

.field loadingLayout:Landroid/view/View;

.field mEmptyView:Landroid/widget/LinearLayout;

.field mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

.field p:Landroid/widget/ProgressBar;

.field private parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

.field path:Ljava/lang/String;

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

.field private sectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    .line 74
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    .line 171
    new-instance v0, Lcom/powervision/media/ui/fragment/PictureListFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/fragment/PictureListFragment$1;-><init>(Lcom/powervision/media/ui/fragment/PictureListFragment;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/fragment/PictureListFragment;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->deleteSelect()V

    return-void
.end method

.method private contentView(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setVisibility(I)V

    .line 552
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {p1, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setVisibility(I)V

    .line 555
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private deleteSelect()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    invoke-virtual {p0, v0, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->dbDelete(Ljava/util/List;Lcom/powervision/base/utils/DbHelper;)V

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 529
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

    .line 530
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 535
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 536
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->contentView(Z)V

    .line 537
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->notifyDataSetChanged()V

    .line 538
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->popUpNotify()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 541
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->contentView(Z)V

    .line 542
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->popUpNotify()V

    .line 544
    :goto_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    if-eqz v0, :cond_3

    .line 545
    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->clearGroup()V

    :cond_3
    return-void
.end method

.method private getImagePath(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
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

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImagePath: 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PictureListFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImagePath: 2 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImagePath: 3 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/powervision/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hideMenu()V
    .locals 2

    const-string v0, "PictureListFragment"

    const-string v1, "hideMenu "

    .line 590
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 593
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 594
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaFragment;->setScrollable(Z)V

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->popisShowing:Z

    .line 596
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 597
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    iput-boolean v0, v1, Lcom/powervision/base/base/BaseApplication;->isPopShow:Z

    :cond_0
    return-void
.end method

.method private initPopupWindow()V
    .locals 7

    .line 311
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_gcs_media_top_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 313
    sget v1, Lcom/powervision/media/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 314
    sget v3, Lcom/powervision/media/R$id;->tv_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->tvNum:Landroid/widget/TextView;

    .line 315
    sget v3, Lcom/powervision/media/R$id;->icon_download:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 316
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    .line 320
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/powervision/media/R$style;->PopupAnimationTop:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 324
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_album_bottom_select:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 325
    sget v1, Lcom/powervision/media/R$id;->image_hd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 326
    sget v2, Lcom/powervision/media/R$id;->image_delete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 327
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v6, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    .line 329
    sget v0, Lcom/powervision/media/R$style;->PopupAnimationBottom:I

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 330
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initdata()V
    .locals 3

    const/4 v0, 0x0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/DbHelper;->search(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getImagePath(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    .line 292
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 293
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->contentView(Z)V

    .line 294
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->loadingImage()V

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->contentView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->contentView(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    .line 142
    invoke-static {}, Lcom/powervision/base/utils/MediaManagerHelper;->testSave()V

    return-void
.end method

.method private loadingImage()V
    .locals 7

    .line 637
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    new-instance v1, Lcom/powervision/media/utils/CTCmparator;

    invoke-direct {v1}, Lcom/powervision/media/utils/CTCmparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 640
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 641
    :goto_0
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 642
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 643
    :goto_1
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 644
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 645
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

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

    .line 653
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 654
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 655
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/TimeUtils;->paserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 657
    invoke-virtual {v1, v3}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    .line 658
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 661
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

    .line 665
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->popUpNotify()V

    .line 666
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->notifyTheAdapter()V

    return-void
.end method

.method public static newInstance()Lcom/powervision/media/ui/fragment/PictureListFragment;
    .locals 1

    .line 121
    new-instance v0, Lcom/powervision/media/ui/fragment/PictureListFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;-><init>()V

    return-object v0
.end method

.method private notifyShowSelectText()V
    .locals 7

    .line 415
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 417
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 418
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 419
    instance-of v5, v4, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    if-eqz v5, :cond_0

    .line 420
    check-cast v4, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 422
    iget-object v3, v4, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    goto :goto_1

    .line 427
    :cond_0
    instance-of v3, v3, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v3, v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 430
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childCount1 + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PictureListFragment"

    invoke-static {v5, v4}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    .line 433
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 434
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 435
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

.method private openEditPhoto()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-le v0, v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v3}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 494
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_3

    const-string v3, "image_path"

    .line 496
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 500
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 502
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_189:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    goto :goto_1

    .line 504
    :cond_2
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/edit/imageEditActivity"

    .line 505
    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private shareImage()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->path:Ljava/lang/String;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PictureListFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->sharePath(Ljava/lang/String;)V

    return-void
.end method

.method private sharePath(Ljava/lang/String;)V
    .locals 2

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/share/shareActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "image_path"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private showAndHideMenu(Z)V
    .locals 2

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAndHideMenu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureListFragment"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->showMenu()V

    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->hideMenu()V

    :goto_0
    return-void
.end method

.method private showMenu()V
    .locals 4

    .line 575
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaFragment;->setScrollable(Z)V

    .line 578
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->topPopouWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mContentView:Landroid/view/View;

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 580
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->bottomPopouWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mContentView:Landroid/view/View;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->popisShowing:Z

    .line 582
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

    .line 443
    sput-boolean v0, Lcom/powervision/media/ui/fragment/PictureListFragment;->selectMode:Z

    .line 444
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2, v0}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->showAndHideMenu(Z)V

    .line 449
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->popUpNotify()V

    .line 450
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->notifyInvadeCancel()V

    .line 451
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->clearGroup()V

    :cond_1
    return-void
.end method

.method public captureAnimation(Landroid/util/SparseArray;)V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0x3e8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 617
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->cancelEvent()V

    :cond_0
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

    .line 992
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 993
    const-class v1, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/powervision/base/utils/DbHelper;->searchImageByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 995
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 996
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getMainPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    invoke-static {v1}, Lcom/powervision/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    const-string v2, "NewVisionPlus"

    .line 999
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1000
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/powervision/base/utils/FileUtils;->deleteImage(Landroid/content/Context;Ljava/lang/String;)I

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbDelete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   result = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PictureListFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_1
    invoke-virtual {p2, v0}, Lcom/powervision/base/utils/DbHelper;->delete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 126
    sget v0, Lcom/powervision/media/R$layout;->media_picture_list_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 148
    new-instance v0, Lcom/powervision/base/utils/ScreenUtils;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalHeight()I

    move-result v1

    .line 150
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result v0

    .line 151
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->length:I

    .line 152
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->context:Landroid/content/Context;

    .line 153
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/ui/fragment/MediaFragment;

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->parentFragment:Lcom/powervision/media/ui/fragment/MediaFragment;

    .line 154
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$color;->light_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->initPopupWindow()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 137
    sget p1, Lcom/powervision/media/R$id;->llt_empty:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mEmptyView:Landroid/widget/LinearLayout;

    .line 138
    sget p1, Lcom/powervision/media/R$id;->grid_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    .line 139
    sget p1, Lcom/powervision/media/R$id;->cp:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->loadingLayout:Landroid/view/View;

    .line 140
    sget p1, Lcom/powervision/media/R$id;->milst_pb:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->p:Landroid/widget/ProgressBar;

    .line 142
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mEmptyView:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/powervision/media/ui/fragment/-$$Lambda$PictureListFragment$NfgutnIkJIkikLne_rvLx7u_H3E;->INSTANCE:Lcom/powervision/media/ui/fragment/-$$Lambda$PictureListFragment$NfgutnIkJIkikLne_rvLx7u_H3E;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyInvadeCancel()V
    .locals 7

    .line 457
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 459
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 461
    instance-of v4, v3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    .line 462
    check-cast v3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;

    .line 463
    iget-object v2, v3, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter$ViewHolder;->mImageSelect:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->invalidate()V

    goto :goto_1

    .line 468
    :cond_0
    instance-of v2, v2, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsBaseAdapterWrapper$GroupedFillerView;

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v2, v1}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 471
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childCount1 + "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PictureListFragment"

    invoke-static {v4, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    .line 474
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 475
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    sget v6, Lcom/powervision/media/R$string;->App_MediaLib_22:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 476
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

    .line 670
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    iget v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->length:I

    iget-object v2, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->listener:Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;-><init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    .line 672
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->setSeclist(Ljava/util/ArrayList;)V

    .line 675
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->setList(Ljava/util/List;)V

    .line 676
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->access$100(Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;)V

    .line 677
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 515
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 518
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->adapter:Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/powervision/media/ui/fragment/PictureListFragment$GridVideoGroupAdapter;->clearGroup()V

    :cond_0
    const-string p1, "selects"

    .line 521
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 342
    sget v0, Lcom/powervision/media/R$id;->tv_cancel:I

    if-ne p1, v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->cancelEvent()V

    goto :goto_0

    .line 344
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->text_edit:I

    if-ne p1, v0, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->openEditPhoto()V

    goto :goto_0

    .line 346
    :cond_1
    sget v0, Lcom/powervision/media/R$id;->text_share:I

    if-ne p1, v0, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/powervision/base/utils/UmengUtils;->getHookMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ap03_photo_share"

    invoke-static {p1, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 348
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->shareImage()V

    goto :goto_0

    .line 349
    :cond_2
    sget v0, Lcom/powervision/media/R$id;->image_delete:I

    if-ne p1, v0, :cond_4

    .line 350
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 353
    :cond_3
    new-instance p1, Lcom/powervision/media/widgets/MediaDialog;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;-><init>(Landroid/content/Context;)V

    .line 354
    sget v0, Lcom/powervision/media/R$string;->App_MediaLib_176:I

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;->setContent(I)V

    .line 355
    new-instance v0, Lcom/powervision/media/ui/fragment/PictureListFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/media/ui/fragment/PictureListFragment$2;-><init>(Lcom/powervision/media/ui/fragment/PictureListFragment;Lcom/powervision/media/widgets/MediaDialog;)V

    invoke-virtual {p1, v0}, Lcom/powervision/media/widgets/MediaDialog;->setDialogClickListener(Lcom/powervision/media/widgets/MediaDialog$DialogClickListener;)V

    .line 367
    invoke-virtual {p1}, Lcom/powervision/media/widgets/MediaDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 603
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 604
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 605
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

    .line 607
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 608
    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionMap:Ljava/util/Map;

    .line 609
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 610
    iput-object v1, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    .line 611
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 612
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 374
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 375
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->initdata()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 380
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onStop()V

    return-void
.end method

.method public popUpNotify()V
    .locals 6

    const-string v0, "PictureListFragment"

    const-string v1, "popUpNotify"

    .line 256
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->sectionInfos:Ljava/util/ArrayList;

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

    .line 259
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    invoke-virtual {v1, v2}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

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

    .line 264
    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    .line 270
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->tvNum:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$string;->App_MediaLib_17:I

    invoke-virtual {p0, v3}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 272
    invoke-direct {p0, v1}, Lcom/powervision/media/ui/fragment/PictureListFragment;->contentView(Z)V

    goto :goto_2

    .line 274
    :cond_4
    invoke-direct {p0, v2}, Lcom/powervision/media/ui/fragment/PictureListFragment;->contentView(Z)V

    goto :goto_2

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/PictureListFragment;->tvNum:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v5, Lcom/powervision/media/R$string;->App_MediaLib_18:I

    invoke-virtual {p0, v5}, Lcom/powervision/media/ui/fragment/PictureListFragment;->getString(I)Ljava/lang/String;

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

.method public showPop()V
    .locals 1
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe1
    .end annotation

    const-string v0, "showpop"

    .line 405
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 406
    sput-boolean v0, Lcom/powervision/media/ui/fragment/PictureListFragment;->selectMode:Z

    .line 407
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->showMenu()V

    .line 408
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/PictureListFragment;->notifyShowSelectText()V

    return-void
.end method
