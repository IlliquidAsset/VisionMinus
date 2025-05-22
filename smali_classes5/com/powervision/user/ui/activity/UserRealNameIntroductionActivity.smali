.class public Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "UserRealNameIntroductionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final UT_URL_PATH:Ljava/lang/String; = "https://uas.caac.gov.cn/login"


# instance fields
.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mTvUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static goInTo(Landroid/content/Context;)V
    .locals 2

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openBrowser()V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "https://uas.caac.gov.cn/login"

    .line 72
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 75
    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_16:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 31
    sget v0, Lcom/powervision/user/R$layout;->user_activity_real_name_introduction:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 45
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 46
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    sget p1, Lcom/powervision/user/R$id;->base_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 37
    sget p1, Lcom/powervision/user/R$id;->base_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->mTitle:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/powervision/user/R$id;->tv_user_rni_go_url:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->mTvUrl:Landroid/widget/TextView;

    const-string v0, "https://uas.caac.gov.cn/login"

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 61
    sget v0, Lcom/powervision/user/R$id;->tv_user_rni_go_url:I

    if-ne v0, p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->openBrowser()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->finish()V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setListener()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->mTvUrl:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
