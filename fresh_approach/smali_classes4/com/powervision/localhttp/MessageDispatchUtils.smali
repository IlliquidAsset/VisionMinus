.class public Lcom/powervision/localhttp/MessageDispatchUtils;
.super Ljava/lang/Object;
.source "MessageDispatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x2710

.field public static final MESSAGE_STATUS_FAILED:I = 0x2

.field public static final MESSAGE_STATUS_SUCCESS:I = 0x1

.field public static final MESSAGE_STATUS_TIME_OUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MessageDispatchUtils"

.field private static final mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

.field private static messageDispatchUtils:Lcom/powervision/localhttp/MessageDispatchUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    invoke-direct {v0}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/powervision/localhttp/MessageDispatchUtils;
    .locals 1

    .line 36
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->messageDispatchUtils:Lcom/powervision/localhttp/MessageDispatchUtils;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/powervision/localhttp/MessageDispatchUtils;

    invoke-direct {v0}, Lcom/powervision/localhttp/MessageDispatchUtils;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->messageDispatchUtils:Lcom/powervision/localhttp/MessageDispatchUtils;

    .line 40
    :cond_0
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->messageDispatchUtils:Lcom/powervision/localhttp/MessageDispatchUtils;

    return-object v0
.end method

.method private startAOARequest(Ljava/lang/String;)V
    .locals 1

    .line 220
    invoke-static {}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->get()Lcom/powervision/localhttp/PVW4CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/PVW4CameraAOAUtils;->postRequest(Ljava/lang/String;)V

    return-void
.end method

.method private startHttpRequest(Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->get()Lcom/powervision/localhttp/PVW4CameraHttpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/PVW4CameraHttpUtils;->postRequest(Ljava/lang/String;)V

    return-void
.end method

.method private startRequestByCmdId(Ljava/lang/String;)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 202
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    new-instance v1, Lcom/powervision/localhttp/-$$Lambda$MessageDispatchUtils$1aOtXElcZq4ngwbKOX0Zqfcdx50;

    invoke-direct {v1, p0, p1}, Lcom/powervision/localhttp/-$$Lambda$MessageDispatchUtils$1aOtXElcZq4ngwbKOX0Zqfcdx50;-><init>(Lcom/powervision/localhttp/MessageDispatchUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/localhttp/MessageDispatchUtils;->startHttpRequest(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addNewMessage(Lcom/powervision/localhttp/CmdModel;)V
    .locals 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNewMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageDispatchUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 55
    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 56
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 57
    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->RETRY_TIMES:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 58
    iget-object v1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 61
    iget-object p1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/powervision/localhttp/MessageDispatchUtils;->startRequestByCmdId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V
    .locals 0

    .line 95
    iget-object p1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/powervision/localhttp/MessageDispatchUtils;->startRequestByCmdId(Ljava/lang/String;)V

    return-void
.end method

.method public addRepeatMessage(Lcom/powervision/localhttp/CmdModel;)V
    .locals 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRepeatMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageDispatchUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->removeMessages(I)V

    .line 79
    :cond_0
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 80
    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 81
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 82
    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->RETRY_TIMES:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 83
    iget-object v1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    iget-object p1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/powervision/localhttp/MessageDispatchUtils;->startRequestByCmdId(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$startRequestByCmdId$0$MessageDispatchUtils(Ljava/lang/String;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/powervision/localhttp/MessageDispatchUtils;->startAOARequest(Ljava/lang/String;)V

    return-void
.end method

.method public updateSuccessMessage(ILjava/lang/String;)V
    .locals 3

    .line 109
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->removeMessages(I)V

    .line 113
    :cond_0
    sget-object v0, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 114
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    .line 115
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object p1

    iget-object p1, p1, Lcom/powervision/gcs/usb2/GcsUsbManager;->listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u76f8\u673a\u6a21\u5f0f111\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;->onMsg(Ljava/lang/String;)V

    .line 122
    :cond_1
    sget-object p1, Lcom/powervision/localhttp/MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/MessageDispatchUtils$HandleMessageHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method
