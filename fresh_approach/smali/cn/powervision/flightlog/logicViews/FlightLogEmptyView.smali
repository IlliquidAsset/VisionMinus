.class public Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;
.super Landroid/widget/RelativeLayout;
.source "FlightLogEmptyView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private countryBitmap:Landroid/graphics/Bitmap;

.field private mCountryCode:Ljava/lang/String;

.field private mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    invoke-direct {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private getUserCountryIcon()V
    .locals 3

    .line 85
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 86
    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->mCountryCode:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "country_icon/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".webp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/ImageUtil;->getImageBitMapFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->countryBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 11

    .line 51
    iput-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->context:Landroid/content/Context;

    .line 52
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_device_item_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget p1, Lcn/powervision/flightlog/R$id;->fly_log_list_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 55
    sget v0, Lcn/powervision/flightlog/R$id;->fly_mileage_content:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    sget v1, Lcn/powervision/flightlog/R$id;->fly_count_content:I

    invoke-virtual {p0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    sget v2, Lcn/powervision/flightlog/R$id;->fly_time_content:I

    invoke-virtual {p0, v2}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    sget v3, Lcn/powervision/flightlog/R$id;->fly_location_content:I

    invoke-virtual {p0, v3}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 60
    sget v4, Lcn/powervision/flightlog/R$id;->fly_meileage_content:I

    invoke-virtual {p0, v4}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 61
    sget v5, Lcn/powervision/flightlog/R$id;->fly_max_height_content:I

    invoke-virtual {p0, v5}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 62
    sget v6, Lcn/powervision/flightlog/R$id;->fly_max_speed_content:I

    invoke-virtual {p0, v6}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 63
    sget v7, Lcn/powervision/flightlog/R$id;->flightlog_user_icon:I

    invoke-virtual {p0, v7}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 64
    sget v8, Lcn/powervision/flightlog/R$id;->user_contory_icon:I

    invoke-virtual {p0, v8}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 65
    sget v9, Lcn/powervision/flightlog/R$id;->flightlog_user_name:I

    invoke-virtual {p0, v9}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 67
    invoke-direct {p0}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->getUserCountryIcon()V

    const-string v10, "0m"

    .line 68
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "00:00"

    .line 70
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "N/A"

    .line 71
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0m/s"

    .line 74
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$color;->item_light_gray_pressed_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    invoke-virtual {p0, v7}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->getUserHeadIcon(Landroid/widget/ImageView;)V

    .line 77
    iget-object p1, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->countryBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {v8, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    invoke-direct {p0, v9}, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->setUserName(Landroid/widget/TextView;)V

    return-void
.end method

.method private setUserName(Landroid/widget/TextView;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getUserHeadIcon(Landroid/widget/ImageView;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "local_avatar"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/powervision/flightlog/logicViews/FlightLogEmptyView;->mPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powervision/base/utils/ImageManager;->loadCircleImageWithBoard(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method
