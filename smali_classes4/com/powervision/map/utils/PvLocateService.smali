.class public Lcom/powervision/map/utils/PvLocateService;
.super Landroid/app/Service;
.source "PvLocateService.java"


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private getAddressFlag:Z

.field private iCallBack:Lcom/powervision/map/ICallBack;

.field iLocationListener:Lcom/powervision/map/utils/LocationUtil$ILocationListener;

.field private isChina:Z

.field private locationUtil:Lcom/powervision/map/utils/LocationUtil;

.field mBinder:Lcom/powervision/map/IService$Stub;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "lzqLocateService"

    .line 26
    iput-object v0, p0, Lcom/powervision/map/utils/PvLocateService;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/powervision/map/utils/PvLocateService;->isChina:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/powervision/map/utils/PvLocateService;->getAddressFlag:Z

    .line 33
    new-instance v0, Lcom/powervision/map/utils/PvLocateService$1;

    invoke-direct {v0, p0}, Lcom/powervision/map/utils/PvLocateService$1;-><init>(Lcom/powervision/map/utils/PvLocateService;)V

    iput-object v0, p0, Lcom/powervision/map/utils/PvLocateService;->mBinder:Lcom/powervision/map/IService$Stub;

    .line 139
    new-instance v0, Lcom/powervision/map/utils/PvLocateService$3;

    invoke-direct {v0, p0}, Lcom/powervision/map/utils/PvLocateService$3;-><init>(Lcom/powervision/map/utils/PvLocateService;)V

    iput-object v0, p0, Lcom/powervision/map/utils/PvLocateService;->iLocationListener:Lcom/powervision/map/utils/LocationUtil$ILocationListener;

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/map/utils/PvLocateService;Lcom/powervision/map/ICallBack;)Lcom/powervision/map/ICallBack;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/map/utils/PvLocateService;->iCallBack:Lcom/powervision/map/ICallBack;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/map/utils/PvLocateService;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/powervision/map/utils/PvLocateService;->netLocate()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/map/utils/PvLocateService;)Lcom/powervision/map/utils/LocationUtil;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/powervision/map/utils/PvLocateService;->locationUtil:Lcom/powervision/map/utils/LocationUtil;

    return-object p0
.end method

.method private bindCell()V
    .locals 3

    const-string v0, "connectivity"

    .line 93
    invoke-virtual {p0, v0}, Lcom/powervision/map/utils/PvLocateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/powervision/map/utils/PvLocateService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 94
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 95
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/powervision/map/utils/PvLocateService;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/powervision/map/utils/PvLocateService$2;

    invoke-direct {v2, p0}, Lcom/powervision/map/utils/PvLocateService$2;-><init>(Lcom/powervision/map/utils/PvLocateService;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private netLocate()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getUserAddress()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/powervision/map/utils/PvLocateService;->mBinder:Lcom/powervision/map/IService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    invoke-direct {p0}, Lcom/powervision/map/utils/PvLocateService;->bindCell()V

    return-void
.end method
