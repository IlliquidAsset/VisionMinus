.class public Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "VersionShowFragment.java"


# instance fields
.field private mBack:Landroid/widget/ImageView;

.field private mClose:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mVersionValue:Landroid/widget/TextView;

.field private sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 27
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_version_show_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->sharedPreferencesUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "AP03_ACTIVATION_HW_CODE"

    .line 41
    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->mVersionValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_title_tv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->mTitle:Landroid/widget/TextView;

    .line 33
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_back_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->mBack:Landroid/widget/ImageView;

    .line 34
    sget p1, Lcom/powervision/aircraft/R$id;->general_setting_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->mClose:Landroid/widget/ImageView;

    .line 35
    sget p1, Lcom/powervision/aircraft/R$id;->version_hw_value:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->mVersionValue:Landroid/widget/TextView;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 50
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;->mClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/VersionShowFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/VersionShowFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
