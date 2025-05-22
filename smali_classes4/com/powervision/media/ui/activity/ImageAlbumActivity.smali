.class public Lcom/powervision/media/ui/activity/ImageAlbumActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "ImageAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;,
        Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;

.field private bottomPooWindow:Landroid/widget/PopupWindow;

.field private dbHelper:Lcom/powervision/base/utils/DbHelper;

.field private fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

.field private gridView:Landroid/widget/GridView;

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

.field private listener:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

.field private mScanner:Lcom/powervision/media/utils/ImageScanner;

.field private rtvNumber:Landroid/widget/TextView;

.field private section:I

.field private sectionIfs:Ljava/util/ArrayList;
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

.field private totalDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->section:I

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->totalDates:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionIfs:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->groupInfo:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionMap:Ljava/util/Map;

    .line 207
    new-instance v0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$2;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->listener:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionIfs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/activity/ImageAlbumActivity;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->showAndHidePopupWindow(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Lcom/powervision/media/widgets/FSTitlebar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)Landroid/widget/GridView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->gridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->initLocalData()V

    return-void
.end method

.method private initLocalData()V
    .locals 3

    .line 141
    new-instance v0, Lcom/powervision/media/utils/ImageScanner;

    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/media/utils/ImageScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->mScanner:Lcom/powervision/media/utils/ImageScanner;

    .line 142
    new-instance v0, Lcom/powervision/base/views/LoadingProgressBar;

    invoke-direct {v0, p0}, Lcom/powervision/base/views/LoadingProgressBar;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 144
    iget-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->mScanner:Lcom/powervision/media/utils/ImageScanner;

    new-instance v2, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$PocJhcsbXFK92PdZOFbOhNjJvig;

    invoke-direct {v2, p0, v0}, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$PocJhcsbXFK92PdZOFbOhNjJvig;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;Lcom/powervision/base/views/LoadingProgressBar;)V

    invoke-virtual {v1, v2}, Lcom/powervision/media/utils/ImageScanner;->scanImages(Lcom/powervision/media/utils/ImageScanner$ScanCompleteCallBack;)V

    return-void
.end method

