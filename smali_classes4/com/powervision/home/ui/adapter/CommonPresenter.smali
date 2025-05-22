.class public Lcom/powervision/home/ui/adapter/CommonPresenter;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;


# static fields
.field static app_state:I


# instance fields
.field appTips:Landroidx/appcompat/app/AlertDialog;

.field checkPermissionTips:Landroidx/appcompat/app/AlertDialog;

.field closeBt:Landroid/view/View;

.field downloadAppDialog:Lcom/powervision/home/view/DownloadDialog;

.field forceApp:Z

.field private loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

.field mIntoBt:Landroid/widget/TextView;

.field private mSideBarContent:Landroid/widget/TextView;

.field private mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field object:Ljava/lang/Object;

.field rootView:Landroid/view/View;

.field stateLock:Ljava/lang/Object;

.field tipsDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    .line 410
    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    .line 468
    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->appTips:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    .line 469
    iput-boolean v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->forceApp:Z

    .line 734
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    .line 1135
    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->checkPermissionTips:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/adapter/CommonPresenter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->toSuccessActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/adapter/CommonPresenter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->toFailedActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/home/ui/adapter/CommonPresenter;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/home/ui/adapter/CommonPresenter;Lcom/powervision/base/views/LoadingProgressBar;)Lcom/powervision/base/views/LoadingProgressBar;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarContent:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkPermission(Landroid/content/Context;)V
    .locals 2

    const-string p1, "lzqApp"

    const-string v0, "checkPermission \u672a\u77e5\u5b89\u88c5"

    .line 1119
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1122
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "8.0\u624b\u673a\u5df2\u7ecf\u62e5\u6709\u5b89\u88c5\u672a\u77e5\u6765\u6e90\u5e94\u7528\u7684\u6743\u9650\uff0c\u76f4\u63a5\u5b89\u88c5\uff01"

    .line 1124
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "8.0 \u6ca1\u6709\u6743\u9650"

    .line 1127
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsNeedInstallPermissionDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method private toFailedActivity()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    iget-object v2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    const-class v3, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v2, Lcom/powervision/base/base/BaseFragment;

    invoke-virtual {v2}, Lcom/powervision/base/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v1, Lcom/powervision/base/base/BaseFragment;

    invoke-virtual {v1, v0}, Lcom/powervision/base/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private toSuccessActivity()V
    .locals 5

    const-string v0, "lzqFirm"

    const-string v1, "\u5347\u7ea7\u6210\u529f\u8df3\u8f6c\u5230success\u9875\u9762"

    .line 135
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    iget-object v3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    const-class v4, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    iget-object v3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v3, Lcom/powervision/base/base/BaseFragment;

    invoke-virtual {v3}, Lcom/powervision/base/base/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcn/powervision/upgrade/activity/FirmWareUpgradeFinishActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPGRADE_RES:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v1, Lcom/powervision/base/base/BaseFragment;

    invoke-virtual {v1, v0}, Lcom/powervision/base/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateBideBarStatus(I[B)V
    .locals 2

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ======= updateBideBarStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqFirm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/home/ui/adapter/CommonPresenter$12;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;[BI)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public ap03Connected()V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 776
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 777
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ap03Disconnected()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 784
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 785
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canNotUpgradeByArmStatus()V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqFirm"

    const-string v2, " \u89e3\u9501 canNotUpgradeByArmStatus updat_packet[5] = 1"

    .line 729
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x23

    .line 730
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 731
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canUpgradeByArmStatus()V
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqFirm"

    const-string v2, " \u52a0\u9501 canUpgradeByArmStatus updat_packet[5] = 0;"

    .line 720
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22

    .line 722
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 723
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkDownLoadOrUpgrade(Z[B)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->loadingProgressBar:Lcom/powervision/base/views/LoadingProgressBar;

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->isUSB2_CONFIRM()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->DEVICE_CONNECTION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsTheDv03()V

    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->loading()V

    .line 179
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/home/ui/adapter/CommonPresenter$4;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;[BZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public download(ZI)V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " \u8fdb\u5165detail\u524d \u8df3\u8f6c\u4e2d  down"

    .line 268
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->loading()V

    .line 270
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/home/ui/adapter/CommonPresenter$7;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;IZ)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->checkAllWithNetWork(Lcn/powervision/upgrade/manager/NewFirmWareManager$AskNetListener;I)V

    return-void
.end method

.method public downloadFailed()V
    .locals 0

    return-void
.end method

.method public hideDl01Update()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:hideDl01Update"

    .line 853
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x8

    .line 856
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 857
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideDownAppDownLoadDialog()V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->downloadAppDialog:Lcom/powervision/home/view/DownloadDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/home/view/DownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->downloadAppDialog:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {v0}, Lcom/powervision/home/view/DownloadDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideDownLoad()V
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqFirm"

    const-string v2, "=======hideDownLoad"

    .line 704
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 706
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 707
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideLoading()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLoading()V

    return-void
.end method

.method public hideMcuUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:hideMcuUpdate"

    .line 826
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x5

    .line 829
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 830
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hidebodyupdate()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 751
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 752
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init_Activity(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 104
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    .line 105
    sget v0, Lcom/powervision/home/R$id;->upgrade_sidebar_root_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 106
    sget v0, Lcom/powervision/home/R$id;->upgrade_sidebar_content:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarContent:Landroid/widget/TextView;

    .line 107
    iput-object p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    .line 108
    sget p2, Lcom/powervision/home/R$id;->conn_home_into_device:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mIntoBt:Landroid/widget/TextView;

    .line 111
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->addUpgradeListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 113
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_app_check()V

    .line 115
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/home/ui/adapter/CommonPresenter$3;

    invoke-direct {p2, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$3;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {p1, p2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->setCommonCallBack(Lcn/powervision/upgrade/manager/CommonCallBack;)V

    return-void
.end method

.method public init_Fragemnt(Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    const-string p1, "lzqView"

    const-string v0, "init_Fragemnt"

    .line 70
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget p1, Lcom/powervision/home/R$id;->upgrade_sidebar_root_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    sget p1, Lcom/powervision/home/R$id;->upgrade_sidebar_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarContent:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/powervision/home/R$id;->upgrade_sidebar_close:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    .line 74
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->addUpgradeListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 76
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_app_check()V

    .line 78
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/home/ui/adapter/CommonPresenter$1;

    invoke-direct {p2, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$1;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {p1, p2}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->setCommonCallBack(Lcn/powervision/upgrade/manager/CommonCallBack;)V

    .line 95
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    new-instance p2, Lcom/powervision/home/ui/adapter/CommonPresenter$2;

    invoke-direct {p2, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$2;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isBootLoader()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqFirm"

    const-string v2, "isBootLoader updat_packet[4] = 1"

    .line 791
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x21

    .line 793
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 794
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNotBootLoader()V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "lzqFirm"

    const-string v2, "isNotBootLoader updat_packet[4] = 0"

    .line 800
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x21

    .line 802
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 803
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loading()V
    .locals 2

    const-string v0, "lzqLoading"

    const-string v1, "loading"

    .line 242
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$5;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$5;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public lockDevice(Z)V
    .locals 3

    const-string v0, "lzqFirm"

    const-string v1, "2.2 lockDevice out"

    .line 656
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 658
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mIntoBt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$color;->gray_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-eqz p1, :cond_0

    .line 661
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mIntoBt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/String;

    const-string v1, "lock_app"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mIntoBt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/String;

    const-string v1, "lock"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "2.2 lockDevice else send LOCK_DEVICE"

    .line 675
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xf7

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :goto_0
    return-void
.end method

.method public notify_app_check()V
    .locals 3

    .line 453
    sget v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->app_state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "lzqFirm"

    const-string v2, "1.3 notify_check \u5f3a\u5236\u5347\u7ea7APP"

    .line 455
    invoke-static {v0, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->lockDevice(Z)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsForceApp(Z)V

    .line 459
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "ota_force_update"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    sget v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->app_state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsForceApp(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notify_check(I)V
    .locals 9

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify_check condition who:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqFirm"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify_check condition conent:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v2, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->isBootloader()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 943
    :goto_0
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-gtz v3, :cond_1

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    aget-byte v3, v3, v5

    if-lez v3, :cond_4

    :cond_1
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    aget-byte v3, v3, v4

    if-ne v3, v2, :cond_4

    .line 945
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    aget-byte v3, v3, v2

    if-eq v3, v5, :cond_3

    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    aget-byte v3, v3, v5

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const/4 v6, 0x0

    .line 950
    :goto_3
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v7, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v8, 0x4

    aget-byte v7, v7, v8

    if-ne v7, v2, :cond_5

    const/4 v3, 0x1

    const/4 v6, 0x1

    .line 955
    :cond_5
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v7, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    aget-byte v7, v7, v1

    if-ne v7, v5, :cond_6

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_4

    .line 958
    :cond_6
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v7, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    aget-byte v1, v7, v1

    if-ne v1, v2, :cond_7

    const/4 v3, 0x1

    .line 962
    :cond_7
    :goto_4
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-boolean v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->needDownload:Z

    const/4 v7, -0x1

    if-eqz v1, :cond_c

    if-eqz v3, :cond_9

    if-nez p1, :cond_9

    if-eqz v6, :cond_8

    const/4 v4, 0x2

    goto :goto_5

    :cond_8
    const/4 v4, 0x1

    .line 969
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify_check condition:\u9700\u8981\u4e0b\u8f7d \u9700\u8981\u66f4\u65b0 \u8bbe\u5907\u8fde\u63a5\u4e86 hasForce:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    const-string p1, "notify_check condition:\u9700\u8981\u4e0b\u8f7d \u9700\u8981\u66f4\u65b0 \u8bbe\u5907\u672a\u8fde\u63a5"

    .line 972
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    if-nez v3, :cond_b

    if-nez p1, :cond_b

    const-string p1, "notify_check condition:\u9700\u8981\u4e0b\u8f7d \u4e0d\u9700\u8981\u66f4\u65b0 \u8bbe\u5907\u5df2\u8fde\u63a5"

    .line 976
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    const-string p1, "notify_check condition:\u9700\u8981\u4e0b\u8f7d \u4e0d\u9700\u8981\u66f4\u65b0 \u672a\u8fde\u63a5\u8bbe\u5907"

    .line 980
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    if-eqz v3, :cond_e

    if-nez p1, :cond_e

    if-eqz v6, :cond_d

    const/4 v4, 0x2

    goto :goto_6

    :cond_d
    const/4 v4, 0x1

    .line 990
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify_check condition:\u4e0d\u9700\u8981\u4e0b\u8f7d \u9700\u8981\u66f4\u65b0 \u8bbe\u5907\u8fde\u63a5\u4e86 hasForce:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    if-eqz v3, :cond_f

    if-eqz p1, :cond_f

    const-string p1, "notify_check condition:\u4e0d\u9700\u8981\u4e0b\u8f7d \u9700\u8981\u66f4\u65b0 \u8bbe\u5907\u672a\u8fde\u63a5"

    .line 993
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    if-nez v3, :cond_10

    if-nez p1, :cond_10

    const-string p1, "notify_check condition:\u4e0d\u9700\u8981\u4e0b\u8f7d \u4e0d\u9700\u8981\u66f4\u65b0 \u8bbe\u5907\u5df2\u8fde\u63a5"

    .line 997
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    const-string p1, "notify_check condition:\u4e0d\u9700\u8981\u4e0b\u8f7d \u4e0d\u9700\u8981\u66f4\u65b0 \u672a\u8fde\u63a5\u8bbe\u5907"

    .line 1001
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    const/4 v4, -0x1

    .line 1005
    :goto_8
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    const/4 v1, 0x5

    aget-byte p1, p1, v1

    if-ne p1, v2, :cond_11

    const-string p1, "\u89e3\u9501 \u7f6e\u4e3aupdat_packet[5] -1"

    .line 1006
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    move v7, v4

    .line 1009
    :goto_9
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    invoke-direct {p0, v7, p1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->updateBideBarStatus(I[B)V

    return-void
.end method

.method public notify_state()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:notify_state"

    .line 766
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x65

    .line 768
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 769
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1182
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->removeUpgradListener(Lcn/powervision/upgrade/manager/NewFirmWareManager$UpgradeListener;)V

    return-void
.end method

.method public openTheInterNet()V
    .locals 0

    .line 713
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLoading()V

    .line 714
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsInternet()V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:reset"

    .line 757
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x64

    .line 760
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 761
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showBodyForceUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "showFirmwareForceDownLoad"

    .line 903
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xd

    .line 906
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 907
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showBodyUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:showBodyUpdate"

    .line 738
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 742
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 743
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showDl01ForceUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:showDl01ForceUpdate"

    .line 844
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x7

    .line 847
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 848
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showDl01Update()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:showDl01Update"

    .line 835
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x6

    .line 838
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 839
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showDownAppDialog()V
    .locals 4

    const-string v0, "lzqApp"

    const-string v1, "showDownAppDialog"

    .line 623
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->downloadAppDialog:Lcom/powervision/home/view/DownloadDialog;

    if-nez v1, :cond_0

    .line 625
    new-instance v1, Lcom/powervision/home/view/DownloadDialog;

    iget-object v2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/powervision/home/ui/adapter/CommonPresenter$11;

    invoke-direct {v3, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$11;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-direct {v1, v2, v3}, Lcom/powervision/home/view/DownloadDialog;-><init>(Landroid/content/Context;Lcn/powervision/upgrade/manager/CommonCallBack;)V

    iput-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->downloadAppDialog:Lcom/powervision/home/view/DownloadDialog;

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->downloadAppDialog:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {v1}, Lcom/powervision/home/view/DownloadDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->downloadAppDialog:Lcom/powervision/home/view/DownloadDialog;

    invoke-virtual {v1}, Lcom/powervision/home/view/DownloadDialog;->show()V

    const-string v1, "showDownAppDialog show"

    .line 645
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showDownloadApp()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 896
    :try_start_0
    sput v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->app_state:I

    .line 897
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_app_check()V

    .line 898
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFirmwareDownLoad()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, " ======= showFirmwareDownLoad"

    .line 864
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x9

    .line 867
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 868
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFirmwareForceDownLoad()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======showFirmwareForceDownLoad"

    .line 873
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xa

    .line 876
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 877
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showForceApp()V
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 888
    :try_start_0
    sput v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->app_state:I

    .line 889
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_app_check()V

    .line 890
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showLoading()V
    .locals 0

    return-void
.end method

.method public showMcuForceUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:showMcuForceUpdate"

    .line 817
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    .line 820
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 821
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showMcuUpdate()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "=======HomeFragment:showMcuUpdate"

    .line 808
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 811
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->notify_check(I)V

    .line 812
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startDownLoadApp()V
    .locals 0

    return-void
.end method

.method public tipsForceApp(Z)V
    .locals 2

    .line 472
    iput-boolean p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->forceApp:Z

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tipsForceApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqView"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lzqApp"

    const-string v1, "tipsForceApp activity"

    .line 474
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$10;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/adapter/CommonPresenter$10;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;Z)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tipsInternet()V
    .locals 2

    const-string v0, "lzqFirm"

    const-string v1, "tipsInterNet"

    .line 413
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->tipsDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$9;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$9;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tipsNeedInstallPermissionDialog()V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->checkPermissionTips:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 1142
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9700\u8981\u5b89\u88c5\u6743\u9650 \u5b89\u88c5APP"

    .line 1144
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1146
    sget v1, Lcn/powervision/upgrade/R$string;->AP03_GeneralSetting_11:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1147
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1148
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$string;->AP03_TakeoffAndlanding_18:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/powervision/home/ui/adapter/CommonPresenter$13;

    invoke-direct {v2, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$13;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1155
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->checkPermissionTips:Landroidx/appcompat/app/AlertDialog;

    .line 1156
    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$14;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$14;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1172
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->checkPermissionTips:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public tipsTheDv03()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$8;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$8;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toDetailActivity(IIILjava/lang/String;JZ)V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/fragment/app/Fragment;

    const-string v1, "lzqFirm"

    const-string v2, "JUMP"

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DETAIL_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SIZE:Ljava/lang/String;

    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DOWNLOAD_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->RELEASE_NOTE:Ljava/lang/String;

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {v0, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "startActivity download fragment"

    .line 374
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    const-class v4, Lcn/powervision/upgrade/activity/FirmWareDetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    sget-object v3, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DETAIL_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->SIZE:Ljava/lang/String;

    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 380
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->DOWNLOAD_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->UPDATE_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    sget-object p1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->RELEASE_NOTE:Ljava/lang/String;

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {v0, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "startActivity download activiy"

    .line 384
    invoke-static {v1, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public unLoading()V
    .locals 2

    const-string v0, "lzqLoading"

    const-string v1, "unloading"

    .line 255
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mSideBarRootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$6;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$6;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unLockDevice()V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->object:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mIntoBt:Landroid/widget/TextView;

    sget v1, Lcom/powervision/home/R$drawable;->home_selector_connect_into_device:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 687
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter;->mIntoBt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/String;

    const-string v2, "unlock"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 694
    :cond_0
    sget v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->app_state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 695
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf8

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public update(I)V
    .locals 11

    .line 300
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->loading()V

    .line 302
    invoke-static {}, Lcn/powervision/upgrade/manager/ReleaseNoteUtils;->readReleaseNote_string()Ljava/lang/String;

    move-result-object v4

    const-string p1, "lzqFirm"

    const-string v0, "2.2 \u8fdb\u5165detail\u524d"

    .line 306
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareDl01_LocalWithDevice()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_LOCAL_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/DL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    invoke-static {v3}, Lcn/powervision/upgrade/FileUtil;->getTotalSizeOfFilesInDir(Ljava/io/File;)J

    move-result-wide v5

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2.2 size_dl01:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v1, v5

    .line 316
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2.2 b_dl01:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->compareMcu_LocalWitchDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcn/powervision/upgrade/manager/NewFirmWareManager;->AP03RC_LOCAL_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/RC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 321
    invoke-static {v5}, Lcn/powervision/upgrade/FileUtil;->getTotalSizeOfFilesInDir(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2.2 size_Mcu:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.2 b_mcu:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v0, :cond_6

    if-eqz v3, :cond_2

    goto :goto_2

    .line 331
    :cond_2
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->getZipFiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    .line 335
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 336
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/powervision/upgrade/model/entity/Firmware;

    .line 337
    new-instance v7, Ljava/io/File;

    iget-object v5, v5, Lcn/powervision/upgrade/model/entity/Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-static {v7}, Lcn/powervision/upgrade/FileUtil;->getTotalSizeOfFilesInDir(Ljava/io/File;)J

    move-result-wide v8

    .line 342
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "2.2 showing update file"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  and size"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v5, "2.2 showing update file,donest exit"

    .line 345
    invoke-static {p1, v5}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-long/2addr v1, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move-wide v5, v1

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    move-wide v5, v1

    const/4 v3, -0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x1

    move-wide v5, v1

    const/4 v3, 0x1

    .line 353
    :goto_3
    invoke-virtual {p0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLoading()V

    const/4 v1, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v2, v3

    .line 355
    invoke-virtual/range {v0 .. v7}, Lcom/powervision/home/ui/adapter/CommonPresenter;->toDetailActivity(IIILjava/lang/String;JZ)V

    return-void
.end method
