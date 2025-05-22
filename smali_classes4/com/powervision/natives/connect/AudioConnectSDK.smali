.class public Lcom/powervision/natives/connect/AudioConnectSDK;
.super Ljava/lang/Object;
.source "AudioConnectSDK.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/natives/connect/AudioConnectSDK$ActivationConnectListener;
    }
.end annotation


# static fields
.field public static final ALTERWIFI:I = 0xb

.field public static final CONNECTED:I = 0x6

.field public static final DIS:I = 0xc

.field public static final FAILED:I = 0x4

.field private static audioConnectSDK:Lcom/powervision/natives/connect/AudioConnectSDK;


# instance fields
.field private final DISCONNECT:I

.field private final IDEAL:I

.field private final TIMEOUT:I

.field private ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

.field public connectStatus:I

.field private connectTask:Lcom/powervision/natives/connect/ConnectTask;

.field private connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field private isAudioConnected:Z

.field private powerCamSDK:Lcom/powervision/natives/PowerCamSDK;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->IDEAL:I

    const/4 v1, 0x3

    .line 18
    iput v1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->TIMEOUT:I

    const/4 v1, 0x5

    .line 22
    iput v1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->DISCONNECT:I

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectStatus:I

    .line 39
    iput-boolean v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->isAudioConnected:Z

    .line 78
    new-instance v0, Lcom/powervision/natives/connect/AudioConnectSDK$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/AudioConnectSDK$1;-><init>(Lcom/powervision/natives/connect/AudioConnectSDK;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/PowerCamSDK;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->powerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/natives/connect/AudioConnectSDK;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/powervision/natives/connect/AudioConnectSDK;->reConnectLink()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/powervision/natives/connect/AudioConnectSDK;Lcom/powervision/natives/connect/ConnectTask;)Lcom/powervision/natives/connect/ConnectTask;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/powervision/natives/connect/AudioConnectSDK;)Lcom/powervision/natives/connect/ConnectTool;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    return-object p0
.end method

.method public static getInstance()Lcom/powervision/natives/connect/AudioConnectSDK;
    .locals 2

    .line 43
    sget-object v0, Lcom/powervision/natives/connect/AudioConnectSDK;->audioConnectSDK:Lcom/powervision/natives/connect/AudioConnectSDK;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/powervision/natives/connect/AudioConnectSDK;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/powervision/natives/connect/AudioConnectSDK;->audioConnectSDK:Lcom/powervision/natives/connect/AudioConnectSDK;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/powervision/natives/connect/AudioConnectSDK;

    invoke-direct {v1}, Lcom/powervision/natives/connect/AudioConnectSDK;-><init>()V

    sput-object v1, Lcom/powervision/natives/connect/AudioConnectSDK;->audioConnectSDK:Lcom/powervision/natives/connect/AudioConnectSDK;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/natives/connect/AudioConnectSDK;->audioConnectSDK:Lcom/powervision/natives/connect/AudioConnectSDK;

    return-object v0
.end method

.method private reConnectLink()V
    .locals 3

    const-string v0, "lzqAudio"

    const-string v1, "reConnectLink 1"

    .line 140
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget v1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const-string v1, "reConnectLink 2"

    .line 144
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAudioConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->powerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->disConnetAudio()I

    .line 149
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->powerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    invoke-virtual {v0}, Lcom/powervision/natives/PowerCamSDK;->connectAudio()I

    :cond_1
    return-void
.end method


# virtual methods
.method public initAudioConnect()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnConnectAudioListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;)V

    .line 56
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->powerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->powerCamSDK:Lcom/powervision/natives/PowerCamSDK;

    const-string v0, "lzqAudio"

    const-string v2, "initActivationConnect"

    .line 59
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v2, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v2, v1, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 62
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 63
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v1, "AudioConnectSDK"

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 64
    iget-object v1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    .line 65
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    :goto_0
    return-void
.end method

.method public isAudioConnected()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->isAudioConnected:Z

    return v0
.end method

.method public onConnectAudio(I)V
    .locals 5

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectAudio res: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqAudio"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const/4 v3, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v4, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u97f3\u9891\u94fe\u8def\u5fc3\u8df3\u8d85\u65f6"

    .line 209
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v2, v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 211
    invoke-virtual {p0, v2}, Lcom/powervision/natives/connect/AudioConnectSDK;->setAudioConnected(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "\u97f3\u9891\u94fe\u8def\u8fde\u63a5\u65ad\u5f00"

    .line 203
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, v2, v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 205
    invoke-virtual {p0, v2}, Lcom/powervision/natives/connect/AudioConnectSDK;->setAudioConnected(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "\u97f3\u9891\u94fe\u8def\u8fde\u63a5\u5931\u8d25"

    .line 197
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12c

    .line 198
    invoke-virtual {p0, p1, v4}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 199
    invoke-virtual {p0, v2}, Lcom/powervision/natives/connect/AudioConnectSDK;->setAudioConnected(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "\u97f3\u9891\u94fe\u8def\u8fde\u63a5\u8d85\u65f6"

    .line 191
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, v2, v3}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/powervision/natives/connect/AudioConnectSDK;->setAudioConnected(Z)V

    goto :goto_0

    :cond_4
    const-string p1, "\u97f3\u9891\u94fe\u8def\u8fde\u63a5\u6210\u529f"

    .line 185
    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogConnectStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 186
    invoke-virtual {p0, v2, p1}, Lcom/powervision/natives/connect/AudioConnectSDK;->postTask(II)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/powervision/natives/connect/AudioConnectSDK;->setAudioConnected(Z)V

    :goto_0
    return-void
.end method

.method public postTask(II)V
    .locals 2

    .line 73
    iput p2, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectStatus:I

    .line 74
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 75
    iget-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    return-void
.end method

.method public removeCallBack()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PowerCamSDK;->setCameraNotifyOnConnectAudioListener(Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnConnectAudioListener;)V

    return-void
.end method

.method public setAp03NotifyOnConnectActivationResultListener(Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->ap03NotifyOnConnectActivationResultListener:Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;

    return-void
.end method

.method public setAudioConnected(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->isAudioConnected:Z

    return-void
.end method

.method public stopTask()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/powervision/natives/connect/AudioConnectSDK;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTool;->stopTheMasterInmedratily()V

    return-void
.end method
