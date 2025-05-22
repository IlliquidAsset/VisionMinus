.class public Lcom/powervision/gcs/usb2/SonarManager;
.super Ljava/lang/Object;
.source "SonarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;,
        Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;,
        Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;,
        Lcom/powervision/gcs/usb2/SonarManager$ContrlMsgListener;
    }
.end annotation


# static fields
.field static sonarUsbManager:Lcom/powervision/gcs/usb2/SonarManager;


# instance fields
.field ch:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field cmdStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;

.field contrlTask:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field dataStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;

.field imageHandle:Lcom/powervision/gcs/usb2/MsgHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgHandle<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field private imageTask:Lcom/powervision/gcs/usb2/MsgTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/usb2/MsgTask<",
            "Lcom/powervision/gcs/usb2/Msg;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/powervision/gcs/usb2/SonarManager$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/usb2/SonarManager$1;-><init>(Lcom/powervision/gcs/usb2/SonarManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 111
    new-instance v1, Lcom/powervision/gcs/usb2/SonarManager$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/usb2/SonarManager$2;-><init>(Lcom/powervision/gcs/usb2/SonarManager;)V

    iput-object v1, p0, Lcom/powervision/gcs/usb2/SonarManager;->ch:Lcom/powervision/gcs/usb2/MsgHandle;

    .line 166
    iput-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager;->contrlTask:Lcom/powervision/gcs/usb2/MsgTask;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/usb2/SonarManager;)Lcom/powervision/gcs/usb2/MsgTask;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageTask:Lcom/powervision/gcs/usb2/MsgTask;

    return-object p0
.end method

.method public static declared-synchronized get()Lcom/powervision/gcs/usb2/SonarManager;
    .locals 2

    const-class v0, Lcom/powervision/gcs/usb2/SonarManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/usb2/SonarManager;->sonarUsbManager:Lcom/powervision/gcs/usb2/SonarManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/powervision/gcs/usb2/SonarManager;

    invoke-direct {v1}, Lcom/powervision/gcs/usb2/SonarManager;-><init>()V

    sput-object v1, Lcom/powervision/gcs/usb2/SonarManager;->sonarUsbManager:Lcom/powervision/gcs/usb2/SonarManager;

    .line 37
    :cond_0
    sget-object v1, Lcom/powervision/gcs/usb2/SonarManager;->sonarUsbManager:Lcom/powervision/gcs/usb2/SonarManager;
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
.method public getCmdStartCallBack()Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager;->cmdStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;

    return-object v0
.end method

.method public getDataStartCallBack()Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager;->dataStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;

    return-object v0
.end method

.method public receiveContrlData([BI)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager;->ch:Lcom/powervision/gcs/usb2/MsgHandle;

    new-instance v1, Lcom/powervision/gcs/usb2/Msg;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->contrlTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez p1, :cond_0

    .line 174
    new-instance p1, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {p1}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->contrlTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 175
    iget-object p2, p0, Lcom/powervision/gcs/usb2/SonarManager;->ch:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 176
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->contrlTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    :cond_0
    return-void
.end method

.method public receiveImagePatket([BI)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    new-instance v1, Lcom/powervision/gcs/usb2/Msg;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageTask:Lcom/powervision/gcs/usb2/MsgTask;

    if-nez p1, :cond_0

    .line 102
    new-instance p1, Lcom/powervision/gcs/usb2/MsgTask;

    invoke-direct {p1}, Lcom/powervision/gcs/usb2/MsgTask;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageTask:Lcom/powervision/gcs/usb2/MsgTask;

    .line 103
    iget-object p2, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageHandle:Lcom/powervision/gcs/usb2/MsgHandle;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/MsgTask;->setConnectHandle(Lcom/powervision/gcs/usb2/MsgHandle;)V

    .line 104
    iget-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->imageTask:Lcom/powervision/gcs/usb2/MsgTask;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/MsgTask;->start()V

    :cond_0
    return-void
.end method

.method public sendCancel()V
    .locals 2

    const-string v0, "lzqSonar"

    const-string v1, "\u53d1\u9001Cancel-3"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4a3a

    .line 186
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    const/16 v0, 0x4a39

    .line 187
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    return-void
.end method

.method public sendDataToSonar(B[BI)V
    .locals 5

    const/16 v0, 0xb

    new-array v1, v0, [B

    const/16 v2, -0x56

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x55

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aput-byte p1, v1, v2

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 v2, 0x9

    aput-byte p1, v1, v2

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    const/16 v2, 0xa

    aput-byte p1, v1, v2

    add-int/lit8 p1, p3, 0xb

    .line 199
    new-array v2, p1, [B

    .line 200
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_0

    .line 202
    invoke-static {p2, v3, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/16 p2, 0x4a3a

    .line 203
    invoke-static {p2, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object p1

    .line 204
    invoke-static {p1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    .line 208
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    .line 209
    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u53d1\u9001 "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqSonar"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCmdStartCallBack(Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->cmdStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarCmdStartCallBack;

    return-void
.end method

.method public setDataStartCallBack(Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->dataStartCallBack:Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;

    return-void
.end method

.method public setListener(Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/powervision/gcs/usb2/SonarManager;->listener:Lcom/powervision/gcs/usb2/SonarManager$OnDataReceiveListener;

    return-void
.end method
