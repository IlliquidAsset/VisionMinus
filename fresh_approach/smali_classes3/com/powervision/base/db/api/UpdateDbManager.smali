.class public Lcom/powervision/base/db/api/UpdateDbManager;
.super Ljava/lang/Object;
.source "UpdateDbManager.java"


# static fields
.field private static volatile sLoginManager:Lcom/powervision/base/db/api/UpdateDbManager;


# instance fields
.field private dbApi:Lcom/powervision/base/db/api/DBApi;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/powervision/base/net/RetrofitUtil;->getInstance()Lcom/powervision/base/net/RetrofitUtil;

    move-result-object v0

    const-class v1, Lcom/powervision/base/db/api/DBApi;

    invoke-static {}, Lcom/powervision/base/config/Ap03GlobalConfig;->getDbNoFlyZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/net/RetrofitUtil;->getGsonService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/db/api/DBApi;

    iput-object v0, p0, Lcom/powervision/base/db/api/UpdateDbManager;->dbApi:Lcom/powervision/base/db/api/DBApi;

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/db/api/UpdateDbManager;
    .locals 2

    .line 21
    sget-object v0, Lcom/powervision/base/db/api/UpdateDbManager;->sLoginManager:Lcom/powervision/base/db/api/UpdateDbManager;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/powervision/base/db/api/UpdateDbManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/powervision/base/db/api/UpdateDbManager;->sLoginManager:Lcom/powervision/base/db/api/UpdateDbManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/powervision/base/db/api/UpdateDbManager;

    invoke-direct {v1}, Lcom/powervision/base/db/api/UpdateDbManager;-><init>()V

    sput-object v1, Lcom/powervision/base/db/api/UpdateDbManager;->sLoginManager:Lcom/powervision/base/db/api/UpdateDbManager;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/db/api/UpdateDbManager;->sLoginManager:Lcom/powervision/base/db/api/UpdateDbManager;

    return-object v0
.end method


# virtual methods
.method public getDbApi()Lcom/powervision/base/db/api/DBApi;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/base/db/api/UpdateDbManager;->dbApi:Lcom/powervision/base/db/api/DBApi;

    return-object v0
.end method
