.class public Lcom/powervision/natives/connect/Ap03ConnectSdk;
.super Ljava/lang/Object;
.source "Ap03ConnectSdk.java"

# interfaces
.implements Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;
.implements Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;
    }
.end annotation


# static fields
.field public static final ALTERIP_USB1:I = 0xc

.field public static final ALTERIP_WIFI:I = 0xd

.field public static final DEVICE_FAILED:I = 0x5

.field public static final DIS:I = 0x14

.field private static SDK:Lcom/powervision/natives/connect/Ap03ConnectSdk; = null

.field private static final TAG:Ljava/lang/String; = "lzqAp03"

.field public static isConnected:Z = false


# instance fields
.field private final DEVICE_CONNECTED:I

.field private final DEVICE_DISCONNECT:I

.field private final DEVICE_TIMEOUT:I

.field private final HEART_RECOVERY:I

.field private final HEART_TIMEOUT:I

.field private final IDEAL:I

.field private final LINK_CONNECTED:I

.field private final LINK_DISCONNECT:I

.field private final LINK_FAILED:I

.field private final LINK_TIMEOUT:I

.field private ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

.field private ap03SysWarnListener:Lcom/powervision/sdk/callback/Ap03SysWarnListener;

.field private connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

.field private connectTask:Lcom/powervision/natives/connect/ConnectTask;

.field connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field device_start:J

.field public isArmed:Z

.field link_start:J

.field private mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDeviceLockChangeListener:Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;

