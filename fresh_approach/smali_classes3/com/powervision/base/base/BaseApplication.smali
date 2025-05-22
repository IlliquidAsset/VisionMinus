.class public Lcom/powervision/base/base/BaseApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "BaseApplication.java"


# static fields
.field public static final IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseApplication"

.field private static sApplication:Lcom/powervision/base/base/BaseApplication;


# instance fields
.field aoaConnectTime:J

.field public isConnectPvw4Camera:Z

.field protected isMainProcess:Z

.field public isPopShow:Z

.field public isShowSonar:Z

.field mAudioUtil:Lcom/powervision/base/utils/AudioUtil;

.field private mCurrentFileName:Ljava/lang/String;

.field private mFlightLogUtil:Lcom/powervision/base/utils/FlightLogUtil;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mTimer:Ljava/util/Timer;

.field private mUmTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/powervision/base/base/BaseApplication;->isMainProcess:Z

    const-wide/16 v0, 0x0

    .line 452
    iput-wide v0, p0, Lcom/powervision/base/base/BaseApplication;->aoaConnectTime:J

    return-void
.end method

.method public static getInstanceApp()Lcom/powervision/base/base/BaseApplication;
    .locals 1

    .line 91
    sget-object v0, Lcom/powervision/base/base/BaseApplication;->sApplication:Lcom/powervision/base/base/BaseApplication;

    return-object v0
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 261
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    .line 268
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    .line 272
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_2

    .line 272
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    :cond_2
    :goto_3
    throw p0
.end method

