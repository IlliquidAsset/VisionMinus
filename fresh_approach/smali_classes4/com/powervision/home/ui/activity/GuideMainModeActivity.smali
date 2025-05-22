.class public Lcom/powervision/home/ui/activity/GuideMainModeActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideMainModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# instance fields
.field private mAircraftModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDvModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTopCloseView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initModeViews()V
    .locals 1

    .line 68
    sget v0, Lcom/powervision/home/R$id;->gudie_aircraft_mode:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->mAircraftModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    sget v0, Lcom/powervision/home/R$id;->gudie_dv_mode:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->mDvModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private onDeviceConnect()V
    .locals 1

    .line 107
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideMainModeActivity$bSE54Ny9qlxrH_7U5LtPmRQY7zs;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideMainModeActivity$bSE54Ny9qlxrH_7U5LtPmRQY7zs;-><init>(Lcom/powervision/home/ui/activity/GuideMainModeActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setModeListener()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->mAircraftModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->mDvModeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTopViewListener()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->mTopCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 36
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->noActionBar(Landroid/app/Activity;)V

    .line 37
    sget v0, Lcom/powervision/home/R$layout;->home_guide_main_mode_select_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    sget p1, Lcom/powervision/home/R$id;->gudie_top_close_iv:I

    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->mTopCloseView:Landroid/widget/ImageView;

    .line 43
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->initModeViews()V

    return-void
.end method

.method public synthetic lambda$onDeviceConnect$0$GuideMainModeActivity()V
    .locals 2

    .line 108
    const-class v0, Lcom/powervision/home/ui/activity/GuideMainModeActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->finish()V

    .line 110
    sget v0, Lcom/powervision/home/R$anim;->anim_top_in:I

    sget v1, Lcom/powervision/home/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, v0, v1}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public lockDevice()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xf7
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2.2 lockDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 80
    sget v0, Lcom/powervision/home/R$id;->gudie_aircraft_mode:I

    if-ne p1, v0, :cond_2

    .line 83
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result p1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    .line 84
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    :goto_1
    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 90
    :cond_2
    sget v0, Lcom/powervision/home/R$id;->gudie_dv_mode:I

    if-ne p1, v0, :cond_3

    .line 91
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/powervision/home/ui/activity/GuideDvConnectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 93
    :cond_3
    sget v0, Lcom/powervision/home/R$id;->gudie_top_close_iv:I

    if-ne p1, v0, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->onBackPressed()V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 126
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 128
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 133
    const-class p1, Lcom/powervision/home/ui/activity/GuideMainModeActivity;

    invoke-static {p1, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->onDeviceConnect()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 118
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->finish()V

    .line 120
    sget v0, Lcom/powervision/home/R$anim;->anim_top_in:I

    sget v1, Lcom/powervision/home/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, v0, v1}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 49
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->setTopViewListener()V

    .line 50
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideMainModeActivity;->setModeListener()V

    .line 51
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    return-void
.end method
