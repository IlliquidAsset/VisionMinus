.class public final Lcom/powervision/user/api/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static volatile sUserManager:Lcom/powervision/user/api/UserManager;


# instance fields
.field private mUserApi:Lcom/powervision/user/api/UserApi;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/powervision/base/net/RetrofitHelper;->getRetrofitHelper()Lcom/powervision/base/net/RetrofitHelper;

    move-result-object v0

    const-class v1, Lcom/powervision/user/api/UserApi;

    invoke-virtual {v0, v1}, Lcom/powervision/base/net/RetrofitHelper;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/user/api/UserApi;

    iput-object v0, p0, Lcom/powervision/user/api/UserManager;->mUserApi:Lcom/powervision/user/api/UserApi;

    return-void
.end method

.method public static getInstance()Lcom/powervision/user/api/UserManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/powervision/user/api/UserManager;->sUserManager:Lcom/powervision/user/api/UserManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/powervision/user/api/UserManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/powervision/user/api/UserManager;->sUserManager:Lcom/powervision/user/api/UserManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/powervision/user/api/UserManager;

    invoke-direct {v1}, Lcom/powervision/user/api/UserManager;-><init>()V

    sput-object v1, Lcom/powervision/user/api/UserManager;->sUserManager:Lcom/powervision/user/api/UserManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/user/api/UserManager;->sUserManager:Lcom/powervision/user/api/UserManager;

    return-object v0
.end method


# virtual methods
.method public getUserApi()Lcom/powervision/user/api/UserApi;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/user/api/UserManager;->mUserApi:Lcom/powervision/user/api/UserApi;

    return-object v0
.end method
