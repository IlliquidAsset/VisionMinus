.class public Lcom/powervision/natives/connect/Dl01ConnectSDK;
.super Ljava/lang/Object;
.source "Dl01ConnectSDK.java"

# interfaces
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;
.implements Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;


# static fields
.field public static final ALTERUSB1:I = 0xa

.field public static final ALTERWIFI:I = 0xb

.field public static final CHECK_OK:I = 0x64

.field public static final CONNECTED:I = 0x6

.field public static final DIS:I = 0x14

.field public static final FAILED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Dl01ConnectSDK"

.field private static dl01ConnectSDK:Lcom/powervision/natives/connect/Dl01ConnectSDK;


# instance fields
.field private final CHECK_ERROR:I

.field private final DISCONNECT:I

.field private final IDEAL:I

.field private final TIMEOUT:I

.field public airConnected:Z

.field airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

.field private airStatus:I

.field private airTask:Lcom/powervision/natives/connect/ConnectTask;

.field airTool:Lcom/powervision/natives/connect/ConnectTool;

.field dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

.field private groundStatus:I

.field private groundTask:Lcom/powervision/natives/connect/ConnectTask;

.field groundTool:Lcom/powervision/natives/connect/ConnectTool;

.field onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

.field w4_api:Lcom/powervision/natives/PVSDK_W4_API;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundStatus:I

    .line 22
    iput v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->IDEAL:I

    const/4 v1, 0x3

    .line 27
    iput v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->TIMEOUT:I

    const/4 v1, 0x7

    .line 32
    iput v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->CHECK_ERROR:I

    const/4 v1, 0x5

    .line 35
    iput v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->DISCONNECT:I

    .line 138
    new-instance v1, Lcom/powervision/natives/connect/Dl01ConnectSDK$1;

    invoke-direct {v1, p0}, Lcom/powervision/natives/connect/Dl01ConnectSDK$1;-><init>(Lcom/powervision/natives/connect/Dl01ConnectSDK;)V

    iput-object v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    .line 203
    new-instance v1, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;

    invoke-direct {v1, p0}, Lcom/powervision/natives/connect/Dl01ConnectSDK$2;-><init>(Lcom/powervision/natives/connect/Dl01ConnectSDK;)V

    iput-object v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    .line 417
    iput-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    const/4 v0, 0x0

    .line 485
    iput-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p0
.end method

.method static synthetic access$002(Lcom/powervision/natives/connect/Dl01ConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/natives/connect/Dl01ConnectSDK;)I
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->air_ideal()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/natives/connect/Dl01ConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/powervision/natives/connect/Dl01ConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p1
.end method

