.class public Lcom/powervision/gcs/utils/io/SonarSocket;
.super Ljava/lang/Object;
.source "SonarSocket.java"


# static fields
.field private static sonarSocket:Lcom/powervision/gcs/utils/io/SonarSocket;


# instance fields
.field LOCK:Ljava/lang/Object;

.field commonCallBack:Lcom/powervision/opensource/CommonCallBack;

.field connectivityManager:Landroid/net/ConnectivityManager;

.field private dataEnd:I

.field private getBuf:[B

.field isRun:Z

.field ism:Ljava/io/InputStream;

.field private mdlen:I

.field private memData:[B

.field osm:Ljava/io/OutputStream;

.field private posEnd:I

.field private posHead:I

.field readThread:Ljava/lang/Thread;

.field request:Landroid/net/NetworkRequest;

.field private sReadBuf:[B

.field private sendQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field socketcli:Ljava/net/Socket;

.field sonarHeart:Ljava/lang/Thread;

.field writeThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xa00000

    .line 34
    iput v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->mdlen:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/utils/io/SonarSocket;)[B
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sReadBuf:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/utils/io/SonarSocket;[BI)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/utils/io/SonarSocket;->writeMemData([BI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/utils/io/SonarSocket;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/powervision/gcs/utils/io/SonarSocket;->reconn()V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/utils/io/SonarSocket;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sendQueue:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/powervision/gcs/utils/io/SonarSocket;
    .locals 2

    const-class v0, Lcom/powervision/gcs/utils/io/SonarSocket;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/io/SonarSocket;->sonarSocket:Lcom/powervision/gcs/utils/io/SonarSocket;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-direct {v1}, Lcom/powervision/gcs/utils/io/SonarSocket;-><init>()V

    sput-object v1, Lcom/powervision/gcs/utils/io/SonarSocket;->sonarSocket:Lcom/powervision/gcs/utils/io/SonarSocket;

    .line 52
    :cond_0
    sget-object v1, Lcom/powervision/gcs/utils/io/SonarSocket;->sonarSocket:Lcom/powervision/gcs/utils/io/SonarSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private reconn()V
    .locals 2

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 255
    iput-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 259
    iput-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 263
    iput-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    :cond_2
    const-string v0, "lzqSonar"

    const-string v1, " \u91cd\u8fde  "

    .line 267
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private writeMemData([BI)Z
    .locals 4

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->mdlen:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 217
    monitor-exit p0

    return v2

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget p2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/utils/io/SonarSocket;->getHeadIndex([BI)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->posHead:I

    const/4 p2, 0x1

    if-ltz p1, :cond_3

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->getNextHeadIndex([BI)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->posEnd:I

    if-lez p1, :cond_3

    .line 226
    iget v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    if-le p1, v0, :cond_1

    .line 227
    monitor-exit p0

    return p2

    .line 228
    :cond_1
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->getBuf:[B

    .line 229
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget v3, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->posHead:I

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :try_start_1
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->getBuf:[B

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/mina/HandlerEvent;->handle([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 235
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :goto_1
    iget p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    iget v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->posEnd:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    .line 238
    sget-object p1, Lcom/powervision/gcs/utils/devices/SonarBackMsgControlHandle;->testUPTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->posEnd:I

    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget v3, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    add-int/2addr v0, p2

    iget p2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->mdlen:I

    invoke-static {p1, v0, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object p2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    iget v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->dataEnd:I

    sub-int/2addr v1, p1

    invoke-static {p2, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 248
    :cond_3
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public closeSocket()V
    .locals 3

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 346
    iput-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 350
    iput-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 354
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V

    .line 355
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 356
    iput-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    .line 358
    :cond_2
    iput-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    .line 359
    iput-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->getBuf:[B

    .line 360
    iput-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sReadBuf:[B

    .line 361
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 362
    invoke-static {v0}, Lcom/powervision/gcs/usb2/SonarConnectState;->notifyOnSonarConnectStateChangedListeners(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getHeadIndex([BI)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_2

    .line 281
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x55

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public getNextHeadIndex([BI)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x1ff

    if-ne p2, v1, :cond_1

    return v1

    :cond_1
    const/16 v1, 0x3f3

    if-ne p2, v1, :cond_2

    return v1

    :cond_2
    const/16 v1, 0xa

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_4

    .line 297
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x55

    if-ne v2, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 p1, 0x64

    if-ge p2, p1, :cond_5

    return p2

    :cond_5
    :goto_1
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    .line 338
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCommonCallBack(Lcom/powervision/opensource/CommonCallBack;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    return-void
.end method

.method public declared-synchronized startWork()V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 106
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 109
    :try_start_1
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z

    .line 110
    iget v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->mdlen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->memData:[B

    const/16 v0, 0x5dc

    new-array v0, v0, [B

    .line 111
    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sReadBuf:[B

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sendQueue:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/io/SonarSocket$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/io/SonarSocket$1;-><init>(Lcom/powervision/gcs/utils/io/SonarSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->readThread:Ljava/lang/Thread;

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/io/SonarSocket$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/io/SonarSocket$2;-><init>(Lcom/powervision/gcs/utils/io/SonarSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->writeThread:Ljava/lang/Thread;

    .line 182
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/io/SonarSocket$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/io/SonarSocket$3;-><init>(Lcom/powervision/gcs/utils/io/SonarSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sonarHeart:Ljava/lang/Thread;

    .line 207
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->readThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sonarHeart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "lzqSonar"

    const-string v1, "tcp \u5f00\u542f\u7ebf\u7a0b"

    .line 210
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeData([B)Z
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/io/SonarSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sendQueue:Ljava/util/List;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->sendQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    iget-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->writeThread:Ljava/lang/Thread;

    monitor-enter p1

    .line 326
    :try_start_1
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 327
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 324
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
