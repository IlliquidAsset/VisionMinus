.class public Lcom/lewis/edit/ui/activity/InputTitleActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "InputTitleActivity.java"


# static fields
.field public static final INPUT_RESULT_CANCEL:Ljava/lang/String; = "cancel"

.field public static final INPUT_RESULT_CANCEL_VALUE:I = -0x1

.field public static final INPUT_RESULT_POSITION:Ljava/lang/String; = "position"

.field public static final INPUT_RESULT_SAME_CLICK:Ljava/lang/String; = "sameClick"

.field public static final INPUT_RESULT_SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final INPUT_RESULT_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mPosition:I

.field private mSubTitle:Landroid/widget/EditText;

.field private mTitle:Landroid/widget/EditText;

.field private mTitleNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mPosition:I

    const/16 v0, 0xc

    .line 35
    iput v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitleNum:I

    return-void
.end method

.method private clearEditData()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitle:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mSubTitle:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 39
    sget v0, Lcom/lewis/edit/R$layout;->edit_activity_input_title:I

    return v0
.end method

.method protected initData()V
    .locals 6

    .line 61
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subtitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "position"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mPosition:I

    .line 65
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sameClick"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitle:Landroid/widget/EditText;

    iget v5, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitleNum:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 72
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mPosition:I

    if-ne v0, v3, :cond_1

    .line 73
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mSubTitle:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mSubTitle:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mSubTitle:Landroid/widget/EditText;

    iget v1, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mPosition:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    .line 44
    sget p1, Lcom/lewis/edit/R$id;->input_title_toolbar:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 45
    sget v0, Lcom/lewis/edit/R$id;->edit_title:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitle:Landroid/widget/EditText;

    .line 46
    sget v0, Lcom/lewis/edit/R$id;->edit_sub_title:I

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mSubTitle:Landroid/widget/EditText;

    const-string v0, ""

    .line 47
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 49
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 55
    invoke-static {}, Lcom/powervision/base/utils/DensityUtils;->screenWidth()I

    move-result p1

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitleNum:I

    .line 56
    iget-object p1, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitle:Landroid/widget/EditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitleNum:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$menu;->edit_input_title_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    iget v1, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mPosition:I

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x102002c

    if-ne v1, v3, :cond_0

    const-string v1, "cancel"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v3, Lcom/lewis/edit/R$id;->confirm:I

    if-ne v1, v3, :cond_3

    .line 98
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v3, p0, Lcom/lewis/edit/ui/activity/InputTitleActivity;->mSubTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    move-object v1, v5

    .line 103
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v5

    :cond_2
    const-string v4, "title"

    .line 106
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "subtitle"

    .line 107
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :cond_3
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->clearEditData()V

    .line 111
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/InputTitleActivity;->finish()V

    .line 112
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