.method private air_ideal()I
    .locals 2

    .line 373
    :goto_0
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectAir()I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, 0x320

    .line 379
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static get()Lcom/powervision/natives/connect/Dl01ConnectSDK;
    .locals 1

    .line 52
    sget-object v0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01ConnectSDK:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/powervision/natives/connect/Dl01ConnectSDK;

    invoke-direct {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;-><init>()V

    sput-object v0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01ConnectSDK:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    .line 55
    :cond_0
    sget-object v0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01ConnectSDK:Lcom/powervision/natives/connect/Dl01ConnectSDK;

    return-object v0
.end method


# virtual methods
.method public alterUsb1_a()V
    .locals 2

    .line 267
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setAirConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 268
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectAir()V

    const-string v0, "192.168.42.12"

    const/16 v1, 0x56ce

    .line 269
    invoke-static {v0, v1}, Lcom/powervision/natives/JniDl01Native;->alterAirDl01Ip(Ljava/lang/String;I)V

    .line 270
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectAir()I

    return-void
.end method

.method public alterUsb1_g()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01GrondConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 125
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconncetGround()V

    const-string v0, "192.168.42.11"

    const/16 v1, 0x56ce

    .line 126
    invoke-static {v0, v1}, Lcom/powervision/natives/JniDl01Native;->alterGroundDl01Ip(Ljava/lang/String;I)V

    .line 127
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectLinkDl01()I

    return-void
.end method

.method public alterWiFI_a()V
    .locals 2

    .line 274
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setAirConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 275
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectAir()V

    const-string v0, "192.168.1.12"

    const/16 v1, 0x56ce

    .line 276
    invoke-static {v0, v1}, Lcom/powervision/natives/JniDl01Native;->alterAirDl01Ip(Ljava/lang/String;I)V

    .line 277
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectAir()I

    return-void
.end method

.method public alterWifi_g()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01GrondConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 132
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconncetGround()V

    const-string v0, "192.168.1.11"

    const/16 v1, 0x56ce

    .line 133
    invoke-static {v0, v1}, Lcom/powervision/natives/JniDl01Native;->alterGroundDl01Ip(Ljava/lang/String;I)V

    .line 134
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectLinkDl01()I

    return-void
.end method

.method public connectGround()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectLinkDl01()I

    return-void
.end method

.method public connectGroundSuccess()V
    .locals 0

    return-void
.end method

.method public getAirStatus()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    return v0
.end method

.method public getGroundStatus()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundStatus:I

    return v0
.end method

.method public initAirConnect()V
    .locals 4

    .line 81
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setAirConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 82
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "lzqW4_dl01_a"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "initAirConnect"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "Dl01ConnectSDK"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 85
    iput v2, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    .line 86
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 87
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 88
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    iget v3, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    invoke-direct {v1, v2, v3}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    iget-object v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 90
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    if-nez v0, :cond_1

    const-string v0, "initAirConnect \u91cd\u8fde"

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 94
    invoke-virtual {p0, v2, v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initAirConnectUsb1()V
    .locals 4

    .line 100
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setAirConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    .line 101
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, 0x0

    const-string v2, "lzqW4_dl01_a"

    if-nez v0, :cond_0

    const-string v0, "initAirConnect"

    .line 102
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v2, "Dl01ConnectSDK"

    invoke-direct {v0, v2}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    const/16 v0, 0xa

    .line 104
    iput v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    .line 105
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v2, 0x2

    iput v2, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 106
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 107
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v2, Lcom/powervision/natives/connect/Ask;

    iget v3, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    invoke-direct {v2, v1, v3}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    iget-object v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 109
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    if-nez v0, :cond_1

    const-string v0, "initAirConnect \u91cd\u8fde"

    .line 112
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 113
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initGroundConnect()V
    .locals 3

    const-string v0, "lzqw4_dl"

    const-string v1, "initGroundConnect"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01GrondConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    .line 64
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    .line 67
    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->initDl01CallBack()V

    .line 69
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v2, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v2, v1, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 70
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 71
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 72
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "Dl01ConnectSDK"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 73
    iget-object v1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 74
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    :goto_0
    return-void
.end method

.method public onAirCheckError()V
    .locals 2

    const-string v0, "lzqW4_dl01_air"

    const-string v1, "onAirCheckError "

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    const/4 v1, 0x7

    .line 462
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    .line 463
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirCheckError()V

    :cond_0
    return-void
.end method

.method public onAirCheckOk()V
    .locals 2

    const-string v0, "lzqW4_dl01_air"

    const-string v1, "onAirCheckOk "

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    .line 472
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirCheckOk()V

    :cond_0
    return-void
.end method

.method public onAirDisconnect()V
    .locals 2

    const-string v0, "lzqW4_dl01_air"

    const-string v1, "onAirDisconnect "

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    const/4 v1, 0x5

    .line 432
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    .line 433
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onAirDisconnect()V

    :cond_0
    return-void
.end method

.method public onCheckError()V
    .locals 2

    const/16 v0, 0x12c

    const/4 v1, 0x4

    .line 351
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 352
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onCheckError()V

    :cond_0
    return-void
.end method

.method public onCheckOk()V
    .locals 2

    const-string v0, "lzqW4_dl01_g"

    const-string v1, "checkout"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 361
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onCheckOk()V

    :cond_0
    return-void
.end method

.method public onConnectAirFailed()V
    .locals 2

    const-string v0, "lzqW4_dl01_air"

    const-string v1, "onConnectAirFailed "

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    const/16 v0, 0x12c

    const/4 v1, 0x4

    .line 452
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    .line 453
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirFailed()V

    :cond_0
    return-void
.end method

.method public onConnectAirSuccess()V
    .locals 2

    const-string v0, "lzqW4_dl01_air"

    const-string v1, "onConnectAirSuccess "

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 421
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    .line 422
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirSuccess()V

    :cond_0
    return-void
.end method

.method public onConnectAirTimeOut()V
    .locals 2

    const-string v0, "lzqW4_dl01_air"

    const-string v1, "onConnectAirTimeOut "

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnected:Z

    const/4 v1, 0x3

    .line 442
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postAirStatus(II)V

    .line 443
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;->onConnectAirTimeOut()V

    :cond_0
    return-void
.end method

.method public onConnectLinkFailed()V
    .locals 2

    const-string v0, "lzqW4_dl01_g"

    const-string v1, "onConnectLinkFailed"

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    const/4 v1, 0x4

    .line 343
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 344
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkFailed()V

    :cond_0
    return-void
.end method

.method public onConnectLinkSuccess()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 313
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz v0, :cond_0

    const-string v0, "lzqW4_dl01_g"

    const-string v1, "onConnectLinkSuccessonConnectLinkSuccessonConnectLinkSuccessonConnectLinkSuccess"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkSuccess()V

    :cond_0
    return-void
.end method

.method public onConnectLinkTimeOut()V
    .locals 2

    const-string v0, "lzqW4_dl01_g"

    const-string v1, "onConnectLinkTimeOut"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 333
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 334
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onConnectLinkTimeOut()V

    :cond_0
    return-void
.end method

.method public onLinkDisconnect()V
    .locals 2

    const-string v0, "lzqW4_dl01_g"

    const-string v1, "onLinkDisconnect"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 324
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->postGroundStatus(II)V

    .line 325
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0}, Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;->onLinkDisconnect()V

    :cond_0
    return-void
.end method

.method public postAirStatus(II)V
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postAirStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4_dl01_air"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 413
    iget-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    .line 414
    iput p2, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    return-void
.end method

.method public postGroundStatus(II)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 391
    iget-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    .line 392
    iput p2, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundStatus:I

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "postGroundStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Dl01ConnectSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reConnectToAir()V
    .locals 2

    const-string v0, "lzqW4_dl01_a"

    const-string v1, "\u8fde\u63a5"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    return-void

    .line 404
    :cond_0
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAirConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 405
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnectAir()V

    .line 406
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectAir()I

    return-void
.end method

.method public reConnectToGround()V
    .locals 4

    const-string v0, "lzqW4_dl01_g"

    const-string v1, "\u8fde\u63a5"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTask:Lcom/powervision/natives/connect/ConnectTask;

    monitor-enter v0

    .line 286
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 288
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 290
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    iget v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isGroundConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconncetGround()V

    .line 299
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connectLinkDl01()I

    return-void

    .line 290
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public releaseCallBack_Air()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->stopTheMasterInmedratily()V

    return-void
.end method

.method public releaseCallBack_ground()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->groundTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->stopTheMasterInmedratily()V

    return-void
.end method

.method public removeAirCallBack()V
    .locals 2

    .line 530
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setAirConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V

    return-void
.end method

.method public removeGroundCallBack()V
    .locals 2

    .line 527
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setDl01GrondConnectListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V

    return-void
.end method

.method public setAirConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    if-nez v0, :cond_0

    .line 501
    iput-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->airConnectionListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01AirConnectListener;

    :cond_0
    return-void
.end method

.method public setGroundConnectionListener(Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->dl01GrondConnectListener:Lcom/powervision/natives/callback/Dl01ConnectCallback$Dl01GrondConnectListener;

    return-void
.end method

.method public setOnDisConnectLinkListener(Lcom/powervision/natives/callback/OnDisConnectLinkListener;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/powervision/natives/connect/Dl01ConnectSDK;->onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

    return-void
.end method
