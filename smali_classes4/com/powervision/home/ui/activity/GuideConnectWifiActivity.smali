.class public Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "GuideConnectWifiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/home/presenter/impl/HomePresenter;",
        "Lcom/powervision/home/model/impl/HomeModel;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;"
    }
.end annotation


# instance fields
.field private mTopCloseView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initTopViews()V
    .locals 1

    .line 42
    sget v0, Lcom/powervision/home/R$id;->gudie_top_close_iv:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->mTopCloseView:Landroid/widget/ImageView;

    return-void
.end method

.method private onDeviceConnect()V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/powervision/base/constant/Constant;->ACTIVATION_FLAG:Z

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideConnectWifiActivity$8nhglSl0PQCNE3AMpXH_CFCkWKM;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$GuideConnectWifiActivity$8nhglSl0PQCNE3AMpXH_CFCkWKM;-><init>(Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 27
    sget v0, Lcom/powervision/home/R$layout;->home_guide_dv_mode_connectwifi_layout:I

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->initTopViews()V

    return-void
.end method

.method public synthetic lambda$onDeviceConnect$0$GuideConnectWifiActivity()V
    .locals 2

    .line 60
    const-class v0, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;

    invoke-static {v0, p0}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->finish()V

    .line 64
    sget v0, Lcom/powervision/home/R$anim;->anim_top_in:I

    sget v1, Lcom/powervision/home/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, v0, v1}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 48
    sget v0, Lcom/powervision/home/R$id;->gudie_top_back_iv:I

    if-ne p1, v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_0
    sget v0, Lcom/powervision/home/R$id;->gudie_top_close_iv:I

    if-ne p1, v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->removeConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    .line 72
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceConnectionChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->onDeviceConnect()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectWifiActivity;->mTopCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-static {}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->getAp03ConnectionInstance()Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager;->addConnectionChangeListener(Lcom/powervision/gcs/manager/Ap03ConnectionStatusManager$Ap03DeviceConnectionChangeListener;)V

    return-void
.end method