.field onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->IDEAL:I

    const/4 v1, 0x1

    .line 35
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->LINK_FAILED:I

    const/4 v1, 0x2

    .line 37
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->LINK_DISCONNECT:I

    const/4 v1, 0x4

    .line 39
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->LINK_CONNECTED:I

    const/4 v1, 0x3

    .line 41
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->LINK_TIMEOUT:I

    const/4 v1, 0x6

    .line 46
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->DEVICE_TIMEOUT:I

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->DEVICE_DISCONNECT:I

    const/16 v1, 0x9

    .line 50
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->DEVICE_CONNECTED:I

    const/16 v1, 0xa

    .line 52
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->HEART_TIMEOUT:I

    const/16 v1, 0xb

    .line 54
    iput v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->HEART_RECOVERY:I

    .line 62
    iput-boolean v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    .line 76
    iput-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 102
    new-instance v0, Lcom/powervision/natives/connect/Ap03ConnectSdk$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/Ap03ConnectSdk$1;-><init>(Lcom/powervision/natives/connect/Ap03ConnectSdk;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03SysWarnListener:Lcom/powervision/sdk/callback/Ap03SysWarnListener;

    .line 118
    new-instance v0, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/Ap03ConnectSdk$2;-><init>(Lcom/powervision/natives/connect/Ap03ConnectSdk;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    .line 269
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    .line 322
    iput-wide v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->link_start:J

    .line 323
    iput-wide v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->device_start:J

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/natives/connect/Ap03ConnectSdk;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/natives/connect/Ap03ConnectSdk;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p1
.end method

.method public static getInstance()Lcom/powervision/natives/connect/Ap03ConnectSdk;
    .locals 1

    .line 70
    sget-object v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->SDK:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-direct {v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;-><init>()V

    sput-object v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->SDK:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    .line 73
    :cond_0
    sget-object v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->SDK:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    return-object v0
.end method

.method public static isDroneConnectStatus()Z
    .locals 1

    .line 443
    sget-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    return v0
.end method


# virtual methods
.method public addConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public alterIp_USB1()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectDevice()I

    .line 231
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectLink()I

    .line 233
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->connectLink()I

    return-void
.end method

.method public alterIp_Wifi()V
    .locals 2

    const-string v0, "lzqAp03"

    const-string v1, " alterIp_Wifi  =======1"

    .line 237
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectDevice()I

    .line 239
    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectLink()I

    .line 241
    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->connectLink()I

    const-string v1, " alterIp_Wifi  =======2"

    .line 242
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connectSuccess()V
    .locals 2

    const-string v0, "lzqAp03"

    const-string v1, "\u6210\u529f\u8fde\u63a5AP03 before threadID = "

    .line 226
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getArmStatus(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LOCK"

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 456
    iput-boolean p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    .line 458
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    const-string v0, "AP03_D_Flight"

    const-string v1, ""

    .line 459
    invoke-static {v0, v1, v1, v1}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 458
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "UNLOCK"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 461
    iput-boolean p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    .line 463
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "BP_FLY_START_TIME"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mOnDeviceLockChangeListener:Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;

    if-eqz p1, :cond_2

    .line 467
    iget-boolean v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    invoke-interface {p1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;->onDeviceLockStateChange(Z)V

    .line 470
    :cond_2
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    .line 471
    iget-boolean v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    if-eqz v0, :cond_3

    .line 472
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->startRecordLog()V

    goto :goto_1

    .line 474
    :cond_3
    invoke-virtual {p1}, Lcom/powervision/base/base/BaseApplication;->stopRecordLog()V

    .line 477
    :goto_1
    iget-boolean v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    invoke-virtual {p1, v0}, Lcom/powervision/base/base/BaseApplication;->controlIsUtMissUpload(Z)V

    .line 479
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    invoke-virtual {p1, v0}, Lcom/powervision/base/base/lifecycle/ActivityManager;->setArm(Z)V

    return-void
.end method

.method public getLockStatus()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isArmed:Z

    return v0
.end method

.method public ideal()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectDevice()I

    const-string v0, "lzqAp03"

    const-string v1, "ideal 1"

    .line 111
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectLink()I

    const-string v1, "ideal 2"

    .line 113
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_AP03_API;->connectLink()I

    const-string v1, "ideal 3"

    .line 115
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initConnect()V
    .locals 5

    .line 79
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V

    .line 80
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V

    .line 81
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->addAp03NotifyOnArmStatusWarningListener(Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnArmStatusWarningListener;)V

    .line 82
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03SysWarnListener:Lcom/powervision/sdk/callback/Ap03SysWarnListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->addAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    .line 84
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x1

    const-string v2, "lzqAp03"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 86
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v4, "Ap03ConnectSdk"

    invoke-direct {v0, v4}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 87
    iget-object v4, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v4}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 88
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v4, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v4, v3, v3}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v3, 0x2

    iput v3, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 90
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 91
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->initBodyCallBack()V

    .line 92
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->initGimalCallBack()V

    .line 93
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCommandConnect Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u53c8\u60f3\u8fdb\u6765\u8fde\u63a5\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 96
    invoke-static {v2, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sput-boolean v3, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v0, 0x3

    .line 98
    invoke-virtual {p0, v3, v0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    :goto_0
    return-void
.end method

.method public notifyConnectListeners(I)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 274
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onHeartbeatTimeout()V

    .line 312
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->disConnected()V

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onHeartbeatRecovery()V

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceConnectTimeout()V

    .line 305
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->disConnected()V

    goto :goto_0

    .line 300
    :pswitch_3
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceDisConnect()V

    .line 301
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->disConnected()V

    goto :goto_0

    .line 296
    :pswitch_4
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceConnectFailed()V

    .line 297
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->disConnected()V

    goto :goto_0

    .line 293
    :pswitch_5
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onDeviceConnected()V

    goto :goto_0

    .line 289
    :pswitch_6
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainConnectTimeout()V

    .line 290
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->disConnected()V

    goto :goto_0

    .line 285
    :pswitch_7
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainDisconnected()V

    .line 286
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->disConnected()V

    goto :goto_0

    .line 281
    :pswitch_8
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainConnectFailed()V

    .line 282
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/lifecycle/ActivityManager;->disConnected()V

    goto :goto_0

    .line 278
    :pswitch_9
    invoke-interface {v1}, Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;->onChainConnected()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConnectFailed()V
    .locals 3

    const/4 v0, 0x0

    .line 339
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const-string v1, "lzqAp03"

    const-string v2, " connectedStatus: LINK_FAILED 1"

    .line 340
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 341
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    const/16 v2, 0x12c

    .line 343
    invoke-virtual {p0, v2, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 3

    const/4 v0, 0x0

    .line 330
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    .line 331
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    const-string v1, "lzqAp03"

    const-string v2, "connectedStatus: LINK_CONNECTED 4"

    .line 333
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 334
    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onConnectTimeOut()V
    .locals 3

    const/4 v0, 0x0

    .line 358
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const-string v1, "lzqAp03"

    const-string v2, "\u56de\u8c03 connectedStatus: LINK_TIMEOUT 3"

    .line 359
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 360
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    .line 362
    invoke-virtual {p0, v0, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onDeviceConnectFailed()V
    .locals 4

    const/4 v0, 0x0

    .line 376
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v1, 0x5

    .line 377
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    const-string v2, "lzqAp03"

    const-string v3, "\u56de\u8c03 connectedStatus: onDeviceConnectFailed  5"

    .line 378
    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v0, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 2

    const/4 v0, 0x1

    .line 367
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v0, 0x4

    .line 368
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    const-string v0, "lzqAp03"

    const-string v1, "\u56de\u8c03 connectedStatus: onDeviceConnectSuccess 9"

    .line 369
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 370
    invoke-virtual {p0, v0, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onDeviceConnectTimeOut()V
    .locals 3

    const/4 v0, 0x0

    .line 393
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v1, 0x7

    .line 394
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    const-string v1, "lzqAp03"

    const-string v2, "\u56de\u8c03 connectedStatus: onDeviceConnectTimeOut 6"

    .line 395
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 396
    invoke-virtual {p0, v0, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onDeviceDisConnected()V
    .locals 3

    const/4 v0, 0x0

    .line 384
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v1, 0x6

    .line 385
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->device_start:J

    const-string v1, "lzqAp03"

    const-string v2, "\u56de\u8c03 connectedStatus: onDeviceDisConnected 8"

    .line 387
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 388
    invoke-virtual {p0, v0, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onDisConnected()V
    .locals 4

    const/4 v0, 0x0

    .line 348
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/4 v1, 0x2

    .line 350
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->link_start:J

    const-string v2, "lzqAp03"

    const-string v3, "\u56de\u8c03 connectedStatus: LINK_DISCONNECT 2"

    .line 352
    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12c

    .line 353
    invoke-virtual {p0, v2, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onHeartbeatRecovered()V
    .locals 2

    const/4 v0, 0x1

    .line 401
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/16 v0, 0x8

    .line 402
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    const-string v0, "lzqAp03"

    const-string v1, "\u56de\u8c03 connectedStatus: onHeartbeatRecovered 11"

    .line 404
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 405
    invoke-virtual {p0, v0, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onHeartbeatTimeOut()V
    .locals 3

    const/4 v0, 0x0

    .line 410
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const-string v1, "lzqAp03"

    const-string v2, "\u56de\u8c03 connectedStatus: onHeartbeatTimeOut 10"

    .line 411
    invoke-static {v1, v2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 412
    invoke-virtual {p0, v1}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    const/16 v1, 0xa

    .line 413
    invoke-virtual {p0, v0, v1, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->postStatus(IIZ)V

    return-void
.end method

.method public onSelfDisConnect()V
    .locals 1

    const/4 v0, 0x0

    .line 418
    sput-boolean v0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    const/16 v0, 0x64

    .line 419
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->notifyConnectListeners(I)V

    return-void
.end method

.method public postStatus(IIZ)V
    .locals 1

    .line 253
    iget-object p3, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v0, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v0, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {p3, v0}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 254
    iget-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    const/16 p1, 0x14

    if-ne p2, p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/powervision/natives/connect/Ap03ConnectSdk;->onSelfDisConnect()V

    :cond_0
    return-void
.end method

.method public releaseCallBack()V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTheMasterInmedratily "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAp03"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->stopTheMasterInmedratily()V

    return-void
.end method

.method public relink()V
    .locals 3

    const-string v0, "lzqAp03"

    const-string v1, "relink() 1 "

    .line 211
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-boolean v1, Lcom/powervision/natives/connect/Ap03ConnectSdk;->isConnected:Z

    if-eqz v1, :cond_0

    return-void

    .line 215
    :cond_0
    sget-object v1, Lcom/powervision/natives/JniAOAChannelNative;->isAp03BodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "relink() 2"

    .line 216
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectDevice()I

    .line 218
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disConnectLink()I

    .line 219
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03Api:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->connectLink()I

    return-void
.end method

.method public removeCallBack()V
    .locals 2

    .line 487
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setConnectionDevicceListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionDevicceListener;)V

    .line 488
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setConnectionLinkListener(Lcom/powervision/natives/callback/SystemStatusCallback$ConnectionLinkListener;)V

    .line 489
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->ap03SysWarnListener:Lcom/powervision/sdk/callback/Ap03SysWarnListener;

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->removeAp03SysWarnListener(Lcom/powervision/sdk/callback/Ap03SysWarnListener;)V

    return-void
.end method

.method public removeConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setConnectListener(Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;)V
    .locals 1

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;

    if-nez v0, :cond_0

    .line 263
    iput-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->connectListener:Lcom/powervision/natives/connect/PVConnectHelper$ConnectListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnDeviceLockChangeListener(Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->mOnDeviceLockChangeListener:Lcom/powervision/natives/connect/Ap03ConnectSdk$OnDeviceLockChangeListener;

    return-void
.end method

.method public setOnDisConnectLinkListener(Lcom/powervision/natives/callback/OnDisConnectLinkListener;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk;->onDisConnectLinkListener:Lcom/powervision/natives/callback/OnDisConnectLinkListener;

    return-void
.end method
