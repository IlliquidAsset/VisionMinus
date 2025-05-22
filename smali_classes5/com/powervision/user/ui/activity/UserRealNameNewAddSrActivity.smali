.class public Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "UserRealNameNewAddSrActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity$UpperCaseTransform;
    }
.end annotation


# static fields
.field private static final USER_RESULT_SR_TYPE_FLAG:Ljava/lang/String; = "user_sr_type"

.field private static final USER_RE_EDIT_STR_CONTENT:Ljava/lang/String; = "USER_RE_EDIT_STR_CONTENT"


# instance fields
.field private editContent:Ljava/lang/String;

.field private mEtContent:Landroid/widget/EditText;

.field private mInputLimit:I

.field private mRequestCode:I

.field private mTipDialog:Lcom/powervision/base/views/TipDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mTvRight:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static goInTo(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_sr_type"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "USER_RE_EDIT_STR_CONTENT"

    .line 41
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private workFinishBtnShow(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    sget v0, Lcom/powervision/user/R$color;->blue:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 162
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    sget v0, Lcom/powervision/user/R$color;->gray_color_85:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 166
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private workTipDialog()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTipDialog:Lcom/powervision/base/views/TipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/TipDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTipDialog:Lcom/powervision/base/views/TipDialog;

    invoke-virtual {v0}, Lcom/powervision/base/views/TipDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 145
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 146
    iget v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mInputLimit:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->workFinishBtnShow(Z)V

    .line 147
    iget v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mInputLimit:I

    sub-int/2addr v0, p1

    .line 148
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvTime:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 47
    sget v0, Lcom/powervision/user/R$layout;->user_activity_real_name_add_sr:I

    return v0
.end method

.method protected initData()V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 64
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    const-string v3, "user_sr_type"

    .line 71
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mRequestCode:I

    const-string v2, "USER_RE_EDIT_STR_CONTENT"

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->editContent:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x3e8

    .line 75
    iget v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mRequestCode:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0xe

    .line 76
    iput v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mInputLimit:I

    .line 77
    sget v0, Lcom/powervision/user/R$string;->AP03_Verified_14:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget v2, Lcom/powervision/user/R$string;->AP03_Verified_23:I

    invoke-virtual {p0, v2}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v3, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->editContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    .line 82
    iput v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mInputLimit:I

    .line 83
    sget v0, Lcom/powervision/user/R$string;->AP03_Verified_15:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget v2, Lcom/powervision/user/R$string;->AP03_Verified_24:I

    invoke-virtual {p0, v2}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvTime:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v3, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->editContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v5, v2

    .line 88
    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    sget v2, Lcom/powervision/user/R$string;->AP03_ConnectGuide_67:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-direct {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->workFinishBtnShow(Z)V

    .line 92
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mInputLimit:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 93
    new-instance v0, Lcom/powervision/base/views/TipDialog;

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_22:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/powervision/base/views/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/powervision/base/views/TipDialog$DialogTipClickListener;)V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTipDialog:Lcom/powervision/base/views/TipDialog;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    sget p1, Lcom/powervision/user/R$id;->base_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 53
    sget p1, Lcom/powervision/user/R$id;->base_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTitle:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/powervision/user/R$id;->base_right:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    .line 55
    sget p1, Lcom/powervision/user/R$id;->et_user_activity_add_sr:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    .line 56
    sget p1, Lcom/powervision/user/R$id;->tv_user_activity_add_sr_time:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvTime:Landroid/widget/TextView;

    .line 57
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    new-instance v0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity$UpperCaseTransform;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity$UpperCaseTransform;-><init>(Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 58
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 106
    sget v0, Lcom/powervision/user/R$id;->base_right:I

    if-ne v0, p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 108
    iget v1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mRequestCode:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 110
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UAS"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->workTipDialog()V

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    .line 117
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100EFAP"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->workTipDialog()V

    return-void

    .line 123
    :cond_1
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->strMatchEN(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->workTipDialog()V

    return-void

    .line 127
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "user_rna_data"

    .line 128
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->finish()V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->finish()V

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->mEtContent:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