.method private init()V
    .locals 2

    .line 127
    new-instance v0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 128
    iget-boolean v1, p0, Lcom/powervision/base/base/BaseApplication;->isMainProcess:Z

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setUploadProcess(Z)Lcom/tencent/bugly/BuglyStrategy;

    .line 129
    invoke-direct {p0, v0}, Lcom/powervision/base/base/BaseApplication;->initBugly(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 130
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->initARouter()V

    .line 132
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->initLogger()V

    .line 133
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->initOKGo()V

    .line 134
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseApplication;->initFlightlogMemory()V

    .line 135
    new-instance v0, Lcom/powervision/base/utils/AudioUtil;

    invoke-virtual {p0}, Lcom/powervision/base/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/AudioUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mAudioUtil:Lcom/powervision/base/utils/AudioUtil;

    .line 136
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->initXUtils()V

    .line 138
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->setRxJavaErrorHandler()V

    .line 141
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->loadJniPowerSdk()V

    .line 144
    invoke-static {p0}, Lcom/powervision/base/utils/UmengUtils;->init(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/base/base/BaseApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private initARouter()V
    .locals 1

    .line 237
    sget-object v0, Lcom/powervision/base/base/BaseApplication;->sApplication:Lcom/powervision/base/base/BaseApplication;

    invoke-static {v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->init(Landroid/app/Application;)V

    return-void
.end method

.method private initBugly(Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    const-string p1, "504509b42b"

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private initBusinessInThread()V
    .locals 1

    .line 164
    new-instance v0, Lcom/powervision/base/base/BaseApplication$1;

    invoke-direct {v0, p0}, Lcom/powervision/base/base/BaseApplication$1;-><init>(Lcom/powervision/base/base/BaseApplication;)V

    .line 179
    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication$1;->start()V

    return-void
.end method

.method private initCrashHandler()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/powervision/base/exception/CrashHandler;->getInstance()Lcom/powervision/base/exception/CrashHandler;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p0}, Lcom/powervision/base/exception/CrashHandler;->init(Landroid/content/Context;)V

    return-void
.end method

.method private initLeakCanary()V
    .locals 0

    return-void
.end method

.method private initLogger()V
    .locals 2

    .line 214
    invoke-static {}, Lcom/orhanobut/logger/PrettyFormatStrategy;->newBuilder()Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->showThreadInfo(Z)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 216
    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodCount(I)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 217
    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodOffset(I)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    const-string v1, "VISION_PLUS"

    .line 219
    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->build()Lcom/orhanobut/logger/PrettyFormatStrategy;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/powervision/base/base/BaseApplication$2;

    invoke-direct {v1, p0, v0}, Lcom/powervision/base/base/BaseApplication$2;-><init>(Lcom/powervision/base/base/BaseApplication;Lcom/orhanobut/logger/FormatStrategy;)V

    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->addLogAdapter(Lcom/orhanobut/logger/LogAdapter;)V

    return-void
.end method

.method private initOKGo()V
    .locals 4

    .line 415
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 417
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 418
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 419
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 423
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lzy/okgo/OkGo;->init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;

    move-result-object v1

    .line 424
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/OkGo;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const/4 v1, 0x3

    .line 427
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->setRetryCount(I)Lcom/lzy/okgo/OkGo;

    .line 440
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/DownloadManager;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okserver/OkDownload;->restore(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method private initXUtils()V
    .locals 2

    .line 398
    invoke-static {p0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    const/4 v0, 0x0

    .line 399
    invoke-static {v0}, Lorg/xutils/x$Ext;->setDebug(Z)V

    const-string v0, "BaseApplication"

    const-string v1, "initXUtils: DbHelper"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/powervision/base/utils/DbHelper;->getInstance()Lcom/powervision/base/utils/DbHelper;

    return-void
.end method

.method private isMainProcess()Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/powervision/base/base/BaseApplication;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$setRxJavaErrorHandler$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 448
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "BaseApplication"

    invoke-static {p0, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private loadJniPowerSdk()V
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/base/base/BaseApplication$5;

    invoke-direct {v1, p0}, Lcom/powervision/base/base/BaseApplication$5;-><init>(Lcom/powervision/base/base/BaseApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 473
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setRxJavaErrorHandler()V
    .locals 1

    .line 448
    sget-object v0, Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;->INSTANCE:Lcom/powervision/base/base/-$$Lambda$BaseApplication$7o0ne_6oIkFLldU3srQeFcQ8SME;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private startUtMissUpload()V
    .locals 8

    .line 362
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mUmTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/UtMissUtils;->initUmData()V

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 367
    invoke-static {v0, v1}, Lcom/powervision/base/utils/UtMissUtils;->getOrderIdStr(J)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "AP03_FLY_UAS_ID"

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "UAS-DEFAULT"

    .line 372
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/powervision/base/base/BaseApplication;->mUmTimer:Ljava/util/Timer;

    .line 374
    new-instance v3, Lcom/powervision/base/base/BaseApplication$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/powervision/base/base/BaseApplication$4;-><init>(Lcom/powervision/base/base/BaseApplication;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1388

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopUtMissUpload()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mUmTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mUmTimer:Ljava/util/Timer;

    .line 390
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/UtMissUtils;->initUmData()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->isMainProcess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/base/base/BaseApplication;->isMainProcess:Z

    if-eqz p1, :cond_0

    .line 99
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public controlIsUtMissUpload(Z)V
    .locals 0

    return-void
.end method

.method protected excuteWriteFile()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mFlightLogUtil:Lcom/powervision/base/utils/FlightLogUtil;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mCurrentFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/CacheUtil;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/CacheUtil;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlightRecord_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/powervision/base/utils/TimeUtils;->time2FormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".CSV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/base/base/BaseApplication;->mCurrentFileName:Ljava/lang/String;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/powervision/base/utils/CacheUtil;->getFlightLogFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/base/base/BaseApplication;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/powervision/base/base/BaseApplication;->mFlightLogUtil:Lcom/powervision/base/utils/FlightLogUtil;

    invoke-virtual {v2}, Lcom/powervision/base/utils/FlightLogUtil;->getCSVHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/CacheUtil;->writeFlightlogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mFlightLogUtil:Lcom/powervision/base/utils/FlightLogUtil;

    invoke-virtual {p0}, Lcom/powervision/base/base/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/base/base/BaseApplication;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/FlightLogUtil;->writeFlightLogs(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getAoaConnectInTime()Z
    .locals 5

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/base/base/BaseApplication;->aoaConnectTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 460
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " .......00000000000000000000.......b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reomte_get"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public declared-synchronized getAudioUtilInstance()Lcom/powervision/base/utils/AudioUtil;
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mAudioUtil:Lcom/powervision/base/utils/AudioUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initFlightlogMemory()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mFlightLogUtil:Lcom/powervision/base/utils/FlightLogUtil;

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mFlightLogUtil:Lcom/powervision/base/utils/FlightLogUtil;

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    const-string v0, "PushApplication ....111 "

    .line 107
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/powervision/base/base/BaseApplication;->isMainProcess:Z

    if-eqz v0, :cond_0

    .line 109
    sput-object p0, Lcom/powervision/base/base/BaseApplication;->sApplication:Lcom/powervision/base/base/BaseApplication;

    .line 110
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/base/BaseApplication;->mScreenWidth:I

    .line 111
    invoke-static {p0}, Lcom/powervision/base/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/powervision/base/base/BaseApplication;->mScreenHeight:I

    .line 112
    invoke-direct {p0}, Lcom/powervision/base/base/BaseApplication;->init()V

    :cond_0
    return-void
.end method

.method public setAoaConnectTime(J)V
    .locals 0

    .line 455
    iput-wide p1, p0, Lcom/powervision/base/base/BaseApplication;->aoaConnectTime:J

    return-void
.end method

.method public startRecordLog()V
    .locals 8

    .line 314
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setMileage(F)V

    .line 318
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setMaxHeight(F)V

    .line 319
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setMaxFlySpeed(F)V

    .line 321
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/powervision/base/base/BaseApplication;->mTimer:Ljava/util/Timer;

    .line 322
    new-instance v3, Lcom/powervision/base/base/BaseApplication$3;

    invoke-direct {v3, p0}, Lcom/powervision/base/base/BaseApplication$3;-><init>(Lcom/powervision/base/base/BaseApplication;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopRecordLog()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mTimer:Ljava/util/Timer;

    const-string v0, ""

    .line 336
    iput-object v0, p0, Lcom/powervision/base/base/BaseApplication;->mCurrentFileName:Ljava/lang/String;

    .line 337
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setMileage(F)V

    .line 338
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setMaxHeight(F)V

    .line 339
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setMaxFlySpeed(F)V

    return-void
.end method
