.class public Lcom/powervision/media/ui/activity/VideoAlbumActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "VideoAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;,
        Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;
    }
.end annotation


# static fields
.field private static section:I = 0x1


# instance fields
.field adapter:Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;

.field private bottomPopWindow:Landroid/widget/PopupWindow;

.field private dbHelper:Lcom/powervision/base/utils/DbHelper;

.field fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

.field gridView:Landroid/widget/GridView;

.field private groupInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private length:I

.field private listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

.field private mScanner:Lcom/powervision/media/utils/VideoScanner;

.field private rtvNumber:Landroid/widget/TextView;

.field private sectionInfoList:Ljava/util/ArrayList;
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

.field private totalDataList:Ljava/util/List;
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

    .line 62
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->totalDataList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionInfoList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->groupInfo:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionMap:Ljava/util/Map;

    .line 196
    new-instance v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$2;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/VideoAlbumActivity;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->showAndHidePopupWindow(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->initLocalData()V

    return-void
.end method

.method private initLocalData()V
    .locals 3

    .line 136
    new-instance v0, Lcom/powervision/media/utils/VideoScanner;

    invoke-direct {v0, p0}, Lcom/powervision/media/utils/VideoScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->mScanner:Lcom/powervision/media/utils/VideoScanner;

    .line 137
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 139
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->mScanner:Lcom/powervision/media/utils/VideoScanner;

    new-instance v2, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$ao3HQjX5zHVWrvVL1G67Ml5zt04;

    invoke-direct {v2, p0, v0}, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$ao3HQjX5zHVWrvVL1G67Ml5zt04;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;Lcom/powervision/base/views/LoadingProgressBar;)V

    invoke-virtual {v1, v2}, Lcom/powervision/media/utils/VideoScanner;->scanVideos(Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;)V

    return-void
.end method