.method private initPopupWindow()V
    .locals 5

    .line 270
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/media/R$layout;->media_bottom_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    sget v1, Lcom/powervision/media/R$id;->rtv_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->rtvNumber:Landroid/widget/TextView;

    .line 272
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->bottomPooWindow:Landroid/widget/PopupWindow;

    .line 274
    sget v0, Lcom/powervision/media/R$style;->PopupAnimationBottom:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 275
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->bottomPooWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static parserTimeToYM(J)Ljava/lang/String;
    .locals 3

    .line 328
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 329
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requestBasicPermission()V
    .locals 3

    .line 540
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 541
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$3;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V

    .line 542
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private showAndHidePopupWindow(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->bottomPooWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->rootView:Landroid/view/View;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->bottomPooWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->bottomPooWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 118
    sget v0, Lcom/powervision/media/R$layout;->media_album_layout:I

    return v0
.end method

.method protected initToolbar()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_52:I

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setTitleText(I)V

    .line 105
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$mipmap;->back_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    new-instance v1, Lcom/powervision/media/ui/activity/ImageAlbumActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$1;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/media/widgets/FSTitlebar;->setDelegate(Lcom/powervision/media/widgets/FSTitlebar$FSTitlebarDelegate;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    sget p1, Lcom/powervision/media/R$id;->fs_titlebar:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/FSTitlebar;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->fsTitlebar:Lcom/powervision/media/widgets/FSTitlebar;

    .line 124
    sget p1, Lcom/powervision/media/R$id;->grid_group:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->gridView:Landroid/widget/GridView;

    .line 125
    new-instance p1, Lcom/powervision/base/utils/ScreenUtils;

    invoke-direct {p1, p0}, Lcom/powervision/base/utils/ScreenUtils;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p1}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalHeight()I

    move-result v0

    .line 127
    invoke-virtual {p1}, Lcom/powervision/base/utils/ScreenUtils;->getScreenOriginalWidth()I

    move-result p1

    .line 128
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->length:I

    .line 129
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->requestBasicPermission()V

    .line 131
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->initToolbar()V

    .line 132
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->initPopupWindow()V

    .line 133
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    .line 134
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->setListener()V

    return-void
.end method

.method public synthetic lambda$initLocalData$1$ImageAlbumActivity(Lcom/powervision/base/views/LoadingProgressBar;Landroid/database/Cursor;)V
    .locals 13

    .line 145
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_id"

    .line 146
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "_data"

    .line 147
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_added"

    .line 148
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "_size"

    .line 149
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "width"

    .line 150
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "height"

    .line 151
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-eqz v12, :cond_0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_0

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {v1}, Lcom/powervision/base/utils/ImageUtil;->getImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DNG"

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "RAW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 166
    :cond_3
    new-instance v4, Lcom/powervision/base/model/MediaModel;

    invoke-direct {v4}, Lcom/powervision/base/model/MediaModel;-><init>()V

    .line 167
    invoke-virtual {v4, v0}, Lcom/powervision/base/model/MediaModel;->setId(I)V

    .line 168
    invoke-virtual {v4, v1}, Lcom/powervision/base/model/MediaModel;->setImagePath(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    mul-long v2, v2, v0

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 170
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->totalDates:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 171
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 176
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 177
    iget-object p2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->totalDates:Ljava/util/List;

    if-eqz p2, :cond_7

    .line 178
    new-instance v0, Lcom/powervision/media/utils/YMComparator;

    invoke-direct {v0}, Lcom/powervision/media/utils/YMComparator;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    iget-object p2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->totalDates:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/MediaModel;

    .line 180
    invoke-virtual {v0}, Lcom/powervision/base/model/MediaModel;->getCreateTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->parserTimeToYM(J)Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 182
    iget v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->section:I

    invoke-virtual {v0, v2}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    .line 183
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionMap:Ljava/util/Map;

    iget v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->section:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->section:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->section:I

    goto :goto_1

    .line 186
    :cond_5
    iget-object v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/MediaModel;->setSection(I)V

    goto :goto_1

    .line 189
    :cond_6
    iget-object p2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->mScanner:Lcom/powervision/media/utils/ImageScanner;

    invoke-virtual {p2}, Lcom/powervision/media/utils/ImageScanner;->removeCallBack()V

    .line 190
    new-instance p2, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$C-jxtPCGVwXgIjVfJCzJuG6xl5I;

    invoke-direct {p2, p0, p1}, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$C-jxtPCGVwXgIjVfJCzJuG6xl5I;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;Lcom/powervision/base/views/LoadingProgressBar;)V

    invoke-virtual {p0, p2}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public synthetic lambda$null$0$ImageAlbumActivity(Lcom/powervision/base/views/LoadingProgressBar;)V
    .locals 5

    .line 191
    new-instance v0, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;

    iget v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->length:I

    iget-object v2, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->totalDates:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionIfs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->listener:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;-><init>(ILjava/util/List;Ljava/util/ArrayList;Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->adapter:Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;

    .line 192
    iget-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    invoke-virtual {p1}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    return-void
.end method

.method public synthetic lambda$setListener$2$ImageAlbumActivity(Landroid/view/View;)V
    .locals 6

    .line 282
    iget-object p1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionIfs:Ljava/util/ArrayList;

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

    .line 283
    invoke-virtual {v2, v0}, Lcom/powervision/base/model/MediaModel;->setIsChecked(Z)V

    .line 284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/model/MediaModel;->setModifyTime(Ljava/lang/Long;)V

    .line 285
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getModifyTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/base/model/MediaModel;->setCreateTime(Ljava/lang/Long;)V

    .line 286
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    const-class v4, Lcom/powervision/base/model/MediaModel;

    .line 287
    invoke-virtual {v2}, Lcom/powervision/base/model/MediaModel;->getImagePath()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v3, v4, v5}, Lcom/powervision/base/utils/DbHelper;->searchImageByPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/base/model/MediaModel;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->dbHelper:Lcom/powervision/base/utils/DbHelper;

    invoke-virtual {v3, v2}, Lcom/powervision/base/utils/DbHelper;->save(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/powervision/media/R$string;->AP03_MediaLib_53:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 296
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 299
    :cond_2
    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->showAndHidePopupWindow(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 334
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 335
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionIfs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionIfs:Ljava/util/ArrayList;

    .line 337
    iget-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->groupInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 338
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->groupInfo:Ljava/util/List;

    .line 339
    iget-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 340
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->sectionMap:Ljava/util/Map;

    .line 341
    iget-object v1, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->totalDates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 342
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->totalDates:Ljava/util/List;

    .line 343
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->listener:Lcom/powervision/media/ui/activity/ImageAlbumActivity$ImgShowListener;

    .line 344
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->adapter:Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;

    .line 345
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->gridView:Landroid/widget/GridView;

    .line 346
    iput-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->mScanner:Lcom/powervision/media/utils/ImageScanner;

    .line 347
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->adapter:Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/powervision/media/ui/activity/ImageAlbumActivity$GridVideoGroupAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/powervision/media/ui/activity/ImageAlbumActivity;->rtvNumber:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$fd7aT6PvAbfrJ07wdT_YZZTPWwA;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$ImageAlbumActivity$fd7aT6PvAbfrJ07wdT_YZZTPWwA;-><init>(Lcom/powervision/media/ui/activity/ImageAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
