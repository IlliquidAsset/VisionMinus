.class public Lcn/sharesdk/framework/b/d;
.super Lcn/sharesdk/framework/utils/d;
.source "StatisticsLogger.java"


# static fields
.field private static b:Lcn/sharesdk/framework/b/d;


# instance fields
.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Lcn/sharesdk/framework/b/a;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:J

.field private h:Z

.field private i:Ljava/io/File;

.field private j:Lcom/mob/tools/utils/FileLocker;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/d;-><init>()V

    .line 59
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    .line 60
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->d:Lcn/sharesdk/framework/b/a;

    .line 61
    new-instance v0, Lcom/mob/tools/utils/FileLocker;

    invoke-direct {v0}, Lcom/mob/tools/utils/FileLocker;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->j:Lcom/mob/tools/utils/FileLocker;

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".statistics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->i:Ljava/io/File;

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/b/d;)Lcn/sharesdk/framework/b/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/sharesdk/framework/b/d;->d:Lcn/sharesdk/framework/b/a;

    return-object p0
.end method

.method public static declared-synchronized a()Lcn/sharesdk/framework/b/d;
    .locals 2

    const-class v0, Lcn/sharesdk/framework/b/d;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/b/d;->b:Lcn/sharesdk/framework/b/d;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcn/sharesdk/framework/b/d;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/d;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/b/d;->b:Lcn/sharesdk/framework/b/d;

    .line 55
    :cond_0
    sget-object v1, Lcn/sharesdk/framework/b/d;->b:Lcn/sharesdk/framework/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b()V
    .locals 4

    .line 253
    invoke-direct {p0}, Lcn/sharesdk/framework/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-boolean v1, p0, Lcn/sharesdk/framework/b/d;->h:Z

    if-nez v1, :cond_1

    .line 257
    iput-boolean v0, p0, Lcn/sharesdk/framework/b/d;->h:Z

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sharesdk/framework/b/d;->g:J

    .line 259
    new-instance v0, Lcn/sharesdk/framework/b/b/g;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/g;-><init>()V

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-boolean v1, p0, Lcn/sharesdk/framework/b/d;->h:Z

    if-eqz v1, :cond_1

    .line 263
    iput-boolean v0, p0, Lcn/sharesdk/framework/b/d;->h:Z

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sharesdk/framework/b/d;->g:J

    sub-long/2addr v0, v2

    .line 265
    new-instance v2, Lcn/sharesdk/framework/b/b/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/b/b/e;-><init>()V

    .line 266
    iput-wide v0, v2, Lcn/sharesdk/framework/b/b/e;->a:J

    .line 267
    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcn/sharesdk/framework/b/b/c;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->f:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->g:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/b/b/c;->h:I

    .line 179
    sget v0, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->i:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/b/b/c;->j:I

    .line 181
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->k:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ShareSDKCore"

    if-eqz v0, :cond_0

    const-string v0, "Your appKey of ShareSDK is null , this will cause its data won\'t be count!"

    .line 185
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p1, Lcn/sharesdk/framework/b/b/c;->g:Ljava/lang/String;

    const-string v2, "cn.sharesdk.demo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "api20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "androidv1101"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Your app is using the appkey of ShareSDK Demo, this will cause its data won\'t be count!"

    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->l:Ljava/lang/String;

    return-void
.end method

.method private c()Z
    .locals 1

    .line 272
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->amIOnForeground()Z

    move-result v0

    return v0
.end method

.method private d(Lcn/sharesdk/framework/b/b/c;)V
    .locals 2

    .line 244
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->d:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/a;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 245
    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 247
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 248
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/b/d$3;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/b/d$3;-><init>(Lcn/sharesdk/framework/b/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/sharesdk/framework/b/d;->e:Landroid/os/Handler;

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 4

    .line 81
    iget-boolean p1, p0, Lcn/sharesdk/framework/b/d;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcn/sharesdk/framework/b/d;->f:Z

    .line 84
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->j:Lcom/mob/tools/utils/FileLocker;

    iget-object v1, p0, Lcn/sharesdk/framework/b/d;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/FileLocker;->setLockFile(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->j:Lcom/mob/tools/utils/FileLocker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/FileLocker;->lock(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/b/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/b/d$1;-><init>(Lcn/sharesdk/framework/b/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->d:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->b()V

    .line 103
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->d:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->c()V

    .line 105
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->setEnableAuthTag(Z)V

    .line 106
    invoke-direct {p0}, Lcn/sharesdk/framework/b/d;->e()V

    .line 108
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 114
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcn/sharesdk/framework/b/b/c;)V
    .locals 2

    .line 140
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 141
    new-instance v0, Lcn/sharesdk/framework/b/d$2;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/framework/b/d$2;-><init>(Lcn/sharesdk/framework/b/d;Lcn/sharesdk/framework/b/b/c;)V

    .line 146
    invoke-virtual {v0}, Lcn/sharesdk/framework/b/d$2;->start()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/b/d;->b(Lcn/sharesdk/framework/b/b/c;)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 9

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 220
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->j()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 225
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 226
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 231
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v3, v1, :cond_1

    if-ne v4, v2, :cond_1

    if-eq v6, v0, :cond_2

    .line 234
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->d:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->c()V

    .line 236
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 198
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/sharesdk/framework/b/b/c;

    .line 199
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b/d;->d(Lcn/sharesdk/framework/b/b/c;)V

    .line 200
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 214
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->d:Lcn/sharesdk/framework/b/a;

    invoke-virtual {p1}, Lcn/sharesdk/framework/b/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 216
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    :cond_5
    invoke-direct {p0}, Lcn/sharesdk/framework/b/d;->b()V

    .line 207
    :try_start_1
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 209
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public b(Lcn/sharesdk/framework/b/b/c;)V
    .locals 3

    .line 154
    invoke-static {}, Lcom/mob/MobSDK;->isMob()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcn/sharesdk/framework/b/d;->f:Z

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b/d;->c(Lcn/sharesdk/framework/b/b/c;)V

    .line 159
    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 161
    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 166
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected c(Landroid/os/Message;)V
    .locals 4

    .line 120
    iget-boolean p1, p0, Lcn/sharesdk/framework/b/d;->f:Z

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sharesdk/framework/b/d;->g:J

    sub-long/2addr v0, v2

    .line 122
    new-instance p1, Lcn/sharesdk/framework/b/b/e;

    invoke-direct {p1}, Lcn/sharesdk/framework/b/b/e;-><init>()V

    .line 123
    iput-wide v0, p1, Lcn/sharesdk/framework/b/b/e;->a:J

    .line 124
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcn/sharesdk/framework/b/d;->f:Z

    .line 128
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 130
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 133
    sput-object p1, Lcn/sharesdk/framework/b/d;->b:Lcn/sharesdk/framework/b/d;

    .line 134
    iget-object p1, p0, Lcn/sharesdk/framework/b/d;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