.method private initPopupWindow()V
    .locals 5

    .line 291
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_bottom_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 292
    sget v1, Lcom/powervision/media/R$id;->rtv_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->rtvNumber:Landroid/widget/TextView;

    .line 293
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->bottomPopWindow:Landroid/widget/PopupWindow;

    .line 295
    sget v0, Lcom/powervision/media/R$style;->PopupAnimationBottom:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 296
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->bottomPopWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static parserTimeToYM(J)Ljava/lang/String;
    .locals 3

    .line 339
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 340
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requestBasicPermission()V
    .locals 3

    .line 563
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 564
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$3;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V

    .line 565
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private showAndHidePopupWindow(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->bottomPopWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->rootView:Landroid/view/View;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->bottomPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->bottomPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 115
    sget v0, Lcom/powervision/media/R$layout;->media_video_album_layout:I

    return v0
.end method

.method protected initToolbar()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_54:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(I)V

    .line 102
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$mipmap;->back_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    new-instance v1, Lcom/powervision/media/ui/activity/VideoAlbumActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$1;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setDelegate(Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    sget p1, Lcom/powervision/media/R$id;->fs_titlebar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/FSTitlebar;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    .line 121
    sget p1, Lcom/powervision/media/R$id;->grid_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->gridView:Landroid/widget/GridView;

    .line 123
    new-instance p1, Lcom/powervision/base/utils/ScreenUtils;

    invoke-direct {p1, p0}, Lcom/powervision/base/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p1}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalHeight()I

    move-result v0

    .line 125
    invoke-virtual {p1}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result p1

    .line 126
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 127
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->length:I

    .line 128
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->requestBasicPermission()V

    .line 130
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->initToolbar()V

    .line 131
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->initPopupWindow()V

    .line 132
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->setListener()V

    return-void
.end method

.method public synthetic lambda$initLocalData$1$VideoAlbumActivity(Lcom/powervision/base/views/LoadingProgressBar;Landroid/database/Cursor;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 141
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "_id"

    .line 142
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v4, "_data"

    .line 143
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_added"

    .line 144
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v7, "_size"

    .line 145
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "width"

    .line 146
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "height"

    .line 147
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 148
    invoke-static {}, Lcom/powervision/base/utils/MediaInfoUtil;->getInstance()Lcom/powervision/base/utils/MediaInfoUtil;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/powervision/base/utils/MediaInfoUtil;->getVideoLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 149
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "duration = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v13, -0x1

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-ltz v17, :cond_0

    cmp-long v17, v7, v15

    if-eqz v17, :cond_0

    cmp-long v7, v9, v15

    if-eqz v7, :cond_0

    cmp-long v7, v11, v15

    if-nez v7, :cond_1

    goto/16 :goto_0

    .line 160
    :cond_1
    new-instance v7, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v7}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 161
    invoke-virtual {v7, v2}, Lcom/powervision/base/model/MediaModel;->setId(I)V

    .line 162
    invoke-virtual {v7, v4}, Lcom/powervision/base/model/MediaModel;->setVideoPath(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    mul-long v5, v5, v8

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 164
    invoke-virtual {v7}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 165
    invoke-virtual {v7, v13, v14}, Lcom/powervision/base/model/MediaModel;->setDuration(J)V

    .line 166
    invoke-virtual {v7, v3}, Lcom/powervision/base/model/MediaModel;->setTag(I)V

    .line 167
    iget-object v2, v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->totalDataList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 168
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 174
    iget-object v1, v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->totalDataList:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 175
    new-instance v2, Lcom/powervision/media/utils/YMComparator;

    invoke-direct {v2}, Lcom/powervision/media/utils/YMComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    iget-object v1, v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->totalDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 177
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v4

    .line 178
    iget-object v5, v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 179
    sget v5, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->section:I

    invoke-virtual {v2, v5}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    .line 180
    iget-object v2, v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionMap:Ljava/util/Map;

    sget v5, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->section:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget v2, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->section:I

    add-int/2addr v2, v3

    sput v2, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->section:I

    goto :goto_2

    .line 183
    :cond_3
    iget-object v5, v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    goto :goto_2

    .line 187
    :cond_4
    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$YBhO0VzWdYnaEXchJeVlqubFmAs;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$YBhO0VzWdYnaEXchJeVlqubFmAs;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;Lcom/powervision/base/views/LoadingProgressBar;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public synthetic lambda$null$0$VideoAlbumActivity(Lcom/powervision/base/views/LoadingProgressBar;)V
    .locals 5

    .line 188
    new-instance v0, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;

    iget v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->length:I

    iget-object v2, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->totalDataList:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionInfoList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->listener:Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;-><init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/activity/VideoAlbumActivity$VideoShowListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->adapter:Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;

    .line 189
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    return-void
.end method

.method public synthetic lambda$setListener$2$VideoAlbumActivity(Landroid/view/View;)V
    .locals 6

    .line 303
    iget-object p1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/MediaModel;

    .line 304
    invoke-virtual {v2, v0}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 306
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v4, Lcom/powervision/base/model/MediaModel;

    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/powervision/base/utils/DbHelper;->searchVideoByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    invoke-virtual {v3, v2}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/powervision/media/R$string;->AP03_MediaLib_53:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 315
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 318
    :cond_2
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->showAndHidePopupWindow(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 346
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionInfoList:Ljava/util/ArrayList;

    .line 348
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->groupInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 349
    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->groupInfo:Ljava/util/List;

    .line 350
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 351
    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->sectionMap:Ljava/util/Map;

    .line 352
    iget-object v1, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->totalDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 353
    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->totalDataList:Ljava/util/List;

    .line 354
    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->gridView:Landroid/widget/GridView;

    .line 355
    iput-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->mScanner:Lcom/powervision/media/utils/VideoScanner;

    .line 356
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->adapter:Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/VideoAlbumActivity$GridVideoGroupAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/powervision/media/ui/activity/VideoAlbumActivity;->rtvNumber:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$58h-EyxYAqIC1FE8LqujmLy4-AY;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$VideoAlbumActivity$58h-EyxYAqIC1FE8LqujmLy4-AY;-><init>(Lcom/powervision/media/ui/activity/VideoAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
