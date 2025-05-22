.class public Lcom/powervision/user/api/UrnManager;
.super Ljava/lang/Object;
.source "UrnManager.java"


# static fields
.field private static volatile UT_MISS_REAL_NAME_MANAGER:Lcom/powervision/user/api/UrnManager;


# instance fields
.field private mUserApi:Lcom/powervision/user/api/UserApi;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-static {}, Lcom/powervision/base/net/RetrofitUtil;->getInstance()Lcom/powervision/base/net/RetrofitUtil;

    move-result-object v1

    const-class v2, Lcom/powervision/user/api/UserApi;

    invoke-virtual {v1, v2, v0}, Lcom/powervision/base/net/RetrofitUtil;->getGsonService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/api/UserApi;

    iput-object v0, p0, Lcom/powervision/user/api/UrnManager;->mUserApi:Lcom/powervision/user/api/UserApi;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/powervision/user/api/UrnManager;
    .locals 2

    .line 28
    sget-object v0, Lcom/powervision/user/api/UrnManager;->UT_MISS_REAL_NAME_MANAGER:Lcom/powervision/user/api/UrnManager;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/powervision/user/api/UrnManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/powervision/user/api/UrnManager;->UT_MISS_REAL_NAME_MANAGER:Lcom/powervision/user/api/UrnManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/powervision/user/api/UrnManager;

    invoke-direct {v1}, Lcom/powervision/user/api/UrnManager;-><init>()V

    sput-object v1, Lcom/powervision/user/api/UrnManager;->UT_MISS_REAL_NAME_MANAGER:Lcom/powervision/user/api/UrnManager;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/user/api/UrnManager;->UT_MISS_REAL_NAME_MANAGER:Lcom/powervision/user/api/UrnManager;

    return-object v0
.end method


# virtual methods
.method public getUserApi()Lcom/powervision/user/api/UserApi;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/powervision/user/api/UrnManager;->mUserApi:Lcom/powervision/user/api/UserApi;

    return-object v0
.end method
