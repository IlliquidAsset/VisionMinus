.class public Lcom/powervision/login/ui/activity/ServiceAgreementActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "ServiceAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/login/ui/activity/ServiceAgreementActivity$WebViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final fragments:[Landroidx/fragment/app/Fragment;

.field private static final mTitles:[Ljava/lang/String;


# instance fields
.field private mMbAccept:Lcom/google/android/material/button/MaterialButton;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mTvAgreement:Landroid/widget/TextView;

.field private mTvReject:Landroid/widget/TextView;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private spanAgreement:Landroid/text/style/ClickableSpan;

.field private spanPolicy:Landroid/text/style/ClickableSpan;

.field private spannableString:Landroid/text/SpannableString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/fragment/app/Fragment;

    .line 45
    sput-object v1, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->fragments:[Landroidx/fragment/app/Fragment;

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTitles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 135
    new-instance v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$1;-><init>(Lcom/powervision/login/ui/activity/ServiceAgreementActivity;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    .line 149
    new-instance v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$2;-><init>(Lcom/powervision/login/ui/activity/ServiceAgreementActivity;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    return-void
.end method

.method static synthetic access$000()[Landroidx/fragment/app/Fragment;
    .locals 1

    .line 35
    sget-object v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->fragments:[Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTitles:[Ljava/lang/String;

    return-object v0
.end method

.method private initAgreement()V
    .locals 3

    .line 106
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/login/R$string;->APP_Login_57:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    .line 107
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->initChinaAgreement()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageIsJapan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->initJapanAgreement()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->initEnglishAgreement()V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTvAgreement:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTvAgreement:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 116
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTvAgreement:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private initChinaAgreement()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x16

    const/16 v3, 0x1a

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 121
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x1b

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initEnglishAgreement()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x2f

    const/16 v3, 0x3d

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 131
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x42

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initJapanAgreement()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x17

    const/16 v3, 0x1d

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x1e

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTvReject:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$ServiceAgreementActivity$nMqXoLQManqxuI0jkCflLJXnnJs;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$ServiceAgreementActivity$nMqXoLQManqxuI0jkCflLJXnnJs;-><init>(Lcom/powervision/login/ui/activity/ServiceAgreementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mMbAccept:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$ServiceAgreementActivity$HJyA8qmgycrPau2UYt5pI59pOv4;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$ServiceAgreementActivity$HJyA8qmgycrPau2UYt5pI59pOv4;-><init>(Lcom/powervision/login/ui/activity/ServiceAgreementActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 50
    sget v0, Lcom/powervision/login/R$layout;->login_activity_service_agreement:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 87
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    .line 88
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->initAgreement()V

    .line 89
    sget-object v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->fragments:[Landroidx/fragment/app/Fragment;

    sget v1, Lcom/powervision/login/R$string;->APP_Link_2:I

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/login/ui/fragment/WebViewFragment;->newInstance(Ljava/lang/String;)Lcom/powervision/login/ui/fragment/WebViewFragment;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 90
    sget-object v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->fragments:[Landroidx/fragment/app/Fragment;

    sget v1, Lcom/powervision/login/R$string;->APP_Link_5:I

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/login/ui/fragment/WebViewFragment;->newInstance(Ljava/lang/String;)Lcom/powervision/login/ui/fragment/WebViewFragment;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 91
    sget-object v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTitles:[Ljava/lang/String;

    sget v1, Lcom/powervision/login/R$string;->APP_Login_11:I

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 92
    sget-object v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTitles:[Ljava/lang/String;

    sget v1, Lcom/powervision/login/R$string;->APP_Login_12:I

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 94
    new-instance v0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$WebViewPagerAdapter;

    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity$WebViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 95
    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 97
    iget-object v0, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    sget p1, Lcom/powervision/login/R$id;->tv_agreement:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTvAgreement:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/powervision/login/R$id;->tv_reject:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTvReject:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/powervision/login/R$id;->mb_accept:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mMbAccept:Lcom/google/android/material/button/MaterialButton;

    .line 58
    sget p1, Lcom/powervision/login/R$id;->tab_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 59
    sget p1, Lcom/powervision/login/R$id;->view_pager:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 61
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->initListener()V

    return-void
.end method

.method public synthetic lambda$initListener$1$ServiceAgreementActivity(Landroid/view/View;)V
    .locals 2

    .line 67
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    sget v0, Lcom/powervision/login/R$string;->APP_Login_64:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 69
    sget v0, Lcom/powervision/login/R$string;->AP03_ConnectGuide_47:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 70
    sget v0, Lcom/powervision/login/R$string;->APP_Login_63:I

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$ServiceAgreementActivity$RVLGaK01guGO88RUU9YJ8CHOcB0;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$ServiceAgreementActivity$RVLGaK01guGO88RUU9YJ8CHOcB0;-><init>(Lcom/powervision/login/ui/activity/ServiceAgreementActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic lambda$initListener$2$ServiceAgreementActivity(Landroid/view/View;)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->finish()V

    .line 77
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SPHelperUtils;->setShowAgreement(Z)V

    .line 79
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/login/createLoginActivity"

    .line 80
    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$null$0$ServiceAgreementActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
