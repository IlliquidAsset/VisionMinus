.class public Lcom/powervision/user/ui/activity/PhoneBindActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "PhoneBindActivity.java"

# interfaces
.implements Lcom/powervision/user/ui/view/IBindView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/user/presenter/impl/BindPresenter;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/user/ui/view/IBindView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mConfirm:Landroid/widget/Button;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mEditCode:Landroid/widget/EditText;

.field private mEditPhone:Landroid/widget/EditText;

.field private mGetCode:Landroid/widget/TextView;

.field private mPhone:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/ui/activity/PhoneBindActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mGetCode:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkPhone()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mEditPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPhone:Ljava/lang/String;

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPhone:Ljava/lang/String;

    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPhone:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPhone:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPhone:Ljava/lang/String;

    const-string v2, "1[3456789]{1}[\\d]{9}"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/RegexUtils;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    sget v0, Lcom/powervision/user/R$string;->APP_Mine_32:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_2
    sget v0, Lcom/powervision/user/R$string;->APP_Mine_29:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return v1
.end method

.method private timeStart()V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mGetCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    new-instance v0, Lcom/powervision/user/ui/activity/PhoneBindActivity$1;

    const-wide/32 v4, 0xc350

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/powervision/user/ui/activity/PhoneBindActivity$1;-><init>(Lcom/powervision/user/ui/activity/PhoneBindActivity;JJ)V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 163
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private timeStop()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 47
    sget v0, Lcom/powervision/user/R$layout;->user_activity_bind_phone:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 63
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 64
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/user/R$string;->APP_Mine_20:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    sget p1, Lcom/powervision/user/R$id;->base_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 53
    sget p1, Lcom/powervision/user/R$id;->base_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mTitle:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/powervision/user/R$id;->edit_phone:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mEditPhone:Landroid/widget/EditText;

    .line 55
    sget p1, Lcom/powervision/user/R$id;->edit_code:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mEditCode:Landroid/widget/EditText;

    .line 56
    sget p1, Lcom/powervision/user/R$id;->text_get_code:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mGetCode:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/powervision/user/R$id;->button_confirm:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mConfirm:Landroid/widget/Button;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/powervision/user/R$id;->text_get_code:I

    if-ne p1, v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->checkPhone()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 90
    invoke-static {}, Lcom/powervision/base/utils/NetUtils;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/user/presenter/impl/BindPresenter;

    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/powervision/user/presenter/impl/BindPresenter;->verificationCode(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    sget p1, Lcom/powervision/user/R$string;->APP_Msg_1:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->checkPhone()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mEditCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sget p1, Lcom/powervision/user/R$string;->APP_Mine_30:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/user/presenter/impl/BindPresenter;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mPhone:Ljava/lang/String;

    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/powervision/user/presenter/impl/BindPresenter;->changeBindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 178
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 180
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->timeStop()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->finish()V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected setListener()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mGetCode:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/powervision/user/ui/activity/PhoneBindActivity;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public success(I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->timeStart()V

    goto :goto_0

    .line 141
    :cond_0
    sget p1, Lcom/powervision/user/R$string;->APP_Mine_34:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/PhoneBindActivity;->finish()V

    :goto_0
    return-void
.end method
