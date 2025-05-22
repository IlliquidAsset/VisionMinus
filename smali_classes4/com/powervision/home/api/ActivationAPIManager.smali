.class public final Lcom/powervision/home/api/ActivationAPIManager;
.super Ljava/lang/Object;
.source "ActivationAPIManager.java"


# static fields
.field private static volatile sActivationAPIManager:Lcom/powervision/home/api/ActivationAPIManager;


# instance fields
.field private mActivationApi:Lcom/powervision/home/api/ActivationApi;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/powervision/base/net/RetrofitHelper;->getRetrofitHelper()Lcom/powervision/base/net/RetrofitHelper;

    move-result-object v0

    const-class v1, Lcom/powervision/home/api/ActivationApi;

    invoke-virtual {v0, v1}, Lcom/powervision/base/net/RetrofitHelper;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/home/api/ActivationApi;

    iput-object v0, p0, Lcom/powervision/home/api/ActivationAPIManager;->mActivationApi:Lcom/powervision/home/api/ActivationApi;

    return-void
.end method

.method public static getInstance()Lcom/powervision/home/api/ActivationAPIManager;
    .locals 2

    .line 16
    sget-object v0, Lcom/powervision/home/api/ActivationAPIManager;->sActivationAPIManager:Lcom/powervision/home/api/ActivationAPIManager;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/powervision/home/api/ActivationAPIManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/powervision/home/api/ActivationAPIManager;->sActivationAPIManager:Lcom/powervision/home/api/ActivationAPIManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/powervision/home/api/ActivationAPIManager;

    invoke-direct {v1}, Lcom/powervision/home/api/ActivationAPIManager;-><init>()V

    sput-object v1, Lcom/powervision/home/api/ActivationAPIManager;->sActivationAPIManager:Lcom/powervision/home/api/ActivationAPIManager;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/home/api/ActivationAPIManager;->sActivationAPIManager:Lcom/powervision/home/api/ActivationAPIManager;

    return-object v0
.end method


# virtual methods
.method public getActivationApi()Lcom/powervision/home/api/ActivationApi;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/home/api/ActivationAPIManager;->mActivationApi:Lcom/powervision/home/api/ActivationApi;

    return-object v0
.end method
