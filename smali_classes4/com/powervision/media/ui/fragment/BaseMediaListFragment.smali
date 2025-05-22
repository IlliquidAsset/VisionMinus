.class public abstract Lcom/powervision/media/ui/fragment/BaseMediaListFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "BaseMediaListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;
    }
.end annotation


# static fields
.field private static section:I = 0x1


# instance fields
.field private adapter:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

.field public dbHelper:Lcom/powervision/base/utils/DbHelper;

.field private length:I

.field listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

.field private mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

.field private p:Landroid/widget/ProgressBar;

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

.field private totalDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    .line 184
    new-instance v0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment$1;-><init>(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;)Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    return-object p0
.end method

.method private initLocalData()V
    .locals 3

    .line 236
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 238
    new-instance v1, Lcom/powervision/media/utils/VideoScanner;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/powervision/media/utils/VideoScanner;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v2, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$2CwNzp1F78rX17PgOAWw_7QLITQ;

    invoke-direct {v2, p0, v0}, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$2CwNzp1F78rX17PgOAWw_7QLITQ;-><init>(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;Lcom/powervision/base/views/LoadingProgressBar;)V

    invoke-virtual {v1, v2}, Lcom/powervision/media/utils/VideoScanner;->scanVideos(Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;)V

    return-void
.end method

.method private loadingData()V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    new-instance v1, Lcom/powervision/media/utils/CTCmparator;

    invoke-direct {v1}, Lcom/powervision/media/utils/CTCmparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 134
    :goto_0
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->isLoadingImage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 137
    :goto_1
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 138
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v6, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v4}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 145
    :goto_2
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 146
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v6}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v6, v3}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 157
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 158
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 160
    invoke-virtual {v1, v3}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 164
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 168
    :cond_6
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->notifyTheAdapter()V

    return-void
.end method

.method private resumeData()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->getListData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    .line 86
    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->loadingData()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 54
    sget v0, Lcom/powervision/media/R$layout;->media_base_list:I

    return v0
.end method

.method protected abstract getListData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end method

.method protected initData()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 69
    new-instance v0, Lcom/powervision/base/utils/ScreenUtils;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalHeight()I

    move-result v1

    .line 71
    invoke-virtual {v0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result v0

    .line 72
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->length:I

    .line 73
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$color;->light_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    sget p1, Lcom/powervision/media/R$id;->grid_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    .line 60
    sget p1, Lcom/powervision/media/R$id;->milst_pb:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->p:Landroid/widget/ProgressBar;

    .line 61
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->isLoadingLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->initLocalData()V

    :cond_0
    return-void
.end method

.method protected abstract isLoadingImage()Z
.end method

.method protected abstract isLoadingLocal()Z
.end method

.method public synthetic lambda$initLocalData$1$BaseMediaListFragment(Lcom/powervision/base/views/LoadingProgressBar;Landroid/database/Cursor;)V
    .locals 11

    .line 240
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "_id"

    .line 241
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "_data"

    .line 242
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date_added"

    .line 243
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 244
    new-instance v5, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v5}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 245
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v6, -0x1

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v5, v0}, Lcom/powervision/base/model/MediaModel;->setId(I)V

    .line 256
    invoke-virtual {v5, v2}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    mul-long v3, v3, v8

    .line 257
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 259
    invoke-virtual {v5, v6, v7}, Lcom/powervision/base/model/MediaModel;->setDuration(J)V

    .line 260
    invoke-virtual {v5, v1}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 261
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 262
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 268
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 269
    new-instance v0, Lcom/powervision/media/utils/YMComparator;

    invoke-direct {v0}, Lcom/powervision/media/utils/YMComparator;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    iget-object p2, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 271
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/powervision/base/utils/StringUtils;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 273
    sget v3, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->section:I

    invoke-virtual {v0, v3}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    .line 274
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionMap:Ljava/util/Map;

    sget v3, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->section:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget v0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->section:I

    add-int/2addr v0, v1

    sput v0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->section:I

    goto :goto_2

    .line 277
    :cond_2
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    goto :goto_2

    .line 280
    :cond_3
    new-instance p2, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$pmJ5FzzN6H24FuzvEJgm2G_wuLg;

    invoke-direct {p2, p0, p1}, Lcom/powervision/media/ui/fragment/-$$Lambda$BaseMediaListFragment$pmJ5FzzN6H24FuzvEJgm2G_wuLg;-><init>(Lcom/powervision/media/ui/fragment/BaseMediaListFragment;Lcom/powervision/base/views/LoadingProgressBar;)V

    invoke-static {p2}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$null$0$BaseMediaListFragment(Lcom/powervision/base/views/LoadingProgressBar;)V
    .locals 8

    .line 281
    new-instance v7, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->length:I

    iget-object v4, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    iget-object v5, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;-><init>(Landroid/content/Context;ZILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;)V

    iput-object v7, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->adapter:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    .line 282
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v0, v7}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    return-void
.end method

.method public notifyTheAdapter()V
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->adapter:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->isLoadingImage()Z

    move-result v3

    iget v4, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->length:I

    iget-object v5, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    iget-object v6, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->listener:Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;-><init>(Landroid/content/Context;ZILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->adapter:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    .line 175
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    invoke-virtual {v1, v0}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->setSeclist(Ljava/util/ArrayList;)V

    .line 178
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->adapter:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->setList(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->adapter:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->initGroup()V

    .line 180
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->adapter:Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/BaseMediaListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->mGridview:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iput-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionInfos:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iput-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->sectionMap:Ljava/util/Map;

    .line 99
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iput-object v1, p0, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->totalDatas:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->isLoadingLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/powervision/media/ui/fragment/BaseMediaListFragment;->resumeData()V

    :cond_0
    return-void
.end method

.method public abstract setSectionInfos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showEmptyView(Z)V
.end method

.method public abstract showImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V
.end method
