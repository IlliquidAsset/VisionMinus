.class public Lcom/powervision/home/ui/activity/HomeActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/powervision/home/ui/view/IHomeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/home/ui/activity/HomeActivity$MyHandler;,
        Lcom/powervision/home/ui/activity/HomeActivity$BatteryReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/home/presenter/impl/HomePresenter;",
        "Lcom/powervision/home/model/impl/HomeModel;",
        ">;",
        "Lcom/powervision/home/ui/view/IHomeView;"
    }
.end annotation


# static fields
.field public static final HOME_FRAGMENT_KEY:Ljava/lang/String; = "home_fragment"

.field public static final MEDIA_FRAGMENT_KEY:Ljava/lang/String; = "media_fragment"

.field public static final MINE_FRAGMENT_KEY:Ljava/lang/String; = "mine_fragment"

.field private static final REMOVE_HANDLER_MSG_TAG:I = 0x3e8

.field private static final SAVED_CURRENT_ID:Ljava/lang/String; = "currentId"

.field public static final SERVICE_FRAGMENT_KEY:Ljava/lang/String; = "service_fragment"

.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

.field private bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

.field fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

.field private mCurrentFragmentIndex:I

.field private mFragmentsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mTextMsg:Landroid/widget/TextView;

.field onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

.field private receiver:Lcom/powervision/home/ui/activity/HomeActivity$BatteryReceiver;

.field restartTips:Lcom/powervision/base/views/FakeDialogView;

.field stuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

.field usbStateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mCurrentFragmentIndex:I

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    .line 248
    new-instance v0, Lcom/powervision/home/ui/activity/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/HomeActivity$1;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    .line 469
    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    .line 470
    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    .line 604
    new-instance v0, Lcom/powervision/home/ui/activity/HomeActivity$8;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/HomeActivity$8;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->stuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    .line 660
    new-instance v0, Lcom/powervision/home/ui/activity/HomeActivity$9;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/HomeActivity$9;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->usbStateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    .line 919
    new-instance v0, Lcom/powervision/home/ui/activity/HomeActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/HomeActivity$MyHandler;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->hideUsbTips()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->restartApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/home/ui/activity/HomeActivity;)Landroid/os/Handler;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->saveTimeData()V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->intoRemoteControlerConnect()V

    return-void
.end method

