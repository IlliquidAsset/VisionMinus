.class public Lcom/lewis/edit/ui/activity/EditFileSelectActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "EditFileSelectActivity.java"


# instance fields
.field private mBottom:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private videoSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->videoSelectList:Ljava/util/List;

    return-void
.end method

.method private manageEdit()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->videoSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v4, Lcom/lewis/edit/R$string;->APP_function_5:I

    invoke-virtual {p0, v4}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->videoSelectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    sget v1, Lcom/lewis/edit/R$color;->white:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    sget v1, Lcom/lewis/edit/R$color;->color_3A75F2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    sget v2, Lcom/lewis/edit/R$string;->App_MediaLib_19:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    sget v2, Lcom/lewis/edit/R$color;->light_gray_color:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    sget v2, Lcom/lewis/edit/R$color;->color_f0:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 44
    sget v0, Lcom/lewis/edit/R$layout;->edit_file_select_activity:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 57
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/lewis/edit/R$id;->container:I

    .line 62
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v2

    const-string v3, "/media/freeEditVideoListFragment"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 50
    sget p1, Lcom/lewis/edit/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 51
    sget p1, Lcom/lewis/edit/R$id;->tv_install:I

    invoke-virtual {p0, p1}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$setListener$0$EditFileSelectActivity(Landroid/view/View;)V
    .locals 2

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->videoSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/MediaModel;

    .line 72
    invoke-virtual {v1}, Lcom/powervision/base/model/MediaModel;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "EDIT_URL_LIST"

    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 114
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    .line 115
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->setResult(I)V

    .line 85
    invoke-virtual {p0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->finish()V

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public selectVideo(Lcom/powervision/base/model/SelectModel;)V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xe4
    .end annotation

    .line 92
    iget-object p1, p1, Lcom/powervision/base/model/SelectModel;->infos:Ljava/util/List;

    iput-object p1, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->videoSelectList:Ljava/util/List;

    .line 94
    invoke-direct {p0}, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->manageEdit()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/EditFileSelectActivity;->mBottom:Landroid/widget/TextView;

    new-instance v1, Lcom/lewis/edit/ui/activity/-$$Lambda$EditFileSelectActivity$zWqu8DWqzJjQFJjczGmWDaZVCG8;

    invoke-direct {v1, p0}, Lcom/lewis/edit/ui/activity/-$$Lambda$EditFileSelectActivity$zWqu8DWqzJjQFJjczGmWDaZVCG8;-><init>(Lcom/lewis/edit/ui/activity/EditFileSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
