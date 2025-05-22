.class public Lcom/powervision/natives/JniAOAChannelNative;
.super Ljava/lang/Object;
.source "JniAOAChannelNative.java"


# static fields
.field public static final ACTIVATION_CONNECT:I = 0x2aa3

.field public static final AP03_BODY:I = 0x285d

.field public static final AP03_UPGRADER_COMMAND:I = 0x28ca

.field public static final AP03_UPGRADER_DATA:I = 0x28cb

.field public static final AUDIO:I = 0x293b

.field public static final BODY:I = 0x2ee2

.field public static final BODY_CONTRL:I = 0x29aa

.field public static final BODY_DATA:I = 0x29ab

.field public static final CAM_COMMAND:I = 0x2a88

.field public static final CAM_STATUS:I = 0x2a89

.field public static final CANCEL:I = 0x41

.field public static final CANCEL_RECEIVE:I = 0x5

.field public static final DATA_RECEIVE:I = 0x2

.field public static final DIS_NET:I = 0x30

.field public static final DL01_AIR:I = 0x2fbe

.field public static final DL01_GROUND:I = 0x2bd6

.field public static final DL01_REMOTE_FTP_CON:I = 0x2b0d

.field public static final DL01_REMOTE_FTP_DATA:I = 0x2b0c

.field public static final FAILED:I = 0x32

.field public static final FAILED_RECEIVE:I = 0x3

.field public static final HTTP:I = 0x2760

.field public static final HTTP_DOWNLOAD:I = 0x2761

.field public static final NORMAL:I = 0x1

.field public static final NO_FLY_ZONE:I = 0x2aa2

.field public static final REMOTE:I = 0x2afa

.field public static final SONAR_CTRL:I = 0x4a3a

.field public static final SONAR_IMAGE:I = 0x4a39

.field public static final START:I = 0x31

.field public static final START_RECEIVE:I = 0x1

.field public static final W4_CAMERA:I = 0x2947

.field public static isAirConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isAp03ActivationConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isAp03BodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isAp03CameraCommandConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isAp03CameraStatusConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isAudioConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isBodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isDl01_Con_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isDl01_Data_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isFtp_Aconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isFtp_BConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isGroundConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isNoFlyZoneConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isRemoteConnect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isBodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isRemoteConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isGroundConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAirConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isFtp_Aconnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isFtp_BConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isDl01_Con_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isDl01_Data_conneect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03BodyConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraCommandConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03CameraStatusConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAp03ActivationConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isNoFlyZoneConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/powervision/natives/JniAOAChannelNative;->isAudioConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectAOAChannel(I)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getAoaCallBack()Lcom/powervision/natives/callback/AOACallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getAoaCallBack()Lcom/powervision/natives/callback/AOACallBack;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/AOACallBack;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method public static disconnectAOAChannel(I)V
    .locals 1

    .line 103
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getAoaCallBack()Lcom/powervision/natives/callback/AOACallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->getAoaCallBack()Lcom/powervision/natives/callback/AOACallBack;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/powervision/natives/callback/AOACallBack;->onDisconnect(I)V

    goto :goto_0

    :cond_0
    const-string p0, "lzqup"

    const-string v0, "java disconnectAOAChannel getAoaCallBack == null "

    .line 106
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synchronized native onConnect(II)I
.end method

.method public static synchronized native onRead(I[B)I
.end method

.method public static declared-synchronized sendBuf(I[BI)I
    .locals 2

    const-class v0, Lcom/powervision/natives/JniAOAChannelNative;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->getAoaCallBack()Lcom/powervision/natives/callback/AOACallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/PVSDK_W4_API;->getAoaCallBack()Lcom/powervision/natives/callback/AOACallBack;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lcom/powervision/natives/callback/AOACallBack;->onSend(I[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p0, 0x1

    .line 123
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
