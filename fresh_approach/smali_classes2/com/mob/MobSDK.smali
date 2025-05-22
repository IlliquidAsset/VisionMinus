.class public Lcom/mob/MobSDK;
.super Ljava/lang/Object;
.source "MobSDK.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field public static final CHANNEL_APICLOUD:I = 0x5

.field public static final CHANNEL_COCOS:I = 0x1

.field public static final CHANNEL_FLUTTER:I = 0x4

.field public static final CHANNEL_JS:I = 0x3

.field public static final CHANNEL_NATIVE:I = 0x0

.field public static final CHANNEL_QUICKSDK:I = 0x6

.field public static final CHANNEL_UNIAPP:I = 0x7

.field public static final CHANNEL_UNITY:I = 0x2

.field public static final POLICY_TYPE_TXT:I = 0x2

.field public static final POLICY_TYPE_URL:I = 0x1

.field public static final SDK_VERSION_CODE:I

.field public static final SDK_VERSION_NAME:Ljava/lang/String;

.field private static a:Landroid/content/Context; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static volatile d:Z = false

.field private static e:Lcom/mob/commons/InternationalDomain; = null

.field private static volatile f:Z = false

.field private static volatile g:Z = false

.field private static volatile h:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "-"

    const-string v1, "2021-03-08"

    const-string v2, "1.0.0"

    :try_start_0
    const-string v3, "."

    .line 67
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 68
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 70
    :goto_0
    sput v0, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    .line 71
    sput-object v2, Lcom/mob/MobSDK;->SDK_VERSION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 39
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 145
    :try_start_0
    sget-object v1, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 147
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    const-string p0, "Mob-AppKey"

    .line 151
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    const-string p1, "Mob-AppSecret"

    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    const-string p1, "Mob-AppSeret"

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_3
    sput-object p0, Lcom/mob/MobSDK;->b:Ljava/lang/String;

    .line 163
    sput-object p1, Lcom/mob/MobSDK;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized addUserWatcher(Lcom/mob/MobUser$UserWatcher;)V
    .locals 1

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 738
    :try_start_0
    invoke-static {p0}, Lcom/mob/MobUser;->a(Lcom/mob/MobUser$UserWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 740
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method static synthetic b()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/mob/MobSDK;->i()V

    return-void
.end method

.method private static c()V
    .locals 5

    const-string v0, "==============================="

    .line 103
    invoke-static {}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->get()Lcom/mob/commons/logcollector/DefaultLogsCollector;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/log/NLog;->setDefaultCollector(Lcom/mob/tools/log/LogCollector;)Lcom/mob/tools/log/LogCollector;

    move-result-object v1

    check-cast v1, Lcom/mob/commons/logcollector/DefaultLogsCollector;

    sget v2, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    const-string v3, "MOBSDK"

    invoke-virtual {v1, v3, v2}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->addSDK(Ljava/lang/String;I)V

    .line 105
    :try_start_0
    invoke-static {v3}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v1, v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobCommons name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mob/MobSDK;->SDK_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static canIContinueBusiness(Lcom/mob/commons/MobProduct;Lcom/mob/commons/dialog/entity/InternalPolicyUi;Lcom/mob/OperationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            "Lcom/mob/commons/dialog/entity/InternalPolicyUi;",
            "Lcom/mob/OperationCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 707
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/MobSDK$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/mob/MobSDK$5;-><init>(Lcom/mob/commons/MobProduct;Lcom/mob/OperationCallback;Lcom/mob/commons/dialog/entity/InternalPolicyUi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 720
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 705
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkForceHttps()Z
    .locals 1

    .line 254
    invoke-static {}, Lcom/mob/MobSDK;->e()V

    .line 255
    sget-boolean v0, Lcom/mob/MobSDK;->f:Z

    return v0
.end method

.method public static checkPpNecessary()Z
    .locals 1

    .line 262
    invoke-static {}, Lcom/mob/MobSDK;->e()V

    .line 263
    sget-boolean v0, Lcom/mob/MobSDK;->g:Z

    return v0
.end method

.method public static checkRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 278
    invoke-static {p0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkV6()Z
    .locals 1

    .line 267
    invoke-static {}, Lcom/mob/MobSDK;->e()V

    .line 268
    sget-boolean v0, Lcom/mob/MobSDK;->h:Z

    return v0
.end method

.method public static declared-synchronized clearUser()V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    .line 733
    :try_start_0
    invoke-static {}, Lcom/mob/MobUser;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static d()Z
    .locals 8

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 117
    array-length v3, v1

    if-lez v3, :cond_2

    .line 119
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 120
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.app.Instrumentation"

    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v6, "callApplicationOnCreate"

    .line 122
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const-string v7, "android.app.ActivityThread"

    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "handleBindApplication"

    .line 127
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    const-string v1, "MobSDK"

    const-string v2, "Please invoke MobSDK.init(context) method in your application onCreate()"

    .line 136
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public static dynamicModifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 288
    invoke-static {p0}, Lcom/mob/commons/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e()V
    .locals 5

    const-string v0, "Mob-Https"

    .line 168
    sget-object v1, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v0, "MobSDK"

    const-string v1, "Please invoke MobSDK.init(context) method firstly."

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_0
    sget-boolean v1, Lcom/mob/MobSDK;->d:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 173
    sput-boolean v1, Lcom/mob/MobSDK;->d:Z

    const/4 v1, 0x0

    .line 176
    :try_start_0
    sget-object v2, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    .line 177
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 176
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 178
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    .line 180
    :goto_0
    sget-object v3, Lcom/mob/MobSDK;->e:Lcom/mob/commons/InternationalDomain;

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    :try_start_1
    const-string v3, "Domain"

    .line 183
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v3}, Lcom/mob/commons/InternationalDomain;->domainOf(Ljava/lang/String;)Lcom/mob/commons/InternationalDomain;

    move-result-object v3

    sput-object v3, Lcom/mob/MobSDK;->e:Lcom/mob/commons/InternationalDomain;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 186
    :catchall_1
    sget-object v3, Lcom/mob/commons/InternationalDomain;->DEFAULT:Lcom/mob/commons/InternationalDomain;

    sput-object v3, Lcom/mob/MobSDK;->e:Lcom/mob/commons/InternationalDomain;

    goto :goto_1

    .line 189
    :cond_1
    sget-object v3, Lcom/mob/commons/InternationalDomain;->DEFAULT:Lcom/mob/commons/InternationalDomain;

    sput-object v3, Lcom/mob/MobSDK;->e:Lcom/mob/commons/InternationalDomain;

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 196
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    nop

    :goto_2
    if-nez v1, :cond_3

    .line 200
    :try_start_3
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mob/MobSDK;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    nop

    goto :goto_3

    :cond_3
    const-string v0, "yes"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mob/MobSDK;->f:Z

    :cond_4
    :goto_3
    const/4 v0, 0x0

    if-eqz v2, :cond_5

    :try_start_4
    const-string v1, "Mob-PpNecessary"

    .line 208
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/mob/MobSDK;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    nop

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    :try_start_5
    const-string v1, "Mob-V6"

    .line 213
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mob/MobSDK;->h:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 216
    :catchall_5
    :cond_6
    invoke-static {}, Lcom/mob/commons/i;->I()V

    :cond_7
    return-void
.end method

.method public static exchangeIds([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 769
    invoke-static {p0}, Lcom/mob/MobUser;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private static f()Z
    .locals 1

    .line 223
    invoke-static {}, Lcom/mob/commons/b;->ac()Z

    move-result v0

    return v0
.end method

.method private static g()Z
    .locals 1

    .line 229
    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result v0

    return v0
.end method

.method public static getAppSecret()Ljava/lang/String;
    .locals 1

    .line 531
    sget-object v0, Lcom/mob/MobSDK;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppkey()Ljava/lang/String;
    .locals 1

    .line 527
    sget-object v0, Lcom/mob/MobSDK;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 3

    .line 335
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 337
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/DeviceHelper;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "getApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 339
    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 341
    invoke-static {v0}, Lcom/mob/MobSDK;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 345
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 348
    :cond_0
    :goto_0
    sget-object v0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getDomain()Lcom/mob/commons/InternationalDomain;
    .locals 1

    .line 233
    sget-object v0, Lcom/mob/MobSDK;->e:Lcom/mob/commons/InternationalDomain;

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/mob/MobSDK;->e()V

    .line 236
    :cond_0
    sget-object v0, Lcom/mob/MobSDK;->e:Lcom/mob/commons/InternationalDomain;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mob/commons/InternationalDomain;->DEFAULT:Lcom/mob/commons/InternationalDomain;

    :cond_1
    return-object v0
.end method

.method public static getPrivacyPolicy(I)Lcom/mob/PrivacyPolicy;
    .locals 1

    const/4 v0, 0x0

    .line 545
    invoke-static {p0, v0}, Lcom/mob/MobSDK;->getPrivacyPolicy(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivacyPolicy(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    .line 561
    :cond_0
    :try_start_0
    new-instance p0, Lcom/mob/commons/h;

    invoke-direct {p0}, Lcom/mob/commons/h;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/mob/commons/h;->a(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 563
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPrivacyPolicyAsync(ILcom/mob/PrivacyPolicy$OnPolicyListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-static {p0, v0, p1}, Lcom/mob/MobSDK;->getPrivacyPolicyAsync(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V

    return-void
.end method

.method public static getPrivacyPolicyAsync(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 587
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/MobSDK$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mob/MobSDK$2;-><init>(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 626
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getUser(Lcom/mob/MobUser$OnUserGotListener;)V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    .line 759
    :try_start_0
    new-instance v1, Lcom/mob/MobSDK$6;

    invoke-direct {v1, p0}, Lcom/mob/MobSDK$6;-><init>(Lcom/mob/MobUser$OnUserGotListener;)V

    invoke-static {v1}, Lcom/mob/MobUser;->a(Lcom/mob/MobUser$OnUserGotListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static h()V
    .locals 2

    .line 292
    invoke-static {}, Lcom/mob/commons/MobProductCollector;->syncInit()V

    .line 295
    :try_start_0
    new-instance v0, Lcom/mob/MobSDK$1;

    invoke-direct {v0}, Lcom/mob/MobSDK$1;-><init>()V

    .line 316
    invoke-virtual {v0}, Lcom/mob/MobSDK$1;->start()V

    .line 317
    invoke-static {}, Lcom/mob/commons/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 319
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static i()V
    .locals 5

    .line 327
    invoke-static {}, Lcom/mob/commons/i;->G()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mob/commons/i;->j(J)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-static {p0, v1, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/mob/MobSDK;->a:Landroid/content/Context;

    .line 85
    invoke-static {p1, p2}, Lcom/mob/MobSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/mob/MobSDK;->e()V

    .line 87
    invoke-static {}, Lcom/mob/MobSDK;->c()V

    .line 88
    invoke-static {}, Lcom/mob/MobSDK;->d()Z

    .line 89
    invoke-static {}, Lcom/mob/MobSDK;->h()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 92
    sget-object p0, Lcom/mob/MobSDK;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .line 93
    sput-object p1, Lcom/mob/MobSDK;->b:Ljava/lang/String;

    .line 94
    sput-object p2, Lcom/mob/MobSDK;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 97
    invoke-static {}, Lcom/mob/commons/b;->aq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final isAuth()I
    .locals 5

    .line 431
    invoke-static {}, Lcom/mob/commons/a;->c()Z

    move-result v0

    .line 432
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuth(). ppNece: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_2

    .line 435
    invoke-static {}, Lcom/mob/commons/a;->k()Ljava/lang/Boolean;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuth(). isAgreePp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 451
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuth(). isAuth: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "[2:ppms-off\uff0c1:agr\uff0c0:unkwn\uff0c-1:disagr]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method public static final isForb()Z
    .locals 5

    .line 395
    invoke-static {}, Lcom/mob/commons/a;->c()Z

    move-result v0

    .line 396
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForb(). ppNece: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_2

    .line 399
    invoke-static {}, Lcom/mob/commons/a;->d()Z

    move-result v0

    .line 400
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForb(). isAgrPp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lcom/mob/MobSDK;->f()Z

    move-result v0

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {}, Lcom/mob/commons/a;->i()Z

    move-result v0

    .line 407
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForb(). funcStch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_1

    .line 410
    invoke-static {}, Lcom/mob/MobSDK;->f()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->f()Z

    move-result v0

    .line 420
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForb(). isForb: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method public static final isGpAvailable()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final isGppVer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isMob()Z
    .locals 5

    .line 359
    invoke-static {}, Lcom/mob/commons/a;->c()Z

    move-result v0

    .line 360
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMob(). ppNece: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_2

    .line 363
    invoke-static {}, Lcom/mob/commons/a;->d()Z

    move-result v0

    .line 364
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMob(). isAgrPp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Lcom/mob/MobSDK;->g()Z

    move-result v0

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {}, Lcom/mob/commons/a;->j()Z

    move-result v0

    .line 371
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMob(). cltSch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz v0, :cond_1

    .line 374
    invoke-static {}, Lcom/mob/MobSDK;->g()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->g()Z

    move-result v0

    .line 384
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMob(). isMob: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method public static declared-synchronized removeUserWatcher(Lcom/mob/MobUser$UserWatcher;)V
    .locals 1

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 744
    :try_start_0
    invoke-static {p0}, Lcom/mob/MobUser;->b(Lcom/mob/MobUser$UserWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 746
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static setAllowDialog(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setChannel(Lcom/mob/commons/MobProduct;I)V
    .locals 1

    .line 535
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/commons/f;->a(Lcom/mob/commons/MobProduct;I)V

    return-void
.end method

.method public static setDomain(Lcom/mob/commons/InternationalDomain;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    sput-object p0, Lcom/mob/MobSDK;->e:Lcom/mob/commons/InternationalDomain;

    return-void
.end method

.method public static setPolicyUi(Lcom/mob/commons/dialog/entity/MobPolicyUi;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static declared-synchronized setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    const/4 v1, 0x0

    .line 724
    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/mob/MobSDK;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/mob/MobSDK;

    monitor-enter v0

    .line 729
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mob/MobUser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static submitPermissionGrantResult(ZLcom/mob/commons/MobProduct;Lcom/mob/OperationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/mob/commons/MobProduct;",
            "Lcom/mob/OperationCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 667
    new-instance p1, Lcom/mob/MobSDK$4;

    invoke-direct {p1, p2}, Lcom/mob/MobSDK$4;-><init>(Lcom/mob/OperationCallback;)V

    invoke-static {p0, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :cond_0
    return-void
.end method

.method public static submitPolicyGrantResult(ZLcom/mob/OperationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/mob/OperationCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 637
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/MobSDK$3;

    invoke-direct {v1, p0, p1}, Lcom/mob/MobSDK$3;-><init>(ZLcom/mob/OperationCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 655
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
