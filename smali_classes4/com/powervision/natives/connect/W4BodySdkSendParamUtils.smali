.class public Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;
.super Ljava/lang/Object;
.source "W4BodySdkSendParamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;,
        Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;
    }
.end annotation


# static fields
.field private static sdkSendParamUtils:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;


# instance fields
.field private msgHandle:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;

.field msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$1;

    invoke-direct {v0, p0}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$1;-><init>(Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    .line 20
    invoke-virtual {p0}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->init()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;
    .locals 2

    const-class v0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->sdkSendParamUtils:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    invoke-direct {v1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;-><init>()V

    sput-object v1, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->sdkSendParamUtils:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    .line 27
    :cond_0
    sget-object v1, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->sdkSendParamUtils:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;
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

    .line 31
    new-instance v0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;-><init>(Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$1;)V

    iput-object v0, p0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;

    .line 32
    iget-object v1, p0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->msgTool:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;->setmsgTool(Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;)V

    .line 33
    iget-object v0, p0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;

    invoke-virtual {v0}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;->start()V

    return-void
.end method

.method public send(Lcom/powervision/natives/connect/ParamMsg;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;

    invoke-virtual {v0, p1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;->addAWork(Lcom/powervision/natives/connect/ParamMsg;)V

    .line 38
    iget-object p1, p0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->msgHandle:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;

    invoke-virtual {p1}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgHandle;->notifyThis()V

    return-void
.end method
