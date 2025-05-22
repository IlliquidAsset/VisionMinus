.class public Lcom/powervision/natives/connect/W49342ConnectSdk;
.super Ljava/lang/Object;
.source "W49342ConnectSdk.java"

# interfaces
.implements Lcom/powervision/natives/callback/W49342LinkCallBack;


# static fields
.field public static final ALTERIP_USB1:I = 0x5

.field public static final ALTERIP_WIFI:I = 0x6

.field public static final DIS:I = 0x7

.field public static final SUCCESS:I

.field private static w49342ConnectSdk:Lcom/powervision/natives/connect/W49342ConnectSdk;


# instance fields
.field final DISCONNECT:I

.field final INIT:I

.field final LINK_FAILED:I

.field final TELNET_FAILED:I

.field final TIME_OUT:I

.field callBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/natives/callback/W49342LinkCallBack;",
            ">;"
        }
    .end annotation
.end field

.field connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

.field public connectStatus:I

.field connectTool:Lcom/powervision/natives/connect/ConnectTool;

.field w4_api:Lcom/powervision/natives/PVSDK_W4_API;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->INIT:I

    .line 36
    iput v1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectStatus:I

    const/4 v1, 0x1

    .line 38
    iput v1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->DISCONNECT:I

    const/4 v1, 0x2

    .line 39
    iput v1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->LINK_FAILED:I

    const/4 v1, 0x3

    .line 40
    iput v1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->TELNET_FAILED:I

    const/4 v1, 0x4

    .line 41
    iput v1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->TIME_OUT:I

    .line 45
    iput-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    .line 85
    new-instance v0, Lcom/powervision/natives/connect/W49342ConnectSdk$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/W49342ConnectSdk$1;-><init>(Lcom/powervision/natives/connect/W49342ConnectSdk;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->callBacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/natives/connect/W49342ConnectSdk;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/powervision/natives/connect/W49342ConnectSdk;->relink()V

    return-void
.end method

.method public static get()Lcom/powervision/natives/connect/W49342ConnectSdk;
    .locals 1

    .line 26
    sget-object v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->w49342ConnectSdk:Lcom/powervision/natives/connect/W49342ConnectSdk;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/powervision/natives/connect/W49342ConnectSdk;

    invoke-direct {v0}, Lcom/powervision/natives/connect/W49342ConnectSdk;-><init>()V

    sput-object v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->w49342ConnectSdk:Lcom/powervision/natives/connect/W49342ConnectSdk;

    .line 29
    :cond_0
    sget-object v0, Lcom/powervision/natives/connect/W49342ConnectSdk;->w49342ConnectSdk:Lcom/powervision/natives/connect/W49342ConnectSdk;

    return-object v0
.end method

.method private notifyCallBack(ILjava/lang/String;)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/natives/callback/W49342LinkCallBack;

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 259
    :cond_2
    invoke-interface {v1}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onFailed()V

    goto :goto_1

    .line 256
    :cond_3
    invoke-interface {v1}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onLinkFailed()V

    goto :goto_1

    .line 262
    :cond_4
    invoke-interface {v1}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onTimeOut()V

    goto :goto_1

    .line 253
    :cond_5
    invoke-interface {v1}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onDisconnect()V

    goto :goto_1

    :cond_6
    const-string v2, "lzq9342"

    const-string v3, "??????? CONNECT_LINK_CALLBACK_SUCCESS"

    .line 249
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {v1}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onLinkSuccess()V

    .line 266
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jni version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lzqRc"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-interface {v1, p2}, Lcom/powervision/natives/callback/W49342LinkCallBack;->onGetVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method private relink()V
    .locals 1

    .line 72
    iget v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectStatus:I

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnect9342()V

    .line 76
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connect9342()V

    return-void
.end method


# virtual methods
.method public addLinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public alterUsb()V
    .locals 2

    .line 166
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setW49342LinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V

    .line 167
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnect9342()V

    const-string v0, "192.168.42.2"

    const/16 v1, 0x17

    .line 168
    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4RemoteNative;->alert9342Ip(Ljava/lang/String;I)V

    .line 169
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connect9342()V

    return-void
.end method

.method public alterWIFI()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setW49342LinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V

    .line 160
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnect9342()V

    const-string v0, "192.168.1.2"

    const/16 v1, 0x17

    .line 161
    invoke-static {v0, v1}, Lcom/powervision/natives/JniW4RemoteNative;->alert9342Ip(Ljava/lang/String;I)V

    .line 162
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connect9342()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 80
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->connect9342()V

    const-string v0, "lzq9342"

    const-string v1, "\u7b2c\u4e00\u6b21\u8fde\u63a5"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initConnect()V
    .locals 4

    .line 49
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/natives/PVSDK_W4_API;->setW49342LinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V

    .line 50
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "lzq9342"

    if-nez v0, :cond_0

    const-string v0, "initCommandConnect w4_api == null"

    .line 51
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->w4_api:Lcom/powervision/natives/PVSDK_W4_API;

    .line 54
    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->init9342CallBack()V

    .line 55
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/powervision/natives/connect/ConnectTask;

    const-string v3, "W49342ConnectSdk"

    invoke-direct {v0, v3}, Lcom/powervision/natives/connect/ConnectTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    .line 57
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v3, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v3, v2, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 58
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/natives/connect/ConnectTool;->type:I

    .line 59
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powervision/natives/connect/ConnectTool;->firstAlawys:Z

    .line 60
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->start()V

    .line 61
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    iget-object v1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTask;->setConnectTool(Lcom/powervision/natives/connect/ConnectTool;)V

    goto :goto_0

    :cond_0
    const-string v0, "initCommandConnect w4_api != null"

    .line 64
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v3, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v3, v2, v1}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const-string v0, "lzq9342"

    const-string v1, "onDisconnect"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v1, v0}, Lcom/powervision/natives/connect/W49342ConnectSdk;->notifyCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public onFailed()V
    .locals 2

    const-string v0, "lzq9342"

    const-string v1, "onFailed"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    const/4 v1, 0x3

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->notifyCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public onGetVersion(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 186
    invoke-direct {p0, v0, p1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->notifyCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public onLinkFailed()V
    .locals 2

    const-string v0, "lzq9342"

    const-string v1, "onLinkFailed"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    const/4 v1, 0x2

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->notifyCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public onLinkSuccess()V
    .locals 2

    const-string v0, "lzqRu"

    const-string v1, "SDK onLinkSuccess"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0, v0}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->notifyCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public onTimeOut()V
    .locals 2

    const-string v0, "lzq9342"

    const-string v1, "onTimeOut"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->postStatus(II)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/powervision/natives/connect/W49342ConnectSdk;->notifyCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public postStatus(II)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    new-instance v1, Lcom/powervision/natives/connect/Ask;

    invoke-direct {v1, p1, p2}, Lcom/powervision/natives/connect/Ask;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/ConnectTool;->addStack(Lcom/powervision/natives/connect/Ask;)V

    .line 175
    iget-object p1, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectTool:Lcom/powervision/natives/connect/ConnectTool;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/ConnectTool;->notifyTheMaster()V

    .line 176
    iput p2, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectStatus:I

    return-void
.end method

.method public removeCallBack()V
    .locals 2

    .line 276
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setW49342LinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V

    return-void
.end method

.method public removeCallback()V
    .locals 2

    .line 180
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->setW49342LinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V

    return-void
.end method

.method public removeLinkCallBack(Lcom/powervision/natives/callback/W49342LinkCallBack;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public stopConn()V
    .locals 1

    .line 153
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_W4_API;->disconnect9342()V

    .line 154
    iget-object v0, p0, Lcom/powervision/natives/connect/W49342ConnectSdk;->connectRemoteTask:Lcom/powervision/natives/connect/ConnectTask;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/powervision/natives/connect/ConnectTask;->interrupt()V

    :cond_0
    return-void
.end method
