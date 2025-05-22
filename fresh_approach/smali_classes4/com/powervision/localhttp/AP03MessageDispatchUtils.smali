.class public Lcom/powervision/localhttp/AP03MessageDispatchUtils;
.super Ljava/lang/Object;
.source "AP03MessageDispatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x2710

.field public static final MESSAGE_STATUS_FAILED:I = 0x2

.field public static final MESSAGE_STATUS_SUCCESS:I = 0x1

.field public static final MESSAGE_STATUS_TIME_OUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AP03MessageDispatch"

.field private static sMessageDispatchUtils:Lcom/powervision/localhttp/AP03MessageDispatchUtils;


# instance fields
.field private final mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    invoke-direct {v0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;-><init>()V

    sput-object v0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->sMessageDispatchUtils:Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;-><init>(Lcom/powervision/localhttp/AP03MessageDispatchUtils$1;)V

    iput-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    return-void
.end method

.method public static get()Lcom/powervision/localhttp/AP03MessageDispatchUtils;
    .locals 1

    .line 33
    sget-object v0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->sMessageDispatchUtils:Lcom/powervision/localhttp/AP03MessageDispatchUtils;

    return-object v0
.end method

.method private startAOARequest(Ljava/lang/String;)V
    .locals 1

    .line 163
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->get()Lcom/powervision/localhttp/AP03CameraAOAUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03CameraAOAUtils;->postRequestHttp(Ljava/lang/String;)V

    return-void
.end method

.method private startHttpRequest(Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-static {}, Lcom/powervision/localhttp/AP03CameraHttpUtils;->get()Lcom/powervision/localhttp/AP03CameraHttpUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03CameraHttpUtils;->postRequest(Ljava/lang/String;)V

    return-void
.end method

.method private startRequestByCmdId(Ljava/lang/String;)V
    .locals 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRequestByCmdId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP03MessageDispatch"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    new-instance v1, Lcom/powervision/localhttp/-$$Lambda$AP03MessageDispatchUtils$ngwqG00KvwEw8Ihcm2Y-yt4BtZw;

    invoke-direct {v1, p0, p1}, Lcom/powervision/localhttp/-$$Lambda$AP03MessageDispatchUtils$ngwqG00KvwEw8Ihcm2Y-yt4BtZw;-><init>(Lcom/powervision/localhttp/AP03MessageDispatchUtils;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->startHttpRequest(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addNewMessage(Lcom/powervision/localhttp/CmdModel;)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 46
    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 47
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 48
    iget-object v1, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    iget-object p1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->startRequestByCmdId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V
    .locals 0

    .line 78
    iget-object p1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->startRequestByCmdId(Ljava/lang/String;)V

    return-void
.end method

.method public addRepeatMessage(Lcom/powervision/localhttp/CmdModel;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->removeMessages(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 67
    iget v1, p1, Lcom/powervision/localhttp/CmdModel;->CMD_ID:I

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 68
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 69
    iget-object v1, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    iget-object p1, p1, Lcom/powervision/localhttp/CmdModel;->URL:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->startRequestByCmdId(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$startRequestByCmdId$0$AP03MessageDispatchUtils(Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->startAOARequest(Ljava/lang/String;)V

    return-void
.end method

.method public updateFailedMessage(ILjava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->removeMessages(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 113
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    .line 114
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 115
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 116
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public updateSuccessMessage(ILjava/lang/String;)V
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSuccessMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP03MessageDispatch"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0, p1}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->removeMessages(I)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {v0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 93
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    .line 94
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
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

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/powervision/localhttp/AP03MessageDispatchUtils;->mHandler:Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method
