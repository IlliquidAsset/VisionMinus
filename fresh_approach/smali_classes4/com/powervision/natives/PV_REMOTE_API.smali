.class public Lcom/powervision/natives/PV_REMOTE_API;
.super Ljava/lang/Object;
.source "PV_REMOTE_API.java"


# static fields
.field public static final _A:I = 0x1

.field public static final _B:I = 0x2

.field public static connectType:I

.field private static pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/natives/PV_REMOTE_API;
    .locals 1

    .line 36
    sget-object v0, Lcom/powervision/natives/PV_REMOTE_API;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/powervision/natives/PV_REMOTE_API;

    invoke-direct {v0}, Lcom/powervision/natives/PV_REMOTE_API;-><init>()V

    sput-object v0, Lcom/powervision/natives/PV_REMOTE_API;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    .line 39
    :cond_0
    sget-object v0, Lcom/powervision/natives/PV_REMOTE_API;->pv_remote_api:Lcom/powervision/natives/PV_REMOTE_API;

    return-object v0
.end method


# virtual methods
.method public connectDevice()V
    .locals 3

    const-string v0, "lzqRemote"

    const-string v1, "connectType"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget v1, Lcom/powervision/natives/PV_REMOTE_API;->connectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "connectDevice _A \u8fde\u63a5W4"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->connectRemote()I

    goto :goto_0

    .line 55
    :cond_0
    sget v1, Lcom/powervision/natives/connect/ConnectRemoteSDK;->currentDevice:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "connectDevice _b \u8fde\u63a5W4"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->connectRemote()I

    goto :goto_0

    :cond_1
    const-string v1, "connectDevice _b \u8fde\u63a5AP03"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->connectRemote()I

    :goto_0
    return-void
.end method

.method public connectLink()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "connectLink"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->connectLink()I

    return-void
.end method

.method public disConnectLink()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "disConnectLink"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->disConnectLink()I

    return-void
.end method

.method public disConnectRemote()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "disConnectRemote"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->disconnectRemote()V

    .line 74
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->disConnectRemote()I

    return-void
.end method

.method public registerCallBack()V
    .locals 2

    const-string v0, "lzqRemote"

    const-string v1, "registerCallBack"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/powervision/natives/JniW4RemoteNative;->registerCallbacks()I

    .line 68
    invoke-static {}, Lcom/powervision/natives/JniRemoteNative;->registerRemoteCallbacks()I

    return-void
.end method

.method public setConnectType(I)V
    .locals 0

    .line 16
    sput p1, Lcom/powervision/natives/PV_REMOTE_API;->connectType:I

    return-void
.end method
