.class public Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "UserRealNameNewAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/user/ui/view/IUserRealNameView;
.implements Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;
.implements Lcom/powervision/base/views/TipDialog$DialogTipClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/user/presenter/impl/UserRealNamePresenter;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/user/ui/view/IUserRealNameView;",
        "Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;",
        "Lcom/powervision/base/views/TipDialog$DialogTipClickListener;"
    }
.end annotation


# static fields
.field public static final NEW_ADD_OR_RE_EDIT_REGISTER_TYPE:Ljava/lang/String; = "NEW_ADD_OR_RE_EDIT_REGISTER_TYPE"

.field public static final RE_EDIT_REAL_NAME_REGISTER:Ljava/lang/String; = "RE_EDIT_REAL_NAME_REGISTER"

.field public static final USER_REQUEST_REGISTER_NUM_CODE:I = 0x3e9

.field public static final USER_REQUEST_SN_CODE:I = 0x3e8

.field public static final USER_RESULT_DATA_FLAG:Ljava/lang/String; = "user_rna_data"


# instance fields
.field private intoType:I

.field private itemBean:Lcom/powervision/user/bean/UrnRegisterItemBean;

.field private mFlDevice:Landroid/widget/FrameLayout;

.field private mFlRegisterNum:Landroid/widget/FrameLayout;

.field private mFlSn:Landroid/widget/FrameLayout;

.field private mTipDialog:Lcom/powervision/base/views/TipDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mTvDevice:Landroid/widget/TextView;

.field private mTvRegisterNum:Landroid/widget/TextView;

.field private mTvRight:Landroid/widget/TextView;

.field private mTvSn:Landroid/widget/TextView;

.field private mTvWork:Landroid/widget/TextView;

.field private mUrnDeviceDialog:Lcom/powervision/user/views/UrnDeviceDialog;

.field private reEditID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static goInTo(Landroid/content/Context;ILcom/powervision/user/bean/UrnRegisterItemBean;)V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "NEW_ADD_OR_RE_EDIT_REGISTER_TYPE"

    .line 52
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "RE_EDIT_REAL_NAME_REGISTER"

    .line 53
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private workSaveBtnShow()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    sget v2, Lcom/powervision/user/R$color;->blue:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 117
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    sget v1, Lcom/powervision/user/R$color;->gray_color_85:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 121
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 60
    sget v0, Lcom/powervision/user/R$layout;->user_activity_real_name_add:I

    return v0
.end method

