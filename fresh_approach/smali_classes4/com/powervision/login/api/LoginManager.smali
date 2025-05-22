.class public final Lcom/powervision/login/api/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field private static volatile sLoginManager:Lcom/powervision/login/api/LoginManager;


# instance fields
.field private mLoginApi:Lcom/powervision/login/api/LoginApi;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/powervision/base/net/RetrofitHelper;->getRetrofitHelper()Lcom/powervision/base/net/RetrofitHelper;

    move-result-object v0

    const-class v1, Lcom/powervision/login/api/LoginApi;

    invoke-virtual {v0, v1}, Lcom/powervision/base/net/RetrofitHelper;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/login/api/LoginApi;

    iput-object v0, p0, Lcom/powervision/login/api/LoginManager;->mLoginApi:Lcom/powervision/login/api/LoginApi;

    return-void
.end method

.method public static getInstance()Lcom/powervision/login/api/LoginManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/powervision/login/api/LoginManager;->sLoginManager:Lcom/powervision/login/api/LoginManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/powervision/login/api/LoginManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/powervision/login/api/LoginManager;->sLoginManager:Lcom/powervision/login/api/LoginManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/powervision/login/api/LoginManager;

    invoke-direct {v1}, Lcom/powervision/login/api/LoginManager;-><init>()V

    sput-object v1, Lcom/powervision/login/api/LoginManager;->sLoginManager:Lcom/powervision/login/api/LoginManager;

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
    sget-object v0, Lcom/powervision/login/api/LoginManager;->sLoginManager:Lcom/powervision/login/api/LoginManager;

    return-object v0
.end method


# virtual methods
.method public getLoginApi()Lcom/powervision/login/api/LoginApi;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/login/api/LoginManager;->mLoginApi:Lcom/powervision/login/api/LoginApi;

    return-object v0
.end method
