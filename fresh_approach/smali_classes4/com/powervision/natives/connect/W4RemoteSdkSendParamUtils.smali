.class public Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;
.super Ljava/lang/Object;
.source "W4RemoteSdkSendParamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;,
        Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgTool;
    }
.end annotation


# static fields
.field private static sdkSendParamUtils:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;


# instance fields
.field private msgHandle:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;

.field msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$1;-><init>(Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    .line 21
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->init()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;
    .locals 2

    const-class v0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->sdkSendParamUtils:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    invoke-direct {v1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;-><init>()V

    sput-object v1, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->sdkSendParamUtils:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    .line 29
    :cond_0
    sget-object v1, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->sdkSendParamUtils:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 33
    new-instance v0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;-><init>(Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$1;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;

    .line 34
    iget-object v1, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->setmsgTool(Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;)V

    .line 35
    iget-object v0, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->start()V

    return-void
.end method

.method public send(Lcom/powervision/natives/connect/ParamMsg;I)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u8c01\u8c03\u7528send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqRc"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p2, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;

    invoke-virtual {p2, p1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->addAWork(Lcom/powervision/natives/connect/ParamMsg;)V

    .line 41
    iget-object p1, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$MsgHandle;->notifyThis()V

    return-void
.end method
