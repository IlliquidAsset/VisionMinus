.class public abstract Lcom/powervision/gcs/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_KILL_APP:Ljava/lang/String; = "com.kill.app.action"

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private clickLimit:Z

.field private isHiddenBackArrow:Z

.field private lastClickTime:J

.field public mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field protected mBackImage:Landroid/widget/ImageView;

.field public mContext:Landroid/content/Context;

.field protected mHomeTitle:Landroid/widget/TextView;

.field mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field mLocalBroadcastReceiver:Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;

.field protected mSubTitleImage:Landroid/widget/ImageView;

.field protected mSubTitleText:Landroid/widget/TextView;

.field protected mTopBar:Landroid/widget/RelativeLayout;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/powervision/gcs/base/BaseActivity;->clickLimit:Z

    .line 63
    iput-boolean v0, p0, Lcom/powervision/gcs/base/BaseActivity;->isHiddenBackArrow:Z

    return-void
.end method

.method private isFastDoubleClick()Z
    .locals 7

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    iget-wide v2, p0, Lcom/powervision/gcs/base/BaseActivity;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 356
    iput-wide v0, p0, Lcom/powervision/gcs/base/BaseActivity;->lastClickTime:J

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/base/BaseActivity;->clickLimit:Z

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private registerReceiver()V
    .locals 3

    .line 90
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.kill.app.action"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;-><init>(Lcom/powervision/gcs/base/BaseActivity;Lcom/powervision/gcs/base/BaseActivity$1;)V

    iput-object v1, p0, Lcom/powervision/gcs/base/BaseActivity;->mLocalBroadcastReceiver:Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;

    .line 95
    iget-object v2, p0, Lcom/powervision/gcs/base/BaseActivity;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/powervision/gcs/base/BaseActivity;->mLocalBroadcastReceiver:Lcom/powervision/gcs/base/BaseActivity$LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public checkDeviceHasNavigationBar()Z
    .locals 7

    .line 287
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 288
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 293
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 294
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "qemu.hw.mainkeys"

    aput-object v6, v5, v2

    .line 295
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    .line 296
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "0"

    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    move v0, v2

    :catch_0
    return v0
.end method

.method protected defaultFinish()V
    .locals 0

    .line 366
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 349
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    .line 328
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 329
    sget v0, Lcom/powervision/gcs/R$anim;->push_right_in:I

    sget v1, Lcom/powervision/gcs/R$anim;->push_right_out:I

    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getAppDetailSettingIntent()V
    .locals 4

    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 380
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 384
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    const-string v1, "android.intent.action.VIEW"

    .line 385
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected abstract getContentView()I
.end method

.method protected getIntentData(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected hideBackArrow()V
    .locals 1

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/powervision/gcs/base/BaseActivity;->isHiddenBackArrow:Z

    return-void
.end method

.method protected initSystemBar()V
    .locals 2

    const-string v0, "#FFFFFF"

    .line 116
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#bbbbbb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/powervision/gcs/base/BaseActivity;->initSystemBar(II)V

    return-void
.end method

.method protected initSystemBar(II)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, p2, v0}, Lcom/powervision/gcs/base/BaseActivity;->initSystemBar(IIF)V

    return-void
.end method

.method protected initSystemBar(IIF)V
    .locals 2

    .line 125
    invoke-static {}, Lcom/powervision/gcs/utils/SystemBarHelper;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/powervision/gcs/utils/SystemBarHelper;->isFlyme4Later()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/powervision/gcs/utils/SystemBarHelper;->tintStatusBar(Landroid/app/Activity;IF)V

    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/powervision/gcs/utils/SystemBarHelper;->setStatusBarDarkMode(Landroid/app/Activity;)V

    .line 127
    invoke-static {p0, p1, p3}, Lcom/powervision/gcs/utils/SystemBarHelper;->tintStatusBar(Landroid/app/Activity;IF)V

    :goto_1
    return-void
.end method

.method protected initToolbar()V
    .locals 2

    .line 160
    sget v0, Lcom/powervision/gcs/R$id;->top_bar:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mTopBar:Landroid/widget/RelativeLayout;

    .line 161
    sget v0, Lcom/powervision/gcs/R$id;->back_image:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mBackImage:Landroid/widget/ImageView;

    .line 162
    sget v0, Lcom/powervision/gcs/R$id;->home_title:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mHomeTitle:Landroid/widget/TextView;

    .line 163
    sget v0, Lcom/powervision/gcs/R$id;->sub_title_text:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/powervision/gcs/R$id;->sub_title_image:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleImage:Landroid/widget/ImageView;

    .line 170
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mTopBar:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-boolean v0, p0, Lcom/powervision/gcs/base/BaseActivity;->isHiddenBackArrow:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mBackImage:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->back_icon:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mBackImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/base/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/base/BaseActivity$1;-><init>(Lcom/powervision/gcs/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected abstract initViews(Landroid/os/Bundle;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->getIntentData(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->getContentView()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->rootView:Landroid/view/View;

    .line 77
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 79
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 80
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->initToolbar()V

    .line 81
    iput-object p0, p0, Lcom/powervision/gcs/base/BaseActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 84
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->initViews(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/powervision/gcs/base/BaseActivity;->setListener()V

    .line 86
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;->registerReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 371
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "lzqonDes"

    const-string v1, "0000 "

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;->unregisterReceiver()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 111
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 112
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 106
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method protected setBackImage(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mBackImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mBackImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mBackImage:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseActivity;->mBackImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setClickLimit(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/powervision/gcs/base/BaseActivity;->clickLimit:Z

    return-void
.end method

.method protected setHomeTitle(I)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mHomeTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mHomeTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setHomeTitle(Ljava/lang/String;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mHomeTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mHomeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setSubTitle(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setSubTitle(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setSubTitleImage(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/powervision/base/utils/ObjectUtils;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleImage:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseActivity;->mSubTitleImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected startActiivty(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected startActivity(Landroid/content/Intent;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/powervision/gcs/base/BaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    sget p1, Lcom/powervision/gcs/R$anim;->push_left_in:I

    sget p2, Lcom/powervision/gcs/R$anim;->push_left_out:I

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected startActivity(Landroid/content/Intent;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 239
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 241
    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 204
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const p2, 0x10a0001

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    if-eqz p3, :cond_1

    .line 223
    sget p1, Lcom/powervision/gcs/R$anim;->push_left_in:I

    sget p2, Lcom/powervision/gcs/R$anim;->push_left_out:I

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/base/BaseActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method protected startActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 321
    sget p1, Lcom/powervision/gcs/R$anim;->push_left_in:I

    sget p2, Lcom/powervision/gcs/R$anim;->push_left_out:I

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected startActivityForResult(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, v0, p2}, Lcom/powervision/gcs/base/BaseActivity;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method protected startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/powervision/gcs/base/BaseActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/base/BaseActivity;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, v0, p3}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