.method protected initData()V
    .locals 9

    .line 79
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/powervision/user/R$mipmap;->icon_back_black:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 80
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 81
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    const-string v3, "NEW_ADD_OR_RE_EDIT_REGISTER_TYPE"

    .line 87
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->intoType:I

    const-string v2, "RE_EDIT_REAL_NAME_REGISTER"

    .line 88
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/bean/UrnRegisterItemBean;

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->itemBean:Lcom/powervision/user/bean/UrnRegisterItemBean;

    .line 89
    iget v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->intoType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 90
    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->itemBean:Lcom/powervision/user/bean/UrnRegisterItemBean;

    invoke-virtual {v2}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getDevicePsn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->itemBean:Lcom/powervision/user/bean/UrnRegisterItemBean;

    invoke-virtual {v2}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getRealRegisterNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->itemBean:Lcom/powervision/user/bean/UrnRegisterItemBean;

    invoke-virtual {v0}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->reEditID:I

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTitle:Landroid/widget/TextView;

    sget v2, Lcom/powervision/user/R$string;->AP03_Verified_12:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    sget v2, Lcom/powervision/user/R$string;->AP03_Verified_20:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    new-instance v0, Lcom/powervision/user/views/UrnDeviceDialog;

    invoke-direct {v0, p0, p0}, Lcom/powervision/user/views/UrnDeviceDialog;-><init>(Landroid/content/Context;Lcom/powervision/user/views/UrnDeviceDialog$UrnDeviceListener;)V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mUrnDeviceDialog:Lcom/powervision/user/views/UrnDeviceDialog;

    .line 100
    new-instance v0, Lcom/powervision/base/views/TipDialog;

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_18:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_19:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_21:I

    .line 101
    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v1, Lcom/powervision/user/R$string;->AP03_Verified_20:I

    invoke-virtual {p0, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/powervision/base/views/TipDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/powervision/base/views/TipDialog$DialogTipClickListener;)V

    iput-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTipDialog:Lcom/powervision/base/views/TipDialog;

    .line 102
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->workSaveBtnShow()V

    .line 104
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-virtual {v0}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrQueryDeviceList()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    sget p1, Lcom/powervision/user/R$id;->base_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 66
    sget p1, Lcom/powervision/user/R$id;->base_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTitle:Landroid/widget/TextView;

    .line 67
    sget p1, Lcom/powervision/user/R$id;->base_right:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    .line 68
    sget p1, Lcom/powervision/user/R$id;->fl_user_activity_add_device:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mFlDevice:Landroid/widget/FrameLayout;

    .line 69
    sget p1, Lcom/powervision/user/R$id;->tv_user_activity_add_device:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/powervision/user/R$id;->fl_user_activity_add_sr:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mFlSn:Landroid/widget/FrameLayout;

    .line 71
    sget p1, Lcom/powervision/user/R$id;->tv_user_activity_add_sn:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/powervision/user/R$id;->fl_user_activity_add_register_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mFlRegisterNum:Landroid/widget/FrameLayout;

    .line 73
    sget p1, Lcom/powervision/user/R$id;->tv_user_activity_add_register_num:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/powervision/user/R$id;->tv_user_activity_add_work:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvWork:Landroid/widget/TextView;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_1

    const-string p2, "user_rna_data"

    .line 174
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x3e8

    if-ne p3, p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->workSaveBtnShow()V

    goto :goto_0

    :cond_0
    const/16 p3, 0x3e9

    if-ne p3, p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->workSaveBtnShow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 137
    sget v0, Lcom/powervision/user/R$id;->base_right:I

    if-ne v0, p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    iget v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->intoType:I

    if-nez v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v4, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrSaveDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    iget v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->reEditID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->reEditRnrSaveDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    :goto_0
    sget v0, Lcom/powervision/user/R$id;->fl_user_activity_add_device:I

    if-ne v0, p1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mUrnDeviceDialog:Lcom/powervision/user/views/UrnDeviceDialog;

    invoke-virtual {v0}, Lcom/powervision/user/views/UrnDeviceDialog;->show()V

    .line 151
    :cond_2
    sget v0, Lcom/powervision/user/R$id;->fl_user_activity_add_sr:I

    const-string v1, ""

    if-ne v0, p1, :cond_5

    .line 152
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->itemBean:Lcom/powervision/user/bean/UrnRegisterItemBean;

    const/16 v2, 0x3e8

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {v0}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getDevicePsn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->goInTo(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v2, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->goInTo(Landroid/app/Activity;ILjava/lang/String;)V

    .line 158
    :cond_5
    :goto_2
    sget v0, Lcom/powervision/user/R$id;->fl_user_activity_add_register_num:I

    if-ne v0, p1, :cond_8

    .line 159
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->itemBean:Lcom/powervision/user/bean/UrnRegisterItemBean;

    const/16 v2, 0x3e9

    if-eqz v0, :cond_6

    .line 160
    invoke-virtual {v0}, Lcom/powervision/user/bean/UrnRegisterItemBean;->getRealRegisterNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->goInTo(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_4

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {p0, v2, v1}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;->goInTo(Landroid/app/Activity;ILjava/lang/String;)V

    .line 165
    :cond_8
    :goto_4
    sget v0, Lcom/powervision/user/R$id;->tv_user_activity_add_work:I

    if-ne v0, p1, :cond_9

    .line 166
    invoke-static {p0}, Lcom/powervision/user/ui/activity/UserRealNameIntroductionActivity;->goInTo(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public onClickData(Lcom/powervision/user/bean/UrnDeviceItemBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/powervision/user/bean/UrnDeviceItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/powervision/user/bean/UrnDeviceItemBean;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->workSaveBtnShow()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    .line 190
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTipDialog:Lcom/powervision/base/views/TipDialog;

    invoke-virtual {v0}, Lcom/powervision/base/views/TipDialog;->show()V

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->finish()V

    .line 197
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onTipCancel()V
    .locals 0

    .line 224
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->finish()V

    return-void
.end method

.method public onTipConfirm()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvDevice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvSn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    iget v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->intoType:I

    if-nez v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v4, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->umRnrSaveDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;

    iget v4, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->reEditID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/powervision/user/presenter/impl/UserRealNamePresenter;->reEditRnrSaveDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mFlDevice:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mFlSn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mFlRegisterNum:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mTvWork:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public urnDeleteSuccess()V
    .locals 0

    return-void
.end method

.method public urnDeviceSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnDeviceItemBean;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mUrnDeviceDialog:Lcom/powervision/user/views/UrnDeviceDialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->mUrnDeviceDialog:Lcom/powervision/user/views/UrnDeviceDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/user/views/UrnDeviceDialog;->workShowData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public urnFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public urnRegisterSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/user/bean/UrnRegisterItemBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public urnSaveSuccess()V
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddActivity;->finish()V

    return-void
.end method
