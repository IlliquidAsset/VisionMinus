.class public Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ShipMediaActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# static fields
.field public static final ACTION_CLOSE_MEDIA_PAGE:Ljava/lang/String; = "action_close_media_page"

.field public static final INTENT_PARAM:Ljava/lang/String; = "intent_param"

.field private static final TAG:Ljava/lang/String; = "ShipMediaActivity"


# instance fields
.field private adapter:Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;

.field private hasGetCount:Z

.field milstPb:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0xea7
    .end annotation
.end field

.field private pagePosition:I

.field private pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field private retryTimes:I

.field private simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10b5
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1134
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11f0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    .line 78
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->retryTimes:I

    .line 217
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->hasGetCount:Z

    return p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->hasGetCount:Z

    return p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->retryTimes:I

    return p0
.end method

.method static synthetic access$108(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->retryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->retryTimes:I

    return v0
.end method

.method private closeMediaPage()V
    .locals 3

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_param"

    const-string v2, "action_close_media_page"

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initAdapter()V
    .locals 2

    .line 186
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->adapter:Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;

    .line 187
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private removeAllUnfinishedTask()V
    .locals 5

    .line 195
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okserver/OkDownload;->getTaskMap()Ljava/util/Map;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okserver/download/DownloadTask;

    .line 198
    iget-object v2, v1, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v2, v2, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    .line 199
    iget-object v2, v1, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, v1, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 201
    invoke-virtual {v1, v4}, Lcom/lzy/okserver/download/DownloadTask;->remove(Z)Lcom/lzy/okserver/download/DownloadTask;

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, v1, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 203
    invoke-virtual {v1, v4}, Lcom/lzy/okserver/download/DownloadTask;->remove(Z)Lcom/lzy/okserver/download/DownloadTask;

    goto :goto_0

    .line 209
    :cond_2
    iget-object v2, v1, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    .line 210
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {v1, v4}, Lcom/lzy/okserver/download/DownloadTask;->remove(Z)Lcom/lzy/okserver/download/DownloadTask;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private selectAllFile()V
    .locals 2

    .line 146
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->pagePosition:I

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->adapter:Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    .line 148
    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->jumpToMediaManager()V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->adapter:Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/adapter/ship/ShipMediaAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    .line 151
    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->jumpToMediaManager()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 84
    sget v0, Lcom/powervision/gcs/R$layout;->activity_ship_media:I

    return v0
.end method

.method public getFileCountHttp()V
    .locals 2

    .line 182
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->getFileCount()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method protected initToolbar()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->initToolbar()V

    const-string v0, ""

    .line 120
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 122
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMediaActivity$b9iTK1MLA6ac6YHnU4nbAIiEeSA;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipMediaActivity$b9iTK1MLA6ac6YHnU4nbAIiEeSA;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->initToolbar()V

    .line 92
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->getFileCountHttp()V

    .line 95
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->removeAllUnfinishedTask()V

    .line 96
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setLowSpeed()V

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->initAdapter()V

    return-void
.end method

.method public synthetic lambda$initToolbar$0$ShipMediaActivity(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    .line 158
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setLowSpeed()V

    .line 160
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 161
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->clear()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "intent_param"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_close_media_page"

    .line 111
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->finish()V

    :cond_0
    return-void
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
    .locals 0

    .line 173
    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->pagePosition:I

    return-void
.end method

.method public pvw4ConnectStatusEvent(Lcom/powervision/base/event/PVW4ConnectStatusEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 255
    iget p1, p1, Lcom/powervision/base/event/PVW4ConnectStatusEvent;->mConnectStatus:I

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->closeMediaPage()V

    :cond_0
    return-void
.end method

.method public remotePhotoRecordEvent(Lcom/powervision/gcs/model/event/RemotePhotoRecordEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->closeMediaPage()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->setListener()V

    return-void
.end method

.method public tv_select()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x11a0
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->getTotalCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->selectAllFile()V

    goto :goto_0

    .line 135
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->pagePosition:I

    if-nez v0, :cond_1

    .line 136
    sget v0, Lcom/powervision/gcs/R$string;->media_img_list:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    goto :goto_0

    .line 138
    :cond_1
    sget v0, Lcom/powervision/gcs/R$string;->media_video_list:I

    invoke-static {v0}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    :goto_0
    return-void
.end method
