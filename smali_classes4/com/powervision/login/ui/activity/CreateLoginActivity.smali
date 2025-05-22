.class public Lcom/powervision/login/ui/activity/CreateLoginActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "CreateLoginActivity.java"

# interfaces
.implements Lcom/powervision/login/ui/view/ICreateLoginView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/login/presenter/impl/CreateLoginPresenter;",
        "Lcom/powervision/login/model/impl/LoginModel;",
        ">;",
        "Lcom/powervision/login/ui/view/ICreateLoginView;"
    }
.end annotation


# static fields
.field public static final ACTION_LOGIN_SUCCESS:I = 0x2

.field public static final ACTION_RE_LOGIN:I = 0x1

.field public static final PARAM_ACTION_TYPE:Ljava/lang/String; = "param_action_type"


# instance fields
.field private countryListEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/login/model/entity/CountryListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAccount:Ljava/lang/String;

.field private mAdapter:Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/net/CountryListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleGetCountryList:Z

.field private mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private mTvAgreement:Landroid/widget/TextView;

.field private mTvSendVerifyCode:Landroid/widget/TextView;

.field private mTvSwitchPhoneLogin:Landroid/widget/TextView;

.field private spanAgreement:Landroid/text/style/ClickableSpan;

.field private spanPolicy:Landroid/text/style/ClickableSpan;

