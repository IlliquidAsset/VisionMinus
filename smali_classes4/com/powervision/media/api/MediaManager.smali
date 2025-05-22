.class public Lcom/powervision/media/api/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# static fields
.field private static volatile sMediaManager:Lcom/powervision/media/api/MediaManager;


# instance fields
.field private mMediaApi:Lcom/powervision/media/api/MediaApi;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/powervision/base/net/RetrofitUtil;->getInstance()Lcom/powervision/base/net/RetrofitUtil;

    move-result-object v0

    const-class v1, Lcom/powervision/media/api/MediaApi;

    const-string v2, "http://192.168.1.10/pv-ap03/"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/net/RetrofitUtil;->getService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/media/api/MediaApi;

    iput-object v0, p0, Lcom/powervision/media/api/MediaManager;->mMediaApi:Lcom/powervision/media/api/MediaApi;

    return-void
.end method

.method public static getInstance()Lcom/powervision/media/api/MediaManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/powervision/media/api/MediaManager;->sMediaManager:Lcom/powervision/media/api/MediaManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/powervision/media/api/MediaManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/powervision/media/api/MediaManager;->sMediaManager:Lcom/powervision/media/api/MediaManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/powervision/media/api/MediaManager;

    invoke-direct {v1}, Lcom/powervision/media/api/MediaManager;-><init>()V

    sput-object v1, Lcom/powervision/media/api/MediaManager;->sMediaManager:Lcom/powervision/media/api/MediaManager;

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
    sget-object v0, Lcom/powervision/media/api/MediaManager;->sMediaManager:Lcom/powervision/media/api/MediaManager;

    return-object v0
.end method


# virtual methods
.method public getMediaApi()Lcom/powervision/media/api/MediaApi;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/powervision/media/api/MediaManager;->mMediaApi:Lcom/powervision/media/api/MediaApi;

    return-object v0
.end method
