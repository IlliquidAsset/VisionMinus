.class public Lcom/lewis/share/activity/ShareActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/share/activity/ShareActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final VIDEO_FRAME_TIME_NUM:I = 0x1e8480


# instance fields
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mImagePath:Ljava/lang/String;

.field private mIndicator:Lcom/powervision/base/views/DotIndicator;

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mShowImage:Landroid/widget/ImageView;

.field private mVideoPath:Ljava/lang/String;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lewis/share/activity/ShareActivity;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/lewis/share/activity/ShareActivity;->mFragments:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 53
    sget v0, Lcom/lewis/share/R$layout;->media_activity_share:I

    return v0
.end method

.method protected initData()V
    .locals 5

    .line 72
    invoke-virtual {p0}, Lcom/lewis/share/activity/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "image_path"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mImagePath:Ljava/lang/String;

    const-string v1, "video_path"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    :cond_0
    const-string v0, "share"

    .line 77
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/share/activity/ShareActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nvideo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "There is no image"

    .line 80
    invoke-static {v1, v0}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const-wide/32 v3, 0x1e8480

    .line 82
    invoke-static {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->frameOf(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mShowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mShowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mPlayIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mIndicator:Lcom/powervision/base/views/DotIndicator;

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v0, v2}, Lcom/powervision/base/views/DotIndicator;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mFragments:Ljava/util/List;

    .line 94
    invoke-static {}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->newInstance()Lcom/lewis/share/fragment/SharePlatformFragmentOne;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->setSharePath(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->newInstance()Lcom/lewis/share/fragment/SharePlatformFragmentTwo;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->setSharePath(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 101
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mFragments:Ljava/util/List;

    .line 102
    invoke-static {}, Lcom/lewis/share/fragment/SharePlatformFragmentThree;->newInstance()Lcom/lewis/share/fragment/SharePlatformFragmentThree;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lewis/share/fragment/SharePlatformFragmentThree;->setSharePath(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_3
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/lewis/share/activity/ShareActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/lewis/share/activity/ShareActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lewis/share/activity/ShareActivity$ViewPagerAdapter;-><init>(Lcom/lewis/share/activity/ShareActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    sget p1, Lcom/lewis/share/R$id;->share_toolbar:I

    invoke-virtual {p0, p1}, Lcom/lewis/share/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 59
    invoke-virtual {p0, p1}, Lcom/lewis/share/activity/ShareActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/lewis/share/activity/ShareActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    :cond_0
    sget p1, Lcom/lewis/share/R$id;->image_preview:I

    invoke-virtual {p0, p1}, Lcom/lewis/share/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/share/activity/ShareActivity;->mShowImage:Landroid/widget/ImageView;

    .line 65
    sget p1, Lcom/lewis/share/R$id;->image_play:I

    invoke-virtual {p0, p1}, Lcom/lewis/share/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lewis/share/activity/ShareActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 66
    sget p1, Lcom/lewis/share/R$id;->platform_container:I

    invoke-virtual {p0, p1}, Lcom/lewis/share/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/lewis/share/activity/ShareActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 67
    sget p1, Lcom/lewis/share/R$id;->dot_indicator:I

    invoke-virtual {p0, p1}, Lcom/lewis/share/activity/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/DotIndicator;

    iput-object p1, p0, Lcom/lewis/share/activity/ShareActivity;->mIndicator:Lcom/powervision/base/views/DotIndicator;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/lewis/share/util/PlayUtils;->startPlayByIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/lewis/share/activity/ShareActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mIndicator:Lcom/powervision/base/views/DotIndicator;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/DotIndicator;->setSelected(I)V

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mShowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mPlayIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lewis/share/activity/ShareActivity;->mVideoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/lewis/share/activity/ShareActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
