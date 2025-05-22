.class public Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FlightLogPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$IShowLogListListener;
    }
.end annotation


# static fields
.field private static final Tag:Ljava/lang/String; = "FlightLogAdapter"


# instance fields
.field private countryBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private pagerListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 43
    iput-object p2, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->pagerListDatas:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->getUserCountryIcon()V

    return-void
.end method

.method static synthetic access$000(Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->showLogList(I)V

    return-void
.end method

.method private getUserCountryIcon()V
    .locals 3

    .line 156
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 157
    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mCountryCode:Ljava/lang/String;

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "country_icon/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".webp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/ImageUtil;->getImageBitMapFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->countryBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private getUserHeadIcon(Landroid/widget/ImageView;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "local_avatar"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method private setItemDatas(ILandroid/widget/LinearLayout;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 73
    iget-object v2, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->pagerListDatas:Ljava/util/List;

    if-eqz v2, :cond_1

    move/from16 v3, p1

    .line 74
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;

    .line 75
    sget v4, Lcn/powervision/flightlog/R$id;->fly_log_list_bt:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 77
    sget v5, Lcn/powervision/flightlog/R$id;->fly_mileage_content:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 78
    sget v6, Lcn/powervision/flightlog/R$id;->fly_count_content:I

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 79
    sget v7, Lcn/powervision/flightlog/R$id;->fly_time_content:I

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 81
    sget v8, Lcn/powervision/flightlog/R$id;->fly_location_content:I

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 82
    sget v9, Lcn/powervision/flightlog/R$id;->fly_meileage_content:I

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 83
    sget v10, Lcn/powervision/flightlog/R$id;->fly_max_height_content:I

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 84
    sget v11, Lcn/powervision/flightlog/R$id;->fly_max_speed_content:I

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 85
    sget v12, Lcn/powervision/flightlog/R$id;->flightlog_user_icon:I

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 86
    sget v13, Lcn/powervision/flightlog/R$id;->user_contory_icon:I

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 87
    sget v14, Lcn/powervision/flightlog/R$id;->flightlog_user_name:I

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    iget-object v14, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    move-object v15, v4

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getMaxMileage()D

    move-result-wide v3

    invoke-static {v14, v3, v4}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4MFormat(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getMaxFlyCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getMaxTime()D

    move-result-wide v3

    .line 93
    iget-object v5, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 p2, v15

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getMaxTime()D

    move-result-wide v14

    invoke-static {v5, v14, v15}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4Time(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  maxTime="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "    string4Time="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fly_time"

    invoke-static {v4, v3}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v3, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getMaxTime()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4Time(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getSingleMaxMileage()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4MFormat(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getMaxStartFlyHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v3, v4, v5}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4MFormat(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/powervision/base/model/flightlog/FligtLogPagerItemData;->getMaxFlySpeed()F

    move-result v2

    float-to-double v4, v2

    invoke-static {v3, v4, v5}, Lcom/powervision/base/model/flightlog/CsvUtils;->getString4MS(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {v0, v12}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->getUserHeadIcon(Landroid/widget/ImageView;)V

    .line 105
    iget-object v2, v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->countryBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :cond_0
    invoke-direct {v0, v1}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->setUserName(Landroid/widget/TextView;)V

    .line 111
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 112
    new-instance v1, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$1;

    invoke-direct {v1, v0}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$1;-><init>(Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setUserName(Landroid/widget/TextView;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showLogList(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    check-cast v0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$IShowLogListListener;

    .line 132
    invoke-interface {v0, p1}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$IShowLogListListener;->onShowListClick(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p3, Landroid/widget/LinearLayout;

    .line 139
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->pagerListDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$layout;->flightlog_device_item_layout:I

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    invoke-direct {p0, p2, v0}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->setItemDatas(ILandroid/widget/LinearLayout;)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
