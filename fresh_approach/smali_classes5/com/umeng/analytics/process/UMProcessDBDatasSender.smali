.class public Lcom/umeng/analytics/process/UMProcessDBDatasSender;
.super Ljava/lang/Object;
.source "UMProcessDBDatasSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;,
        Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;
    }
.end annotation


# static fields
.field public static final UM_PROCESS_CONSTRUCTMESSAGE:I = 0x9052

.field public static final UM_PROCESS_EVENT_KEY:I = 0x9051

.field private static executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneralBodyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

.field private mPolicySelector:Lcom/umeng/analytics/pro/n$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructMessage()V
    .locals 4

    .line 405
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->defconProcesserHandler()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;)V

    return-void
.end method

.method private defconProcesserHandler()I
    .locals 4

    .line 443
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 449
    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;

    invoke-direct {v3, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V

    invoke-static {v2, v3, v1}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :catch_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v2

    const-string v3, "_main_"

    invoke-virtual {v2, v3, v1, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return v0
.end method

.method private generalBody()Lorg/json/JSONObject;
    .locals 7

    const-string v0, "userlevel"

    const/4 v1, 0x0

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    if-nez v2, :cond_0

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readMainEvents(JLjava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    .line 306
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 316
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 317
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "provider"

    .line 318
    aget-object v2, v0, v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "puid"

    .line 319
    aget-object v0, v0, v3

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "active_user"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 327
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "group_info"

    .line 328
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-object v1
.end method

.method private generalHeader()Lorg/json/JSONObject;
    .locals 8

    const-string v0, "$ud_da"

    const-string v1, "$pr_ve"

    const-string v2, "pr_ve"

    .line 209
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 211
    :try_start_0
    sget-object v4, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "wrapper_version"

    .line 212
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wrapper_type"

    .line 213
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_0
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v4

    const-string v5, "vertical_type"

    .line 217
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const-string v6, "9.3.3"

    const-string v7, "sdk_version"

    if-ne v4, v5, :cond_2

    .line 219
    :try_start_1
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v4

    .line 223
    :goto_0
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :goto_1
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ""

    if-lez v4, :cond_3

    .line 233
    :try_start_2
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v4

    iget-object v6, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readVersionInfoFromColumId(Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "__av"

    .line 235
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__vc"

    .line 236
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v5

    .line 241
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "app_version"

    if-eqz v6, :cond_4

    .line 242
    :try_start_3
    iget-object v5, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 244
    :cond_4
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "version_code"

    if-eqz v5, :cond_5

    .line 248
    :try_start_4
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 250
    :cond_5
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :goto_4
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "secret"

    .line 256
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_6
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    iget-object v6, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 264
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const-string v7, "ud_da"

    invoke-static {v2, v7, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pro_ver"

    const-string v5, "1.0.0"

    .line 268
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "vers_pre_version"

    const-string v4, "0"

    .line 273
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vers_date"

    .line 276
    invoke-interface {v6, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_5
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBDatasSender;
    .locals 2

    .line 69
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-direct {v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;-><init>()V

    sput-object v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    iput-object p0, v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "analytics"

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteMainProcessEventDatasByIds(Ljava/util/List;)V

    .line 124
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .locals 6

    .line 146
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)I

    move-result p1

    .line 149
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->generalBody()Lorg/json/JSONObject;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->generalHeader()Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 164
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x3

    const-string v5, "analytics"

    if-ne p1, v4, :cond_1

    .line 166
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 168
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 169
    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "header"

    .line 173
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 177
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 178
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    const-string v4, "userlevel"

    const-string v5, "active_user"

    if-ne p2, v0, :cond_5

    .line 180
    :try_start_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_4

    return-object v1

    .line 183
    :cond_4
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    return-object v1

    .line 187
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 188
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 189
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    const-string p1, "content"

    .line 194
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_7
    return-object v2
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .locals 3

    .line 85
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "MobclickRT"

    const-string p2, "--->>> recv UM_PROCESS_CONSTRUCTMESSAGE msg."

    .line 102
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->constructMessage()V

    goto :goto_0

    .line 91
    :pswitch_1
    sget-object p1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;

    invoke-direct {p2, p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9051
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