.field private spannableString:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-string v0, "CN"

    .line 93
    iput-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mHandleGetCountryList:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->countryListEntityList:Ljava/util/List;

    .line 414
    new-instance v0, Lcom/powervision/login/ui/activity/CreateLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity$4;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    .line 429
    new-instance v0, Lcom/powervision/login/ui/activity/CreateLoginActivity$5;

    invoke-direct {v0, p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity$5;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/powervision/login/ui/activity/CreateLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSendVerifyCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/login/ui/activity/CreateLoginActivity;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mHandleGetCountryList:Z

    return p1
.end method

.method static synthetic access$400(Lcom/powervision/login/ui/activity/CreateLoginActivity;)Lcom/powervision/base/base/BasePresenter;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->showPopupWindow()V

    return-void
.end method

.method private checkEmailFormat()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    const-string v1, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    sget v1, Lcom/powervision/login/R$string;->APP_Login_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/login/views/LoginEditText;->showError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkPhoneFormat()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initAgreement()V
    .locals 3

    .line 385
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/login/R$string;->APP_Login_65:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    .line 386
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->initChinaAgreement()V

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageIsJapan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->initJapanAgreement()V

    goto :goto_0

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->initEnglishAgreement()V

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvAgreement:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvAgreement:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 395
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvAgreement:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private initChinaAgreement()V
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x8

    const/16 v3, 0xc

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 400
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0xd

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initEnglishAgreement()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x21

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 410
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v3, 0x34

    const/16 v4, 0x41

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private initJapanAgreement()V
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanAgreement:Landroid/text/style/ClickableSpan;

    const/16 v2, 0xc

    const/16 v3, 0x12

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 405
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spannableString:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->spanPolicy:Landroid/text/style/ClickableSpan;

    const/16 v2, 0x13

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private onCheckGooglePlayServices()Z
    .locals 3

    .line 449
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 464
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    .line 478
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 479
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 480
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 481
    new-instance v2, Lcom/powervision/login/ui/activity/CreateLoginActivity$6;

    invoke-direct {v2, p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity$6;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 487
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method private sendNotification(Ljava/lang/String;)V
    .locals 6

    .line 534
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/user/ui/activity/MessageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 535
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 537
    sget v1, Lcom/powervision/login/R$string;->default_notification_channel_id:I

    invoke-virtual {p0, v1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 538
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 540
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v4, Lcom/powervision/login/R$drawable;->ic_launcher_background:I

    .line 542
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "remoteMessage.getNotification.getTitle"

    .line 543
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "remoteMessage.getNotification.getBody"

    .line 544
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 545
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 546
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 547
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v2, "notification"

    .line 549
    invoke-virtual {p0, v2}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 551
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 552
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x3

    const-string v5, "Channel human readable title"

    invoke-direct {v3, v1, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 555
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private showAgreement()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getShowAgreement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/powervision/base/fragment/AgreementFragment;->newInstance()Lcom/powervision/base/fragment/AgreementFragment;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AgreementFragment"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/fragment/AgreementFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/powervision/login/ui/activity/CreateLoginActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/powervision/login/ui/activity/CreateLoginActivity$1;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;Lcom/powervision/base/fragment/AgreementFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/fragment/AgreementFragment;->setOnFragmentActionListener(Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;)V

    :cond_0
    return-void
.end method

.method private showPopupWindow()V
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 353
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/login/R$layout;->login_popup_view_select_country:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 354
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    .line 355
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 356
    sget v2, Lcom/powervision/login/R$color;->transparent:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 359
    sget v1, Lcom/powervision/login/R$id;->rv_select_country:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 360
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/high16 v1, 0x438c0000    # 280.0f

    .line 362
    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumWidth(I)V

    .line 370
    new-instance v1, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->countryListEntityList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAdapter:Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

    .line 371
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 373
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAdapter:Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$CreateLoginActivity$Ist4yKyrtcx-ULT57Z-bMjxmFiA;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$CreateLoginActivity$Ist4yKyrtcx-ULT57Z-bMjxmFiA;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->setAdapterListener(Lcom/powervision/login/ui/adapter/CountrySelectAdapter$AdapterListener;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x800033

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v3

    .line 381
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    .line 380
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private updateCountryList()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/net/CountryListModel;

    .line 317
    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {v2}, Lcom/powervision/login/views/LoginEditText;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/powervision/base/model/net/CountryListModel;->countryCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    iget-object v3, v1, Lcom/powervision/base/model/net/CountryListModel;->phoneCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/powervision/base/model/net/CountryListModel;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/powervision/login/views/LoginEditText;->setPhoneCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    iget-object v2, v1, Lcom/powervision/base/model/net/CountryListModel;->countryCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-static {v1}, Lcom/powervision/login/model/entity/CountryListEntity;->getLocationCountry(Lcom/powervision/base/model/net/CountryListModel;)Lcom/powervision/login/model/entity/CountryListEntity;

    move-result-object v2

    .line 326
    iget-object v3, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->countryListEntityList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 330
    :cond_1
    invoke-static {v1}, Lcom/powervision/login/model/entity/CountryListEntity;->getDefaultCountry(Lcom/powervision/base/model/net/CountryListModel;)Lcom/powervision/login/model/entity/CountryListEntity;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->countryListEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAdapter:Lcom/powervision/login/ui/adapter/CountrySelectAdapter;

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {v0}, Lcom/powervision/login/ui/adapter/CountrySelectAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getCountryListFailed(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mHandleGetCountryList:Z

    .line 273
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 274
    invoke-static {p2}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(Ljava/lang/String;)V

    return-void
.end method

.method public getCountryListResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/net/CountryListModel;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 257
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->countryListEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->updateCountryList()V

    .line 262
    iget-boolean p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mHandleGetCountryList:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mHandleGetCountryList:Z

    .line 264
    invoke-static {p0}, Lcom/powervision/base/utils/KeyBoardUtils;->closeKeybord(Landroid/app/Activity;)V

    .line 265
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->showPopupWindow()V

    :cond_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 106
    sget v0, Lcom/powervision/login/R$layout;->login_activity_create_login:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 121
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->initAgreement()V

    .line 123
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isLogin"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-virtual {v0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->getCountryList()V

    .line 125
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-virtual {v0, p0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->onStartLocation(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguageisChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {v0}, Lcom/powervision/login/views/LoginEditText;->setPhoneType()V

    .line 128
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSwitchPhoneLogin:Landroid/widget/TextView;

    sget v1, Lcom/powervision/login/R$string;->APP_Login_34:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->onCheckGooglePlayServices()Z

    .line 133
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->showAgreement()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    sget p1, Lcom/powervision/login/R$id;->tv_switch_phone_login:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSwitchPhoneLogin:Landroid/widget/TextView;

    .line 112
    sget p1, Lcom/powervision/login/R$id;->login_et_account:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/login/views/LoginEditText;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    .line 113
    sget p1, Lcom/powervision/login/R$id;->tv_send_verify_code:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSendVerifyCode:Landroid/widget/TextView;

    .line 114
    sget p1, Lcom/powervision/login/R$id;->tv_agreement:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvAgreement:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$setListener$0$CreateLoginActivity(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {p1}, Lcom/powervision/login/views/LoginEditText;->isEmail()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {p1}, Lcom/powervision/login/views/LoginEditText;->setPhoneType()V

    .line 155
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSwitchPhoneLogin:Landroid/widget/TextView;

    sget v0, Lcom/powervision/login/R$string;->APP_Login_34:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {p1}, Lcom/powervision/login/views/LoginEditText;->setEmailType()V

    .line 158
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSwitchPhoneLogin:Landroid/widget/TextView;

    sget v0, Lcom/powervision/login/R$string;->APP_Login_33:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setListener$1$CreateLoginActivity(Landroid/view/View;)V
    .locals 3

    .line 188
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSendVerifyCode:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/NetUtils;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 194
    sget p1, Lcom/powervision/login/R$string;->APP_Msg_1:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {p1}, Lcom/powervision/login/views/LoginEditText;->isEmail()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    const-string v0, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/login/R$string;->APP_Login_36:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/login/views/LoginEditText;->showError(Ljava/lang/String;)V

    return-void

    .line 204
    :cond_2
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {v1}, Lcom/powervision/login/views/LoginEditText;->getPhoneCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {v2}, Lcom/powervision/login/views/LoginEditText;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->getVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p0}, Lcom/powervision/base/utils/ProgressDialogUtils;->showEmptyDialog(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$showPopupWindow$2$CreateLoginActivity(I)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->countryListEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/login/model/entity/CountryListEntity;

    .line 375
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    iget-object v1, p1, Lcom/powervision/login/model/entity/CountryListEntity;->phoneCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/login/model/entity/CountryListEntity;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/login/views/LoginEditText;->setPhoneCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onCloseClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCountryCodeResult(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryCode:Ljava/lang/String;

    .line 306
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mCountryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->updateCountryList()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 236
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;

    invoke-virtual {v0}, Lcom/powervision/login/presenter/impl/CreateLoginPresenter;->onStopLocation()V

    .line 237
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 211
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "param_action_type"

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 214
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isLogin"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/home/homeActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    new-instance v0, Lcom/powervision/login/ui/activity/CreateLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity$3;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotifyClick(Landroid/view/View;)V
    .locals 0

    const-string p1, "00"

    .line 530
    invoke-direct {p0, p1}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->sendNotification(Ljava/lang/String;)V

    return-void
.end method

.method public onOpenClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onTest1Click(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onTest2Click(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-static {p0}, Lcom/powervision/base/utils/KeyBoardUtils;->closeKeybord(Landroid/app/Activity;)V

    .line 344
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVerifyCodeFailed(ILjava/lang/String;)V
    .locals 1

    .line 293
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    sget p2, Lcom/powervision/login/R$string;->APP_Login_36:I

    invoke-virtual {p0, p2}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/login/views/LoginEditText;->showError(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {p1, p2}, Lcom/powervision/login/views/LoginEditText;->showError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVerifyCodeSuccess()V
    .locals 4

    .line 279
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 281
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {v0}, Lcom/powervision/login/views/LoginEditText;->isEmail()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->checkEmailFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2, v2, v1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->toVerifyCodeActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {v0}, Lcom/powervision/login/views/LoginEditText;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity;->checkPhoneFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    invoke-virtual {v2}, Lcom/powervision/login/views/LoginEditText;->getPhoneCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    .line 287
    invoke-virtual {v3}, Lcom/powervision/login/views/LoginEditText;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v0, v2, v3, v1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->toVerifyCodeActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSwitchPhoneLogin:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$CreateLoginActivity$fuoQ2z2qHfxI15_6G_2c8mGsgEE;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$CreateLoginActivity$fuoQ2z2qHfxI15_6G_2c8mGsgEE;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mLoginEtAccount:Lcom/powervision/login/views/LoginEditText;

    new-instance v1, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/CreateLoginActivity$2;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/login/views/LoginEditText;->setOnLoginEditTextListener(Lcom/powervision/login/views/LoginEditText$OnLoginEditTextListener;)V

    .line 187
    iget-object v0, p0, Lcom/powervision/login/ui/activity/CreateLoginActivity;->mTvSendVerifyCode:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$CreateLoginActivity$TdMiorpiGRjiXYm83ma6G_gFmoI;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$CreateLoginActivity$TdMiorpiGRjiXYm83ma6G_gFmoI;-><init>(Lcom/powervision/login/ui/activity/CreateLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
