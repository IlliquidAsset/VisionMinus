.class public Lcom/powervision/map/utils/PVMapManager;
.super Ljava/lang/Object;
.source "PVMapManager.java"


# static fields
.field private static final IN_CHINA:I = 0x1

.field private static final NO_ADDRESS:I = -0x1

.field private static final OUT_CHINA:I = 0x2

.field private static pvMapManager:Lcom/powervision/map/utils/PVMapManager;


# instance fields
.field private address:I

.field private getAddressFlag:Z

.field private loateByBd:Z

.field public mService:Lcom/powervision/map/IService;

.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lzq"

    .line 22
    iput-object v0, p0, Lcom/powervision/map/utils/PVMapManager;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/powervision/map/utils/PVMapManager;->getAddressFlag:Z

    .line 32
    iput-boolean v0, p0, Lcom/powervision/map/utils/PVMapManager;->loateByBd:Z

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/powervision/map/utils/PVMapManager;->address:I

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/map/utils/PvLocateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    invoke-virtual {p0, p1}, Lcom/powervision/map/utils/PVMapManager;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/map/utils/PVMapManager;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/powervision/map/utils/PVMapManager;->address:I

    return p1
.end method

.method static synthetic access$102(Lcom/powervision/map/utils/PVMapManager;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/powervision/map/utils/PVMapManager;->loateByBd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/powervision/map/utils/PVMapManager;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/powervision/map/utils/PVMapManager;->locateByBaidu(Landroid/content/Context;)V

    return-void
.end method

.method private locateByBaidu(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 3

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/map/utils/PvLocateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/powervision/map/utils/PVMapManager$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/map/utils/PVMapManager$1;-><init>(Lcom/powervision/map/utils/PVMapManager;Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public getIntance(Landroid/content/Context;)V
    .locals 1

    .line 41
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/powervision/map/utils/PVMapManager;->pvMapManager:Lcom/powervision/map/utils/PVMapManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/powervision/map/utils/PVMapManager;

    invoke-direct {v0, p1}, Lcom/powervision/map/utils/PVMapManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/powervision/map/utils/PVMapManager;->pvMapManager:Lcom/powervision/map/utils/PVMapManager;

    :cond_0
    return-void

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "context must be an Application Context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopLocation()V
    .locals 0

    return-void
.end method