.method private hideUsbTips()V
    .locals 2

    const-string v0, "lzqUsb"

    const-string v1, "hideUsbTips "

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    new-instance v1, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$6OjrIMEsUBUiGKYt2e6YCNJcI1o;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$6OjrIMEsUBUiGKYt2e6YCNJcI1o;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initSql()V
    .locals 2

    .line 756
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/db/DBManager;->copySql2App(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$10;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$10;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private intoRemoteControlerConnect()V
    .locals 3

    .line 907
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const-string v1, "reomte_get"

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    .line 908
    invoke-static {}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->get()Lcom/powervision/natives/connect/ConnectRemoteSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectRemoteSDK;->getConnectState()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/powervision/home/ui/activity/GuideRemoteControlerConnectActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 914
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, " ..remove.......5555555555555555555555"

    .line 915
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 909
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, " ..remove.......4444444444444444444"

    .line 910
    invoke-static {v1, v2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private restartApp()V
    .locals 1

    .line 874
    new-instance v0, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$VXWZwCtukidvV1X5nwRFjId6hNE;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$VXWZwCtukidvV1X5nwRFjId6hNE;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveTimeData()V
    .locals 4

    .line 787
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "PV_DATABASE_UPDATE_TIME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-static {}, Lcom/powervision/base/db/DBManager;->getInstance()Lcom/powervision/base/db/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/db/DBManager;->queryUpdateTime()Ljava/lang/String;

    move-result-object v1

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lastTimeFromDb = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "result"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-static {}, Lcom/powervision/base/db/api/UpdateDbManager;->getInstance()Lcom/powervision/base/db/api/UpdateDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/db/api/UpdateDbManager;->getDbApi()Lcom/powervision/base/db/api/DBApi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/powervision/base/db/api/DBApi;->updateDb(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/net/observable/StringObservable;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 795
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$11;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$11;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    .line 796
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private setMessageCount(I)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 410
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    const-string v0, ".."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showAgreement()V
    .locals 3

    .line 962
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getShowAgreement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-static {}, Lcom/powervision/base/fragment/AgreementFragment;->newInstance()Lcom/powervision/base/fragment/AgreementFragment;

    move-result-object v0

    .line 964
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AgreementFragment"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/fragment/AgreementFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 965
    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity$13;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;Lcom/powervision/base/fragment/AgreementFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/fragment/AgreementFragment;->setOnFragmentActionListener(Lcom/powervision/base/fragment/AgreementFragment$OnFragmentActionListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/powervision/base/views/FakeDialogView;)V
    .locals 3

    const-string v0, "lzqDia"

    const-string v1, "dismiss"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p1, v0}, Lcom/powervision/base/views/FakeDialogView;->setEnabled(Z)V

    .line 581
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 582
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 583
    invoke-virtual {p1, v0}, Lcom/powervision/base/views/FakeDialogView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 584
    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/powervision/home/ui/activity/HomeActivity$7;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;Lcom/powervision/base/views/FakeDialogView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 836
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->finish()V

    .line 837
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->onDes()V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 110
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/NewVisionPlus/LOG_FIRM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/Log;->init(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/NewVisionPlus/LOG_AUDIO/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogConnectStuf;->init(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/NewVisionPlus/LOG_TEST/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogTestStuf;->init(Ljava/lang/String;)V

    .line 116
    :cond_0
    sget v0, Lcom/powervision/home/R$layout;->home_activity_home:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 342
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    .line 343
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->initSql()V

    .line 348
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/powervision/camera/camera/CameraManager;->initCameraSdk(Z)V

    .line 349
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setUserId(Ljava/lang/String;)V

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ------------userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flight_lot"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 372
    :cond_1
    invoke-static {}, Lcom/powervision/airmap/utils/JPushUtil;->getInstance()Lcom/powervision/airmap/utils/JPushUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/airmap/utils/JPushUtil;->initPush(Landroid/content/Context;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 6

    .line 135
    sget v0, Lcom/powervision/home/R$id;->home_bottom_view:I

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 138
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$tq6JyuhKaqHx__r_-myHY4OEhXQ;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$tq6JyuhKaqHx__r_-myHY4OEhXQ;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 146
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const/4 v2, 0x3

    .line 147
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 148
    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 149
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/powervision/home/R$layout;->home_layout_badge_view:I

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 150
    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->addView(Landroid/view/View;)V

    .line 152
    sget v1, Lcom/powervision/home/R$id;->text_home_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "home_fragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "media_fragment"

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "service_fragment"

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "mine_fragment"

    invoke-virtual {v3, p1, v4}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v5, Lcom/powervision/home/R$id;->tab_menu_home:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v4, Lcom/powervision/home/R$id;->tab_menu_album:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_profile:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget v0, Lcom/powervision/home/R$id;->tab_menu_home:I

    const-string v1, "currentId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mCurrentFragmentIndex:I

    goto/16 :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 174
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 176
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v0, Lcom/powervision/home/R$id;->tab_menu_home:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Home;->getHomeFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v0, Lcom/powervision/home/R$id;->tab_menu_album:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Media;->getMediaFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v0, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$Find;->getFindFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v0, Lcom/powervision/home/R$id;->tab_menu_profile:I

    invoke-static {}, Lcom/powervision/base/router/RouterUtil$User;->getUserFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_home:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lcom/powervision/home/R$id;->home_container:I

    invoke-static {p1, v0, v1}, Lcom/powervision/base/utils/ActivityUtils;->addFragmentToActivity(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V

    .line 185
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_album:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lcom/powervision/home/R$id;->home_container:I

    invoke-static {p1, v0, v1}, Lcom/powervision/base/utils/ActivityUtils;->addFragmentToActivity(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V

    .line 187
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    .line 188
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lcom/powervision/home/R$id;->home_container:I

    .line 187
    invoke-static {p1, v0, v1}, Lcom/powervision/base/utils/ActivityUtils;->addFragmentToActivity(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V

    .line 189
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_profile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lcom/powervision/home/R$id;->home_container:I

    invoke-static {p1, v0, v1}, Lcom/powervision/base/utils/ActivityUtils;->addFragmentToActivity(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V

    .line 192
    sget p1, Lcom/powervision/home/R$id;->tab_menu_home:I

    iput p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mCurrentFragmentIndex:I

    .line 194
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mCurrentFragmentIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {p1, v0}, Lcom/powervision/base/utils/ActivityUtils;->showFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 197
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->usbStateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->addUsbStateListener(Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;)V

    .line 198
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->stuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectedStuffListeners(Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;)V

    .line 199
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    .line 200
    invoke-static {}, Lcom/powervision/map/manager/FlightLogLatLonImp;->getInstance()Lcom/powervision/map/manager/FlightLogLatLonImp;

    .line 201
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/powervision/home/ui/activity/HomeActivity$BatteryReceiver;

    invoke-direct {v0, p0}, Lcom/powervision/home/ui/activity/HomeActivity$BatteryReceiver;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->receiver:Lcom/powervision/home/ui/activity/HomeActivity$BatteryReceiver;

    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/powervision/home/ui/activity/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public synthetic lambda$hideUsbTips$2$HomeActivity()V
    .locals 3

    .line 742
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 743
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 746
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initView$0$HomeActivity(Landroid/view/MenuItem;)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mCurrentFragmentIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 140
    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iput p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mCurrentFragmentIndex:I

    .line 142
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v2, Lcom/powervision/home/R$id;->home_container:I

    invoke-static {p1, v0, v1, v2}, Lcom/powervision/base/utils/ActivityUtils;->replaceFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$restartApp$3$HomeActivity()V
    .locals 4

    const-string v0, "lzqUsb"

    const-string v1, "\u91cd\u542fActivity"

    .line 875
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14010000

    .line 877
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0, v0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->overridePendingTransition(II)V

    .line 879
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->finish()V

    .line 880
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$12;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$12;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$setListener$1$HomeActivity(Ljava/lang/Integer;)V
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener: ------ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 385
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 386
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v1

    .line 392
    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/HomeActivity;->setMessageCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 394
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 388
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/powervision/home/ui/activity/HomeActivity;->setMessageCount(I)V

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 399
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/powervision/home/ui/activity/HomeActivity;->setMessageCount(I)V

    goto :goto_1

    .line 400
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 401
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mTextMsg:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 945
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 946
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->showAgreement()V

    .line 947
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "JPUSH_BOOLEAN_FLAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 950
    invoke-static {}, Lcom/powervision/base/router/RouterUtil$User;->getPushFragment()Landroidx/fragment/app/Fragment;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->receiver:Lcom/powervision/home/ui/activity/HomeActivity$BatteryReceiver;

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 897
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/LoopingManager;->stopRunning()V

    .line 898
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->usbStateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->removeUsbStateLisener(Lcom/powervision/gcs/usb2/GcsUsbManager$UsbStateListener;)V

    .line 899
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->stuffListener:Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeConnectedStuffListener(Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectStuffListener;)V

    .line 900
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->onBodyConnectListener:Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->removeConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$OnBodyConnectListener;)V

    .line 901
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 867
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/home/presenter/impl/HomePresenter;

    invoke-virtual {p1}, Lcom/powervision/home/presenter/impl/HomePresenter;->exist()V

    const/4 p1, 0x1

    return p1

    .line 870
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/powervision/base/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "index"

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    sget v0, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 731
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    const-string v0, "lzqDia"

    const-string v1, "onPause "

    .line 732
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->unInit()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 435
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 436
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 437
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->hideUsbTips()V

    return-void

    .line 441
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/USBUtils;->isTetheringActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->onConfirmUsbTething()V

    .line 443
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->hideUsbTips()V

    .line 446
    :cond_1
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/powervision/gcs/usb2/GCSConnectionManager;->needShowAskForDialog:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lzqDia"

    const-string v1, "showUsb -A"

    .line 448
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 450
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->showUsbTips()V

    :cond_3
    const-string v0, "lzqUsb"

    const-string v1, "HomeActivity addUsbStateListener:"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_home:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "home_fragment"

    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_album:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "media_fragment"

    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_discovery:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "service_fragment"

    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mFragmentsMap:Landroid/util/SparseArray;

    sget v1, Lcom/powervision/home/R$id;->tab_menu_profile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "mine_fragment"

    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 244
    :cond_3
    iget v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->mCurrentFragmentIndex:I

    const-string v1, "currentId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 418
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStart()V

    .line 419
    new-instance v0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-direct {v0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;-><init>()V

    iput-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    const-string v0, "lzqFirm"

    const-string v1, "homeacti vity onstart"

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->battaryPresenter:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-virtual {v0, p0}, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->init(Landroid/app/Activity;)V

    .line 423
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "isLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/login/createLoginActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 425
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->finish()V

    return-void

    .line 429
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/NewActiviteUtil;->getIntance()Lcom/powervision/gcs/utils/NewActiviteUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/NewActiviteUtil;->searchTheDbToPostActivite()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 958
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onStop()V

    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 379
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    .line 380
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->initAllManager()V

    .line 382
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "message_count"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$yMCsP4Ax7gQrb3Kei9x8i9ZHk-8;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/-$$Lambda$HomeActivity$yMCsP4Ax7gQrb3Kei9x8i9ZHk-8;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public showFragmentPager(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 827
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 828
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    sget v1, Lcom/powervision/home/R$id;->home_container:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_container:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showIntentTips()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 520
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 522
    new-instance v1, Lcom/powervision/base/views/FakeDialogView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/base/views/FakeDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    .line 523
    invoke-virtual {v1, v0}, Lcom/powervision/base/views/FakeDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->text_title:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 525
    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    sget v2, Lcom/powervision/home/R$id;->content:I

    invoke-virtual {v1, v2}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 526
    iget-object v2, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    sget v3, Lcom/powervision/home/R$id;->title:I

    invoke-virtual {v2, v3}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 527
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 528
    sget v2, Lcom/powervision/home/R$string;->W4_ConnectGuide_51:I

    invoke-virtual {p0, v2}, Lcom/powervision/home/ui/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    sget v0, Lcom/powervision/home/R$string;->ConnectGuide_58:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->text_ok:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$4;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$4;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->text_cancel:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$5;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$5;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeIntentTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showRestartTips()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "lzqDia"

    const-string v1, "\u6ca1\u6709\u6ee1\u8db3\u6761\u4ef6"

    .line 571
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 553
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 555
    new-instance v1, Lcom/powervision/base/views/FakeDialogView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/base/views/FakeDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    .line 556
    invoke-virtual {v1, v0}, Lcom/powervision/base/views/FakeDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->content:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 558
    sget v1, Lcom/powervision/home/R$string;->AP03_Msg_139_8:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 559
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->text_cancel:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->text_ok:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$6;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$6;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->restartTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public showUsbTips()V
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeActivity showUsbTips().. GCSConnectionManager.get().isAp03Connected()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect_status"

    .line 473
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/powervision/home/ui/activity/HomeActivity;->hideUsbTips()V

    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "lzqDia"

    const-string v1, "\u6ca1\u6709\u6ee1\u8db3\u6761\u4ef6"

    .line 512
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 484
    new-instance v1, Lcom/powervision/base/views/FakeDialogView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powervision/base/views/FakeDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    .line 485
    invoke-virtual {v1, v0}, Lcom/powervision/base/views/FakeDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->content:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    sget v1, Lcom/powervision/home/R$string;->ConnectGuide_50:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 488
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->text_ok:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$2;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    sget v1, Lcom/powervision/home/R$id;->text_cancel:I

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/FakeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/activity/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/activity/HomeActivity$3;-><init>(Lcom/powervision/home/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity;->rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powervision/home/ui/activity/HomeActivity;->fakeUsbTips:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public toDownloadActivity(I)V
    .locals 2

    .line 847
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/powervision/upgrade/activity/FirmwareDownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param_type"

    .line 848
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public toUpgradeActivity(I)V
    .locals 2

    .line 859
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/powervision/upgrade/activity/FirmwareUpgradeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "param_update_type"

    .line 860
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    invoke-virtual {p0, v0}, Lcom/powervision/home/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
