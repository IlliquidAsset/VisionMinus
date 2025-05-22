.class public final Lcn/powervision/upgrade/api/UpgradeAPIManager;
.super Ljava/lang/Object;
.source "UpgradeAPIManager.java"


# static fields
.field private static volatile sFirmwareUpgradeManager:Lcn/powervision/upgrade/api/UpgradeAPIManager;


# instance fields
.field private mFirmwareApi:Lcn/powervision/upgrade/api/FirmwareApi;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/powervision/base/net/RetrofitHelper;->getRetrofitHelper()Lcom/powervision/base/net/RetrofitHelper;

    move-result-object v0

    const-class v1, Lcn/powervision/upgrade/api/FirmwareApi;

    invoke-virtual {v0, v1}, Lcom/powervision/base/net/RetrofitHelper;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/powervision/upgrade/api/FirmwareApi;

    iput-object v0, p0, Lcn/powervision/upgrade/api/UpgradeAPIManager;->mFirmwareApi:Lcn/powervision/upgrade/api/FirmwareApi;

    return-void
.end method

.method public static getInstance()Lcn/powervision/upgrade/api/UpgradeAPIManager;
    .locals 2

    .line 16
    sget-object v0, Lcn/powervision/upgrade/api/UpgradeAPIManager;->sFirmwareUpgradeManager:Lcn/powervision/upgrade/api/UpgradeAPIManager;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcn/powervision/upgrade/api/UpgradeAPIManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcn/powervision/upgrade/api/UpgradeAPIManager;->sFirmwareUpgradeManager:Lcn/powervision/upgrade/api/UpgradeAPIManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcn/powervision/upgrade/api/UpgradeAPIManager;

    invoke-direct {v1}, Lcn/powervision/upgrade/api/UpgradeAPIManager;-><init>()V

    sput-object v1, Lcn/powervision/upgrade/api/UpgradeAPIManager;->sFirmwareUpgradeManager:Lcn/powervision/upgrade/api/UpgradeAPIManager;

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
    sget-object v0, Lcn/powervision/upgrade/api/UpgradeAPIManager;->sFirmwareUpgradeManager:Lcn/powervision/upgrade/api/UpgradeAPIManager;

    return-object v0
.end method


# virtual methods
.method public getFirmwareApi()Lcn/powervision/upgrade/api/FirmwareApi;
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/powervision/upgrade/api/UpgradeAPIManager;->mFirmwareApi:Lcn/powervision/upgrade/api/FirmwareApi;

    return-object v0
.end method
