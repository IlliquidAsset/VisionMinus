.class public Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "InputVerifyCodeActivity.java"

# interfaces
.implements Lcom/powervision/login/ui/view/IInputVerifyCodeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;",
        "Lcom/powervision/login/model/impl/LoginModel;",
        ">;",
        "Lcom/powervision/login/ui/view/IInputVerifyCodeView;"
    }
.end annotation


# static fields
.field public static final ACTION_BIND_PASSWORD:I = 0x3

.field public static final ACTION_REGISTER:I = 0x1

.field public static final ACTION_RESET_PASSWORD:I = 0x2

.field public static final PARAM_ACCOUNT:Ljava/lang/String; = "account"

.field public static final PARAM_ACTION:Ljava/lang/String; = "action"

.field public static final PARAM_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final PARAM_PHONE_CODE:Ljava/lang/String; = "phone_code"

.field private static final TAG:Ljava/lang/String; = "InputVerifyCodeActivity"


# instance fields
.field private currentClipboardContent:Ljava/lang/String;

.field private firstResume:Z

.field private firstStart:Z

.field private isGetCodeEnabled:Z

.field private mAccount:Ljava/lang/String;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCountryCode:Ljava/lang/String;

.field private mImgBack:Landroid/widget/ImageView;

.field private mLanguage:Ljava/lang/String;

.field private mPhoneCode:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private mTvLoginDes:Landroid/widget/TextView;

.field private mTvResendVerifyCode:Landroid/widget/TextView;

.field private mVcCode:Lcom/powervision/login/views/VerificationCodeInput;

.field private manager:Landroid/content/ClipboardManager;

