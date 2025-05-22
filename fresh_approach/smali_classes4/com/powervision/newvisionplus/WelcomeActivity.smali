.class public Lcom/powervision/newvisionplus/WelcomeActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;
    }
.end annotation


# static fields
.field private static final COUNTDOWNTIMERMSG:I = 0x64

.field private static final DELAY_START_VIDEO:I = 0x67

.field private static final FINISH:I = 0x67

.field private static final GOTONEXTMSG:I = 0x65

.field private static final SHOWSPASHMSG:I = 0x66

.field private static final TAG:Ljava/lang/String;


# instance fields
.field CONNECT_TIMEOUT:I

.field READ_TIMEOUT:I

.field private WEB_URL:Ljava/lang/String;

.field WRITE_TIMEOUT:I

.field c:J

.field private isJumpEve:Z

.field private lVideoView:Lcom/powervision/media/widgets/LVideoView;

.field private mInToThisTime:J

.field private md5File:Ljava/lang/String;

.field private screenAdvIv:Landroid/widget/ImageView;

.field private screenAdvLL:Landroid/widget/FrameLayout;

.field private stayTimeTv:Landroid/widget/TextView;

.field private timer:Lcom/powervision/gcs/utils/CountDownTimer;

.field totlal:J

.field private welcomeHandler:Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

.field private welcomeTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-class v0, Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/newvisionplus/WelcomeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->mInToThisTime:J

    const/4 v2, 0x5

    .line 95
    iput v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->welcomeTime:I

    const/4 v2, 0x0

    .line 97
    iput-boolean v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->isJumpEve:Z

    const-string v2, ""

    .line 99
    iput-object v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->md5File:Ljava/lang/String;

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/NewVisionPlus/power_video.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->WEB_URL:Ljava/lang/String;

    .line 103
    new-instance v2, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    invoke-direct {v2, p0}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    iput-object v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->welcomeHandler:Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    const/4 v2, 0x6

    .line 390
    iput v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->READ_TIMEOUT:I

    .line 391
    iput v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->WRITE_TIMEOUT:I

    .line 392
    iput v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->CONNECT_TIMEOUT:I

    .line 393
    iput-wide v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->totlal:J

    .line 394
    iput-wide v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->c:J

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->stayTimeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/powervision/newvisionplus/WelcomeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->loadSplashImage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->getSplashImage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->requestBasicPermission()V

    return-void
.end method

.method static synthetic access$1402(Lcom/powervision/newvisionplus/WelcomeActivity;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->welcomeTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->WEB_URL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->md5File:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->md5File:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/media/widgets/LVideoView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->lVideoView:Lcom/powervision/media/widgets/LVideoView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->screenAdvIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->downVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->welcomeHandler:Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/powervision/newvisionplus/WelcomeActivity;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->isJumpEve:Z

    return p0
.end method

.method static synthetic access$802(Lcom/powervision/newvisionplus/WelcomeActivity;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->isJumpEve:Z

    return p1
.end method

.method static synthetic access$900(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->screenAdvLL:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private checkNotifySetting()V
    .locals 1

    .line 556
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->initClickListener()V

    :cond_0
    return-void
.end method

.method private downVideo(Ljava/lang/String;)V
    .locals 5

    .line 398
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 399
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->READ_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 400
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->WRITE_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 401
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->CONNECT_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 402
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 403
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 405
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 406
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 407
    new-instance v0, Lcom/powervision/newvisionplus/WelcomeActivity$4;

    invoke-direct {v0, p0}, Lcom/powervision/newvisionplus/WelcomeActivity$4;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private getSplashImage()V
    .locals 4

    const-string v0, "welcomeTest"

    const-string v1, "getSplashImage"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lcom/powervision/gcs/http/Api;->get()Lcom/powervision/gcs/http/Api;

    move-result-object v0

    invoke-static {p0}, Lcom/powervision/gcs/utils/LanguageUtils;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/powervision/gcs/utils/LanguageUtils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/powervision/newvisionplus/WelcomeActivity$5;

    invoke-direct {v3, p0}, Lcom/powervision/newvisionplus/WelcomeActivity$5;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/http/Api;->getSplashImage(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/http/SimpleObserver;)V

    return-void
.end method

.method private initClickListener()V
    .locals 4

    :try_start_0
    const-string v0, "dfasdfasfafadfsfd"

    const-string v1, "=========="

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 524
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 526
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.CHANNEL_ID"

    .line 527
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "app_package"

    .line 530
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_uid"

    .line 531
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 548
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private loadSplashImage()V
    .locals 4

    .line 450
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/utils/SPHelperUtils;->getScreenAdvImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 452
    sget-object v1, Lcom/powervision/newvisionplus/WelcomeActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSplashImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->welcomeHandler:Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private requestBasicPermission()V
    .locals 9

    .line 314
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.CAMERA"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "android.permission.RECORD_AUDIO"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    .line 324
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-virtual {v0, v3}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEach([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/powervision/newvisionplus/WelcomeActivity$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/powervision/newvisionplus/WelcomeActivity$3;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private startCountDownTimer()V
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->timer:Lcom/powervision/gcs/utils/CountDownTimer;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/powervision/newvisionplus/WelcomeActivity$1;

    iget v1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->welcomeTime:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, 0x44c

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/powervision/newvisionplus/WelcomeActivity$1;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity;JJ)V

    iput-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->timer:Lcom/powervision/gcs/utils/CountDownTimer;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->timer:Lcom/powervision/gcs/utils/CountDownTimer;

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/CountDownTimer;->start()Lcom/powervision/gcs/utils/CountDownTimer;

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->timer:Lcom/powervision/gcs/utils/CountDownTimer;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/powervision/gcs/utils/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->timer:Lcom/powervision/gcs/utils/CountDownTimer;

    :cond_0
    return-void
.end method

.method public fileIsExists(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 201
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->systemFullScreen()V

    const v0, 0x7f0c00a4

    return v0
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    const p1, 0x7f090873

    .line 290
    invoke-virtual {p0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->screenAdvIv:Landroid/widget/ImageView;

    const p1, 0x7f0909e6

    .line 291
    invoke-virtual {p0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->stayTimeTv:Landroid/widget/TextView;

    const p1, 0x7f090874

    .line 292
    invoke-virtual {p0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->screenAdvLL:Landroid/widget/FrameLayout;

    const p1, 0x7f090bfe

    .line 294
    invoke-virtual {p0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/media/widgets/LVideoView;

    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->lVideoView:Lcom/powervision/media/widgets/LVideoView;

    .line 297
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->stayTimeTv:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/newvisionplus/WelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/newvisionplus/WelcomeActivity$2;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-direct {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->requestBasicPermission()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/WelcomeActivity;->cancelTimer()V

    .line 271
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->welcomeHandler:Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->lVideoView:Lcom/powervision/media/widgets/LVideoView;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/powervision/media/widgets/LVideoView;->stopPlay()V

    .line 276
    :cond_0
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 259
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onPause()V

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->mInToThisTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    const-string v0, "Open_Screen_Ad"

    const-string v2, ""

    .line 263
    invoke-static {v0, v2, v2, v2}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 262
    invoke-static {p0, v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 265
    invoke-static {v0}, Lcom/powervision/base/utils/UmengUtils;->workUmServiceLogBpFun(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 253
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity;->mInToThisTime:J

    return-void
.end method
