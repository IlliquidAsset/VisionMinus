.class public Lcom/powervision/user/ui/activity/SettingActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/base/views/TipDialog$DialogTipClickListener;


# instance fields
.field private isChina:Z

.field private isOpenPush:Z

.field private mAbout:Landroid/widget/TextView;

.field private mIsUploadState:Z

.field private mIvUpload:Landroid/widget/ImageView;

.field private mLogout:Landroid/widget/Button;

.field private mPushStatus:Landroid/widget/ImageView;

.field private mTerms:Landroid/widget/TextView;

.field private mTextPush:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mTvAgreement:Landroid/widget/TextView;

.field private mTvUpload:Landroid/widget/TextView;

.field private mTvUploadTip:Landroid/widget/TextView;

.field private mUploadTipDialog:Lcom/powervision/base/views/TipDialog;

.field private mVersion:Landroid/widget/TextView;

.field private mViewPush:Landroid/view/View;

.field private mViewUpload:Landroid/view/View;

.field private mWebsite:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->isChina:Z

    return-void
.end method

.method private intentToWeb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    .line 223
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 224
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-class p1, Lcom/powervision/base/base/web/WebViewActivity;

    invoke-virtual {p0, p1, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private isShowViewUpload()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTvUpload:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIvUpload:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTvUploadTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mViewUpload:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private workViewUpload(Z)V
    .locals 2

    .line 145
    iput-boolean p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIsUploadState:Z

    .line 146
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIvUpload:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget p1, Lcom/powervision/user/R$mipmap;->user_switch_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/powervision/user/R$mipmap;->user_switch_off:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iget-boolean v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIsUploadState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "USER_SET_FLY_UPLOAD_STATE"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 59
    sget v0, Lcom/powervision/user/R$layout;->user_activity_setting:I

    return v0
.end method

.method protected initData()V
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 88
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 89
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/SettingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "v%s"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mVersion:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "1.0.0"

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getServerStatus()Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTitle:Landroid/widget/TextView;

    sget v2, Lcom/powervision/user/R$string;->APP_Mine_15:I

    invoke-virtual {p0, v2}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v2, "FIREBASE_STATUS"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->isOpenPush:Z

    .line 105
    iget-object v1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mPushStatus:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget v0, Lcom/powervision/user/R$mipmap;->user_switch_on:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/powervision/user/R$mipmap;->user_switch_off:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "BP_PHONE_LATITUDE"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "BP_PHONE_LONGITUDE"

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    invoke-static {}, Lcom/powervision/base/utils/LotChinaUtil;->getInstance()Lcom/powervision/base/utils/LotChinaUtil;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v2, v5, v6, v0, v1}, Lcom/powervision/base/utils/LotChinaUtil;->isInsideChina(DD)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->isChina:Z

    .line 116
    :cond_3
    iget-boolean v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->isChina:Z

    if-nez v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mPushStatus:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTextPush:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mViewPush:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/SettingActivity;->isShowViewUpload()V

    goto :goto_3

    .line 122
    :cond_4
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "USER_SET_FLY_UPLOAD_STATE"

    invoke-virtual {v0, v1, v4}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIsUploadState:Z

    .line 123
    iget-object v1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIvUpload:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    sget v0, Lcom/powervision/user/R$mipmap;->user_switch_on:I

    goto :goto_2

    :cond_5
    sget v0, Lcom/powervision/user/R$mipmap;->user_switch_off:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    new-instance v0, Lcom/powervision/base/views/TipDialog;

    sget v1, Lcom/powervision/user/R$string;->APP_Mine_44:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/powervision/user/R$string;->APP_Mine_45:I

    .line 125
    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/powervision/base/views/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/powervision/base/views/TipDialog$DialogTipClickListener;)V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mUploadTipDialog:Lcom/powervision/base/views/TipDialog;

    :goto_3
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    sget p1, Lcom/powervision/user/R$id;->user_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 65
    sget p1, Lcom/powervision/user/R$id;->set_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTitle:Landroid/widget/TextView;

    .line 66
    sget p1, Lcom/powervision/user/R$id;->push_switch:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mPushStatus:Landroid/widget/ImageView;

    .line 67
    sget p1, Lcom/powervision/user/R$id;->tv_about:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mAbout:Landroid/widget/TextView;

    .line 68
    sget p1, Lcom/powervision/user/R$id;->log_out:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mLogout:Landroid/widget/Button;

    .line 69
    sget p1, Lcom/powervision/user/R$id;->tv_website:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mWebsite:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/powervision/user/R$id;->tv_term_of_service:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTerms:Landroid/widget/TextView;

    .line 71
    sget p1, Lcom/powervision/user/R$id;->text_version:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mVersion:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/powervision/user/R$id;->tv_agreement:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTvAgreement:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/powervision/user/R$id;->tv_push:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTextPush:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/powervision/user/R$id;->tv_push_divider:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mViewPush:Landroid/view/View;

    .line 77
    sget p1, Lcom/powervision/user/R$id;->tv_set_fly_upload:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTvUpload:Landroid/widget/TextView;

    .line 78
    sget p1, Lcom/powervision/user/R$id;->iv_set_fly_switch:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIvUpload:Landroid/widget/ImageView;

    .line 79
    sget p1, Lcom/powervision/user/R$id;->tv_set_fly_upload_tip:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTvUploadTip:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/powervision/user/R$id;->view_set_fly_upload:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mViewUpload:Landroid/view/View;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 172
    sget v0, Lcom/powervision/user/R$id;->push_switch:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 183
    iget-boolean p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->isOpenPush:Z

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mPushStatus:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/user/R$mipmap;->user_switch_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    invoke-static {}, Lcom/powervision/airmap/utils/JPushUtil;->getInstance()Lcom/powervision/airmap/utils/JPushUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/airmap/utils/JPushUtil;->closePush()V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mPushStatus:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/user/R$mipmap;->user_switch_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    invoke-static {}, Lcom/powervision/airmap/utils/JPushUtil;->getInstance()Lcom/powervision/airmap/utils/JPushUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/airmap/utils/JPushUtil;->openPush()V

    .line 190
    :goto_0
    iget-boolean p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->isOpenPush:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->isOpenPush:Z

    goto/16 :goto_1

    .line 192
    :cond_1
    sget v0, Lcom/powervision/user/R$id;->iv_set_fly_switch:I

    if-ne p1, v0, :cond_3

    .line 193
    iget-boolean p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIsUploadState:Z

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mUploadTipDialog:Lcom/powervision/base/views/TipDialog;

    if-eqz p1, :cond_8

    .line 195
    invoke-virtual {p1}, Lcom/powervision/base/views/TipDialog;->show()V

    goto :goto_1

    .line 198
    :cond_2
    invoke-direct {p0, v1}, Lcom/powervision/user/ui/activity/SettingActivity;->workViewUpload(Z)V

    goto :goto_1

    .line 200
    :cond_3
    sget v0, Lcom/powervision/user/R$id;->tv_about:I

    if-ne p1, v0, :cond_4

    .line 201
    sget p1, Lcom/powervision/user/R$string;->APP_Link_1:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/powervision/user/R$string;->APP_Mine_11:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->intentToWeb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_4
    sget v0, Lcom/powervision/user/R$id;->log_out:I

    if-ne p1, v0, :cond_5

    .line 203
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string v0, "local_avatar"

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->remove(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/powervision/base/router/RouterUtil;->intentToLogin()V

    .line 205
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/SettingActivity;->finish()V

    goto :goto_1

    .line 206
    :cond_5
    sget v0, Lcom/powervision/user/R$id;->tv_website:I

    if-ne p1, v0, :cond_6

    .line 207
    sget p1, Lcom/powervision/user/R$string;->APP_Link_3:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/powervision/user/R$string;->APP_Mine_12:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->intentToWeb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_6
    sget v0, Lcom/powervision/user/R$id;->tv_term_of_service:I

    if-ne p1, v0, :cond_7

    .line 209
    sget p1, Lcom/powervision/user/R$string;->APP_Link_5:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/powervision/user/R$string;->APP_Login_11:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->intentToWeb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_7
    sget v0, Lcom/powervision/user/R$id;->tv_agreement:I

    if-ne p1, v0, :cond_8

    .line 211
    sget p1, Lcom/powervision/user/R$string;->APP_Link_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/powervision/user/R$string;->APP_Mine_13:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->intentToWeb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/SettingActivity;->finish()V

    .line 166
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onTipCancel()V
    .locals 0

    return-void
.end method

.method public onTipConfirm()V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0}, Lcom/powervision/user/ui/activity/SettingActivity;->workViewUpload(Z)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mPushStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mLogout:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mWebsite:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTerms:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mTvAgreement:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/powervision/user/ui/activity/SettingActivity;->mIvUpload:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
