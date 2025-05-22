.class public Lcom/umeng/commonsdk/internal/c;
.super Ljava/lang/Object;
.source "UMInternalDataProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field public static final a:Ljava/lang/String; = "umeng_sp_zdata"

.field public static final b:Ljava/lang/String; = "umeng_zdata"

.field public static final c:Ljava/lang/String; = "umeng_zdata_req_ts"

.field private static e:I = 0x1

.field private static final f:Ljava/lang/String; = "info"

.field private static final g:Ljava/lang/String; = "stat"

.field private static h:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/reflect/Method; = null

.field private static j:Ljava/lang/reflect/Method; = null

.field private static final k:Ljava/lang/String; = "com.umeng.umzid.Spy"

.field private static l:Z = false


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/umeng/commonsdk/internal/c;->b()V

    .line 93
    invoke-static {}, Lcom/umeng/commonsdk/internal/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_ASMS_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 135
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/umeng/commonsdk/internal/c;->j:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 158
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appkey"

    .line 159
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    .line 160
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v2, "Android"

    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 163
    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->ZCFG_PATH:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildZeroEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MobclickRT"

    if-eqz p1, :cond_0

    :try_start_1
    const-string v1, "exception"

    .line 164
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "--->>> \u6784\u5efa\u96f6\u53f7\u62a5\u6587\u5931\u8d25."

    .line 165
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "--->>> \u6784\u5efa\u96f6\u53f7\u62a5\u6587 \u6210\u529f!!!"

    .line 168
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 242
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/internal/c$2;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b()V
    .locals 4

    .line 97
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->shouldCollectZData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget v0, Lcom/umeng/commonsdk/internal/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/umeng/commonsdk/internal/c;->e:I

    :try_start_0
    const-string v0, "com.umeng.umzid.Spy"

    .line 100
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/Class;

    const-string v1, "getID"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 103
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->i:Ljava/lang/reflect/Method;

    .line 107
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/Class;

    const-string v1, "getVersion"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->j:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/internal/c$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/internal/c$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .line 123
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->h:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/umeng/commonsdk/internal/c;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "header_device_oaid"

    .line 257
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 259
    new-instance v0, Lcom/umeng/commonsdk/internal/c$3;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$3;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 12

    .line 176
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/bc;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/bc;

    move-result-object v0

    const-string v1, "stf"

    .line 177
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/bc;->a(Ljava/lang/String;)Lcom/umeng/analytics/pro/bd;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "MobclickRT"

    const-string v4, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u6784\u5efa\u6210\u771f\u6b63\u4fe1\u5c01\u3002"

    .line 179
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v4, v2, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/String;

    .line 182
    iget-object v10, v2, Lcom/umeng/analytics/pro/bd;->b:Ljava/lang/String;

    .line 183
    new-instance v7, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/umeng/analytics/pro/bd;->c:Ljava/lang/String;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v8, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/umeng/analytics/pro/bd;->d:Ljava/lang/String;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    iget-object v9, v2, Lcom/umeng/analytics/pro/bd;->e:Ljava/lang/String;

    .line 186
    iget-object v11, v2, Lcom/umeng/analytics/pro/bd;->f:Ljava/lang/String;

    .line 188
    new-instance v5, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v5}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 189
    iget-object v2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v5 .. v11}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "exception"

    .line 190
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u6784\u5efa\u771f\u6b63\u4fe1\u5c01 \u5931\u8d25\u3002\u5220\u9664\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55"

    .line 191
    invoke-static {v3, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u6784\u5efa\u771f\u6b63\u4fe1\u5c01 \u6210\u529f! \u5220\u9664\u4e8c\u7ea7\u7f13\u5b58\u8bb0\u5f55\u3002"

    .line 193
    invoke-static {v3, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-virtual {v0, v1, v4}, Lcom/umeng/analytics/pro/bc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/bc;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 644
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "umeng_zcfg_flag"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 647
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 291
    sget-boolean v0, Lcom/umeng/commonsdk/internal/c;->l:Z

    const-string v1, "header_device_oaid"

    if-nez v0, :cond_0

    .line 292
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 294
    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->l:Z

    .line 295
    new-instance v0, Lcom/umeng/commonsdk/internal/c$4;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$4;-><init>(Lcom/umeng/commonsdk/internal/c;)V

    .line 319
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 324
    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->l:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "header_device_oaid"

    .line 336
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 340
    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->l:Z

    .line 341
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->registerInterruptFlag()V

    .line 343
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigureImpl;->init(Landroid/content/Context;)V

    .line 345
    sget v1, Lcom/umeng/commonsdk/internal/c;->e:I

    add-int/2addr v1, v0

    sput v1, Lcom/umeng/commonsdk/internal/c;->e:I

    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u8981\u8bfb\u53d6 oaid\uff0c\u9700\u7b49\u5f85\u8bfb\u53d6\u7ed3\u679c."

    .line 347
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/umeng/commonsdk/internal/c$5;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$5;-><init>(Lcom/umeng/commonsdk/internal/c;)V

    .line 363
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->registerMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V

    .line 365
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 637
    sget v0, Lcom/umeng/commonsdk/internal/c;->e:I

    if-gtz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->h()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u771f\u5b9e\u6784\u5efa\u6761\u4ef6\u6ee1\u8db3\uff0c\u5f00\u59cb\u6784\u5efa\u4e1a\u52a1\u4fe1\u5c01\u3002"

    .line 654
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->d(Landroid/content/Context;)V

    .line 661
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/a;->a(Landroid/content/Context;)V

    .line 663
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    const/16 v1, 0x2010

    .line 664
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 663
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    const v1, 0x8011

    .line 668
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v2

    .line 667
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[internal] workEvent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "walle"

    .line 373
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x8001

    const-string v4, "[internal] workEvent send envelope"

    if-eq p2, v1, :cond_b

    const v1, 0x800d

    const-string v5, "MobclickRT"

    if-eq p2, v1, :cond_9

    const v1, 0x8021

    if-eq p2, v1, :cond_8

    const-string v1, "com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent"

    const/4 v6, 0x2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "--->>> \u6b63\u5e38\u51b7\u542f\u52a8\u6d41\u7a0b\uff0c\u63a5\u6536\u5230\u4e91\u63a7\u914d\u7f6e\u52a0\u8f7d\u6210\u529f\u901a\u77e5\u3002"

    .line 532
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/internal/c;->c(Landroid/content/Context;)V

    .line 534
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/a;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "--->>> \u6210\u529f\u63a5\u6536\u5230(OAID)\u8bfb\u53d6\u7ed3\u675f\u901a\u77e5\u3002"

    .line 515
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget p1, Lcom/umeng/commonsdk/internal/c;->e:I

    sub-int/2addr p1, v0

    sput p1, Lcom/umeng/commonsdk/internal/c;->e:I

    .line 517
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->g()V

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "--->>> \u6210\u529f\u63a5\u6536\u5230(ZDATA)\u8bfb\u53d6\u7ed3\u675f\u901a\u77e5\u3002"

    .line 527
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget p1, Lcom/umeng/commonsdk/internal/c;->e:I

    sub-int/2addr p1, v0

    sput p1, Lcom/umeng/commonsdk/internal/c;->e:I

    .line 529
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->g()V

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "--->>> \u4e91\u63a7\u4e0b\u53d1\u53c2\u6570\u66f4\u65b0\uff0c\u89e6\u53d1 \u4f2a\u51b7\u542f\u52a8\u3002"

    .line 614
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/umeng/commonsdk/statistics/b;->a()V

    .line 616
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->e()V

    const-string p1, "header_foreground_count"

    .line 617
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 618
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "--->>> \u4e91\u63a7\u4e0b\u53d1\u53c2\u6570\u66f4\u65b0 \u524d\u53f0\u8ba1\u6570\u5668\u529f\u80fd \u6253\u5f00\uff0c\u89e6\u53d1 5\u79d2\u5468\u671f\u68c0\u67e5\u673a\u5236"

    .line 619
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v6, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    const/16 v7, 0x2015

    .line 621
    invoke-static {v6}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x1388

    .line 620
    invoke-static/range {v6 .. v11}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    :cond_0
    const-string p1, "header_first_resume"

    .line 624
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "--->>> \u4e91\u63a7\u4e0b\u53d1\u53c2\u6570\u66f4\u65b0 FirstResume\u529f\u80fd \u6253\u5f00\uff0c\u89e6\u53d1 trigger"

    .line 625
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_4
    :try_start_0
    const-string p1, "--->>> \u89e6\u53d12\u53f7\u4ed3\u9057\u7559\u4fe1\u5c01\u68c0\u67e5\u52a8\u4f5c\u3002"

    .line 577
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 580
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    .line 581
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 589
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 590
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 598
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 599
    new-instance p1, Lcom/umeng/commonsdk/stateless/b;

    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/stateless/b;-><init>(Landroid/content/Context;)V

    .line 600
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->b()V

    goto/16 :goto_1

    :cond_3
    const-string p1, "--->>> \u89e6\u53d12\u53f7\u4ed3\u9057\u7559\u4fe1\u5c01\u68c0\u67e5\uff0cSender\u5df2\u521b\u5efa\uff0c\u4e0d\u9700\u8981\u5904\u7406\u3002"

    .line 602
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string p1, "--->>> \u89e6\u53d12\u53f7\u4ed3\u9057\u7559\u4fe1\u5c01\u68c0\u67e5\uff0c\u6ca1\u6709\u9700\u8981\u5904\u7406\u7684\u76ee\u5f55\uff0c\u4e0d\u9700\u8981\u5904\u7406\u3002"

    .line 605
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_1

    .line 572
    :pswitch_5
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->buildEnvelope(Landroid/content/Context;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    const-string p1, "--->>> [\u6709\u72b6\u6001]\u63a5\u6536\u5230\u6d88\u8d39\u4e8c\u7ea7\u7f13\u5b58\u6570\u636e\u901a\u77e5."

    .line 537
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/bc;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/bc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bc;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "--->>> [\u6709\u72b6\u6001]\u5df2\u6d88\u8d39\u5b8c\u6bd5,\u4e8c\u7ea7\u7f13\u5b58\u6570\u636e\u5e93\u4e3a\u7a7a."

    .line 539
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 543
    :cond_5
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->d()V

    const p1, 0x8011

    .line 545
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result p2

    if-nez p2, :cond_c

    .line 546
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    .line 547
    invoke-static {p2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    .line 546
    invoke-static {p2, p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    const-string p1, "--->>> \u96f6\u53f7\u62a5\u6587\u6d41\u7a0b\uff0c\u63a5\u6536\u5230\u4e91\u63a7\u914d\u7f6e\u52a0\u8f7d\u6210\u529f\u901a\u77e5(\u6210\u529f\u6536\u5230\u96f6\u53f7\u62a5\u6587\u5e94\u7b54)\u3002"

    .line 520
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->f()V

    .line 522
    sget p1, Lcom/umeng/commonsdk/internal/c;->e:I

    sub-int/2addr p1, v0

    sput p1, Lcom/umeng/commonsdk/internal/c;->e:I

    .line 523
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->g()V

    goto/16 :goto_1

    .line 509
    :pswitch_8
    check-cast p1, Lcom/umeng/commonsdk/vchannel/b;

    .line 511
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/vchannel/Sender;->handleEvent(Landroid/content/Context;Lcom/umeng/commonsdk/vchannel/b;)V

    goto/16 :goto_1

    .line 485
    :pswitch_9
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    if-nez p1, :cond_6

    return-void

    :cond_6
    const p2, 0x8015

    :try_start_1
    const-string v0, "umeng_sp_zdata"

    .line 489
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 491
    invoke-static {}, Lcom/umeng/commonsdk/internal/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 493
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz p1, :cond_7

    .line 494
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v6, "umeng_zdata"

    .line 495
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "umeng_zdata_req_ts"

    sub-long/2addr v4, v2

    .line 496
    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :catchall_0
    :cond_7
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    .line 503
    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    .line 502
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    :try_start_2
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 398
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "i_sdk_v"

    const-string v1, "1.2.0"

    .line 400
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 402
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "inner"

    .line 403
    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string p2, "exception"

    .line 405
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[internal] workEvent send envelope back, result is ok"

    aput-object p2, p1, v3

    .line 407
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 476
    :pswitch_b
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "info"

    .line 477
    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 479
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    check-cast p1, Ljava/lang/String;

    const-string v0, "stat"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :pswitch_c
    :try_start_3
    const-string p2, "com.umeng.commonsdk.internal.utils.InfoPreferenceAgent"

    .line 463
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_c

    const-string v1, "saveUA"

    new-array v2, v6, [Ljava/lang/Class;

    .line 465
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 466
    check-cast p1, Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    .line 467
    iget-object v4, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_d
    const-string p1, "com.umeng.commonsdk.internal.utils.ApplicationLayerUtilAgent"

    .line 449
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string p2, "wifiChange"

    new-array v1, v0, [Ljava/lang/Class;

    .line 451
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    aput-object v1, v0, v3

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :pswitch_e
    new-array p2, v0, [Ljava/lang/Object;

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[internal] workEvent cache station, event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    invoke-static {v2, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_c

    const-string v1, "saveBaseStationStrength"

    new-array v2, v6, [Ljava/lang/Class;

    .line 436
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 437
    check-cast p1, Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    .line 438
    iget-object v4, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :pswitch_f
    new-array p2, v0, [Ljava/lang/Object;

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[internal] workEvent cache battery, event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    invoke-static {v2, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_c

    const-string v1, "saveBattery"

    new-array v2, v6, [Ljava/lang/Class;

    .line 419
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 420
    check-cast p1, Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    .line 421
    iget-object v4, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 565
    :cond_8
    :try_start_6
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/debug/SelfChecker;->doCheck(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 554
    :cond_9
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    sget-object p2, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "--->>> \u6784\u5efa\u96f6\u53f7\u62a5\u6587"

    .line 555
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_a
    const-string p1, "--->>> \u96f6\u53f7\u62a5\u6587\u4fe1\u5c01\u6587\u4ef6\u5df2\u5b58\u5728\uff0c\u5c1d\u8bd5\u53d1\u9001\u4e4b!"

    .line 558
    invoke-static {v5, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    :try_start_7
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 379
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    const-string p1, "com.umeng.commonsdk.internal.UMInternalManagerAgent"

    .line 382
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string p2, "sendInternalEnvelopeByStateful2"

    new-array v1, v0, [Ljava/lang/Class;

    .line 384
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->d:Landroid/content/Context;

    aput-object v1, v0, v3

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_0
    :catchall_1
    :cond_c
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8003
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8006
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8010
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
