.class public Lcn/powervision/flightlog/activity/FlightlogShareActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "FlightlogShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Tag:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private flightlogFileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/flightlog/FlightLogData;",
            ">;"
        }
    .end annotation
.end field

.field private mBackBt:Landroid/widget/ImageView;

.field private mDynamicOrbitLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mFlightLogData:Lcom/powervision/base/model/flightlog/FlightLogData;

.field private mFlightLogExport:Landroid/widget/TextView;

.field private mFlightLogShareContentView:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

.field private mShareLayout:Landroid/widget/RelativeLayout;

.field private mShareQQFriends:Landroid/widget/TextView;

.field private mShareQQZone:Landroid/widget/TextView;

.field private mShareSaveLocal:Landroid/widget/TextView;

.field private mShareSina:Landroid/widget/TextView;

.field private mShareWechat:Landroid/widget/TextView;

.field private mShareWechatParents:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-string v0, "FlightlogShareActivity"

    .line 33
    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->Tag:Ljava/lang/String;

    return-void
.end method

.method private getIntentData()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->finish()V

    .line 81
    :cond_0
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->finish()V

    :cond_1
    return-void
.end method

.method private initShareContentViews()V
    .locals 4

    .line 88
    sget v0, Lcn/powervision/flightlog/R$id;->share_content_layout:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogShareContentView:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    .line 89
    sget v1, Lcn/powervision/flightlog/R$id;->share_bitmap_view:I

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareLayout:Landroid/widget/RelativeLayout;

    .line 90
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initShareIcon()V
    .locals 1

    .line 66
    sget v0, Lcn/powervision/flightlog/R$id;->share_wechat:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareWechat:Landroid/widget/TextView;

    .line 67
    sget v0, Lcn/powervision/flightlog/R$id;->share_wechat_friends:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareWechatParents:Landroid/widget/TextView;

    .line 68
    sget v0, Lcn/powervision/flightlog/R$id;->share_qq_friends:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareQQFriends:Landroid/widget/TextView;

    .line 69
    sget v0, Lcn/powervision/flightlog/R$id;->share_qq_zone:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareQQZone:Landroid/widget/TextView;

    .line 70
    sget v0, Lcn/powervision/flightlog/R$id;->share_sina:I

    invoke-virtual {p0, v0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareSina:Landroid/widget/TextView;

    return-void
.end method

.method private setResultData()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 166
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->finish()V

    return-void
.end method

.method private toSharePic(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogShareContentView:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->saveImageToSdCared(Z)V

    .line 143
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogShareContentView:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    iget-object v0, v0, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->fullPath:Ljava/lang/String;

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 42
    sget v0, Lcn/powervision/flightlog/R$layout;->flightlog_activity_share_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getCurrentFlightlogFileData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->flightlogFileData:Ljava/util/List;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/flightlog/FlightLogData;

    iput-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogData:Lcom/powervision/base/model/flightlog/FlightLogData;

    .line 98
    iget-object v1, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogShareContentView:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    iget-object v2, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->flightlogFileData:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->putFlightlogData(Lcom/powervision/base/model/flightlog/FlightLogData;Ljava/util/List;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->getIntentData()V

    .line 54
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->initShareContentViews()V

    .line 56
    sget p1, Lcn/powervision/flightlog/R$id;->export_flight_log:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogExport:Landroid/widget/TextView;

    .line 57
    sget p1, Lcn/powervision/flightlog/R$id;->dynamic_orbit_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mDynamicOrbitLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    sget p1, Lcn/powervision/flightlog/R$id;->back_bt:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mBackBt:Landroid/widget/ImageView;

    .line 61
    sget p1, Lcn/powervision/flightlog/R$id;->share_save_to_local:I

    invoke-virtual {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareSaveLocal:Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->initShareIcon()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 120
    sget v0, Lcn/powervision/flightlog/R$id;->export_flight_log:I

    if-ne p1, v0, :cond_0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$string;->App_MediaLib_212:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/NewVisionPlus/FlightLog/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    sget v0, Lcn/powervision/flightlog/R$id;->dynamic_orbit_bt:I

    if-ne p1, v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->setResultData()V

    goto :goto_0

    .line 124
    :cond_1
    sget v0, Lcn/powervision/flightlog/R$id;->share_save_to_local:I

    if-ne p1, v0, :cond_2

    .line 125
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogShareContentView:Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/powervision/flightlog/logicViews/FlightLogShareContentView;->saveImageToSdCared(Z)V

    goto :goto_0

    .line 126
    :cond_2
    sget v0, Lcn/powervision/flightlog/R$id;->share_wechat:I

    if-ne p1, v0, :cond_3

    .line 127
    invoke-static {}, Lcom/lewis/share/util/ShareUtil;->getWeChatName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->toSharePic(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    sget v0, Lcn/powervision/flightlog/R$id;->share_wechat_friends:I

    if-ne p1, v0, :cond_4

    .line 129
    invoke-static {}, Lcom/lewis/share/util/ShareUtil;->getWechatMomentsName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->toSharePic(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    sget v0, Lcn/powervision/flightlog/R$id;->share_qq_friends:I

    if-ne p1, v0, :cond_5

    .line 131
    invoke-static {}, Lcom/lewis/share/util/ShareUtil;->getQQName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->toSharePic(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_5
    sget v0, Lcn/powervision/flightlog/R$id;->share_qq_zone:I

    if-ne p1, v0, :cond_6

    .line 133
    invoke-static {}, Lcom/lewis/share/util/ShareUtil;->getQZoneName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->toSharePic(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_6
    sget v0, Lcn/powervision/flightlog/R$id;->share_sina:I

    if-ne p1, v0, :cond_7

    .line 135
    invoke-static {}, Lcom/lewis/share/util/ShareUtil;->getSinaWeiboName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->toSharePic(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_7
    sget v0, Lcn/powervision/flightlog/R$id;->back_bt:I

    if-ne p1, v0, :cond_8

    .line 137
    invoke-virtual {p0}, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->finish()V

    :cond_8
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 171
    invoke-static {}, Lcom/powervision/base/model/flightlog/FlightLogManager;->getInstance()Lcom/powervision/base/model/flightlog/FlightLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/flightlog/FlightLogManager;->recycleBitmap()V

    .line 172
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 104
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mFlightLogExport:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mDynamicOrbitLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareSaveLocal:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareWechat:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareWechatParents:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareQQFriends:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareQQZone:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mShareSina:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightlogShareActivity;->mBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
