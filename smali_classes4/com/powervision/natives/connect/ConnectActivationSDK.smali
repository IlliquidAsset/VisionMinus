.class public Lcom/powervision/natives/connect/ConnectActivationSDK;
.super Ljava/lang/Object;
.source "ConnectActivationSDK.java"

# interfaces
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;
    }
.end annotation


# static fields
.field public static final ALTERWIFI:I = 0xb

.field public static final CONNECTED:I = 0x6

.field public static final DIS:I = 0xc

.field public static final FAILED:I = 0x4

.field private static connectActivationSDK:Lcom/powervision/natives/connect/ConnectActivationSDK;


# instance fields
.field private final DISCONNECT:I

.field private final IDEAL:I

.field private final TIMEOUT:I

.field private activationConnectListener:Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;

.field private ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

.field public connectStatus:I

.field private connectTask:Lcom/powervision/natives/connect/ConnectTask;

.field private connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field private mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->IDEAL:I

    const/4 v1, 0x3

    .line 17
    iput v1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->TIMEOUT:I

    const/4 v1, 0x5

    .line 21
    iput v1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->DISCONNECT:I

    .line 29
    iput v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectStatus:I

    .line 74
    new-instance v0, Lcom/powervision/natives/connect/ConnectActivationSDK$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/ConnectActivationSDK$1;-><init>(Lcom/powervision/natives/connect/ConnectActivationSDK;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/PVSDK_AP03_API;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/natives/connect/ConnectActivationSDK;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->reConnectLink()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/powervision/natives/connect/ConnectActivationSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/powervision/natives/connect/ConnectActivationSDK;)Lcom/powervision/natives/connect/ConnectTool;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-object p0
.end method

.method private alterActivationWifi()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disconnectActivationLink()I

    .line 187
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->connectActivationLink()I

    return-void
.end method

.method public static getInstance()Lcom/powervision/natives/connect/ConnectActivationSDK;
    .locals 2

    .line 39
    sget-object v0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectActivationSDK:Lcom/powervision/natives/connect/ConnectActivationSDK;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/powervision/natives/connect/ConnectActivationSDK;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectActivationSDK:Lcom/powervision/natives/connect/ConnectActivationSDK;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-direct {v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;-><init>()V

    sput-object v1, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectActivationSDK:Lcom/powervision/natives/connect/ConnectActivationSDK;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectActivationSDK:Lcom/powervision/natives/connect/ConnectActivationSDK;

    return-object v0
.end method

.method private reConnectLink()V
    .locals 2

    .line 170
    iget v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03ActivationConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "huangActivation"

    const-string v1, "relink"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->disconnectActivationLink()I

    .line 180
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->connectActivationLink()I

    :cond_1
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 4

    .line 133
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->queryActivationStatus()I

    .line 135
    new-instance v0, Lcom/powervision/natives/connect/ConnectActivationSDK$2;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/ConnectActivationSDK$2;-><init>(Lcom/powervision/natives/connect/ConnectActivationSDK;)V

    .line 141
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x1f4

    .line 142
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 143
    new-instance v0, Lcom/powervision/natives/connect/ConnectActivationSDK$3;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/ConnectActivationSDK$3;-><init>(Lcom/powervision/natives/connect/ConnectActivationSDK;)V

    .line 151
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x7d0

    .line 152
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 154
    new-instance v0, Lcom/powervision/natives/connect/ConnectActivationSDK$4;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/ConnectActivationSDK$4;-><init>(Lcom/powervision/natives/connect/ConnectActivationSDK;)V

    .line 160
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0xbb8

    .line 161
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public initActivationConnect()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnConnectActivationResultListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;)V

    .line 52
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->mPowerSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v0, "huangActivation"

    const-string v2, "initActivationConnect"

    .line 55
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v2, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v2, v1, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 57
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 58
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 59
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "ConnectActivationSDK"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 60
    iget-object v1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    :goto_0
    return-void
.end method

.method public postCommandTask(II)V
    .locals 2

    .line 69
    iput p2, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectStatus:I

    .line 70
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 71
    iget-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    return-void
.end method

.method public releaseActivationCallBack()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->stopTheMasterInmedratily()V

    return-void
.end method

.method public removeCallBack()V
    .locals 2

    .line 239
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setAp03NotifyOnConnectActivationResultListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;)V

    return-void
.end method

.method public setActivationConnectListener(Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->activationConnectListener:Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;

    if-nez v0, :cond_0

    .line 257
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->activationConnectListener:Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;

    :cond_0
    return-void
.end method

.method public setAp03NotifyOnConnectActivationResultListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    return-void
.end method

.method public setConnectActivationLinkDisconnect()V
    .locals 2

    const-string v0, "huangActivation"

    const-string v1, "setConnectActivationLinkDisconnect"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->activationConnectListener:Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;->onActivationDisConnect()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    return-void
.end method

.method public setConnectActivationLinkFailed()V
    .locals 2

    const-string v0, "huangActivation"

    const-string v1, "setConnectActivationLinkFailed"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->activationConnectListener:Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;->onActivationConnectFailed()V

    :cond_0
    const/16 v0, 0x12c

    const/4 v1, 0x4

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    return-void
.end method

.method public setConnectActivationLinkSuccess()V
    .locals 2

    const-string v0, "huangActivation"

    const-string v1, "setConnectActivationLinkSuccess"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->activationConnectListener:Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;->onActivationConnect()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    return-void
.end method

.method public setConnectActivationLinkTimeout()V
    .locals 2

    const-string v0, "huangActivation"

    const-string v1, "setConnectActivationLinkTimeout"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/powervision/natives/connect/ConnectActivationSDK;->activationConnectListener:Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/powervision/natives/connect/ConnectActivationSDK$ActivationConnectListener;->onActivationConnectTimeout()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/ConnectActivationSDK;->postCommandTask(II)V

    return-void
.end method