.field private onPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private previewClipboardContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->isGetCodeEnabled:Z

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->firstResume:Z

    .line 67
    iput-boolean v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->firstStart:Z

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->previewClipboardContent:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->currentClipboardContent:Ljava/lang/String;

    .line 326
    new-instance v0, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$jD7eMtVYnuOmxW-AqBo0nRM0rxY;

    invoke-direct {v0, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$jD7eMtVYnuOmxW-AqBo0nRM0rxY;-><init>(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->onPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvResendVerifyCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->isGetCodeEnabled:Z

    return p1
.end method

.method private addClipListener()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->manager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->onPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method private checkSmsBody(Ljava/lang/String;)V
    .locals 2

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const-string v0, "PowerVision"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-static {p1}, Lcom/powervision/base/utils/SmsUtils;->parseSmsBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mVcCode:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {v0, p1}, Lcom/powervision/login/views/VerificationCodeInput;->setVerifyCode(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 309
    invoke-static {p1}, Lcom/powervision/base/utils/SmsUtils;->parseSmsBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mVcCode:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {v0, p1}, Lcom/powervision/login/views/VerificationCodeInput;->setVerifyCode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getClipboard()Ljava/lang/String;
    .locals 2

    const-string v0, "clipboard"

    .line 281
    invoke-virtual {p0, v0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 283
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private removeClipListener()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->manager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->onPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method private timeStart()V
    .locals 8

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->isGetCodeEnabled:Z

    .line 231
    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvResendVerifyCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvResendVerifyCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvResendVerifyCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    new-instance v0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;

    const-wide/32 v4, 0xc350

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity$1;-><init>(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;JJ)V

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 248
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private timeStop()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private toCreateLoginPage()V
    .locals 3

    .line 267
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/login/createLoginActivity"

    .line 268
    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "param_action_type"

    const/4 v2, 0x2

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method public static toVerifyCodeActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/login/inputVerifyCodeActivity"

    .line 77
    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    const-string v1, "phone_code"

    .line 78
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    const-string v0, "country_code"

    .line 79
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    const-string p2, "account"

    .line 80
    invoke-virtual {p1, p2, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    const-string p1, "action"

    .line 81
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/android/arouter/facade/Postcard;->withInt(Ljava/lang/String;I)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 87
    sget v0, Lcom/powervision/login/R$layout;->login_activity_verify_code:I

    return v0
.end method

.method protected initData()V
    .locals 3

    const-string v0, "clipboard"

    .line 100
    invoke-virtual {p0, v0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->manager:Landroid/content/ClipboardManager;

    .line 102
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mAccount:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPhoneCode:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "country_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mCountryCode:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 106
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mLanguage:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvLoginDes:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/powervision/login/R$string;->APP_Login_45:I

    invoke-virtual {p0, v2}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPhoneCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    sget p1, Lcom/powervision/login/R$id;->vc_code:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/login/views/VerificationCodeInput;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mVcCode:Lcom/powervision/login/views/VerificationCodeInput;

    .line 93
    sget p1, Lcom/powervision/login/R$id;->img_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mImgBack:Landroid/widget/ImageView;

    .line 94
    sget p1, Lcom/powervision/login/R$id;->tv_login_des:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvLoginDes:Landroid/widget/TextView;

    .line 95
    sget p1, Lcom/powervision/login/R$id;->tv_resend_verify_code:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvResendVerifyCode:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$new$3$InputVerifyCodeActivity()V
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getClipboard()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->currentClipboardContent:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->previewClipboardContent:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->currentClipboardContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->previewClipboardContent:Ljava/lang/String;

    .line 330
    invoke-direct {p0, v0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->checkSmsBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$0$InputVerifyCodeActivity(Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-static {p0}, Lcom/powervision/base/utils/ProgressDialogUtils;->showEmptyDialog(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setListener$1$InputVerifyCodeActivity(Landroid/view/View;)V
    .locals 3

    .line 122
    invoke-static {}, Lcom/powervision/base/utils/NetUtils;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    sget p1, Lcom/powervision/login/R$string;->APP_Msg_1:I

    invoke-virtual {p0, p1}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mVcCode:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {p1}, Lcom/powervision/login/views/VerificationCodeInput;->clearAll()V

    return-void

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/powervision/base/utils/ProgressDialogUtils;->showEmptyDialog(Landroid/content/Context;)V

    .line 128
    iget-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;

    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPhoneCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->getVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setListener$2$InputVerifyCodeActivity(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->onBackPressed()V

    return-void
.end method

.method public loginError(ILjava/lang/String;)V
    .locals 0

    .line 201
    invoke-static {p2}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 208
    iget-object p1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mVcCode:Lcom/powervision/login/views/VerificationCodeInput;

    invoke-virtual {p1}, Lcom/powervision/login/views/VerificationCodeInput;->clearAll()V

    return-void
.end method

.method public loginSuccess()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 214
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isLogin"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "User_Login"

    const-string v1, ""

    .line 217
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 216
    invoke-static {p0, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    invoke-static {v0}, Lcom/powervision/base/utils/UmengUtils;->workUmServiceLogBpFun(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;

    invoke-virtual {v0}, Lcom/powervision/login/presenter/impl/InputVerifyCodePresenter;->umRnrQueryHadDevice()V

    .line 223
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->toCreateLoginPage()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 182
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 183
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->timeStop()V

    .line 184
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    .line 170
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->removeClipListener()V

    const-string v0, "InputVerifyCodeActivity"

    const-string v1, "onPause: "

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onRestart()V

    const-string v0, "InputVerifyCodeActivity"

    const-string v1, "onRestart: "

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 147
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 148
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->addClipListener()V

    .line 149
    iget-boolean v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->firstResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->isGetCodeEnabled:Z

    if-nez v0, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->firstResume:Z

    .line 151
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->timeStart()V

    :cond_0
    const-string v0, "InputVerifyCodeActivity"

    const-string v2, "onStart: "

    .line 154
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->firstStart:Z

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getClipboard()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->previewClipboardContent:Ljava/lang/String;

    .line 157
    iput-boolean v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->firstStart:Z

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->getClipboard()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->currentClipboardContent:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->previewClipboardContent:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->currentClipboardContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->previewClipboardContent:Ljava/lang/String;

    .line 162
    invoke-direct {p0, v0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->checkSmsBody(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 176
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStop()V

    const-string v0, "InputVerifyCodeActivity"

    const-string v1, "onStop: "

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVerifyCodeFailed(ILjava/lang/String;)V
    .locals 0

    .line 195
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 196
    invoke-static {p2}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void
.end method

.method public onVerifyCodeSuccess()V
    .locals 0

    .line 189
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 190
    invoke-direct {p0}, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->timeStart()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mVcCode:Lcom/powervision/login/views/VerificationCodeInput;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$0U4zbl-GOW4qUQqF9cnR-MqIhic;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$0U4zbl-GOW4qUQqF9cnR-MqIhic;-><init>(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/login/views/VerificationCodeInput;->setOnCompleteListener(Lcom/powervision/login/views/VerificationCodeInput$OnVerificationInputListener;)V

    .line 121
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mTvResendVerifyCode:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$WWUGtKl9a0c5mC9x61fBUg6AeQs;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$WWUGtKl9a0c5mC9x61fBUg6AeQs;-><init>(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;->mImgBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$EKwDJs--8V0DndK5Z-VlhJdrRKg;

    invoke-direct {v1, p0}, Lcom/powervision/login/ui/activity/-$$Lambda$InputVerifyCodeActivity$EKwDJs--8V0DndK5Z-VlhJdrRKg;-><init>(Lcom/powervision/login/ui/activity/InputVerifyCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
