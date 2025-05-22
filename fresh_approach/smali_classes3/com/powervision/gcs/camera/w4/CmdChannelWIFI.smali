.class public Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;
.super Lcom/powervision/gcs/camera/w4/CmdChannel;
.source "CmdChannelWIFI.java"


# static fields
.field private static final CONN_TIME_OUT:I = 0xbb8

.field private static final READ_TIME_OUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CmdChannelWIFI"

.field private static final WAKEUP_MAX_TRY:I = 0x1


# instance fields
.field private mBuffer:[B

.field private mHostName:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPortNum:I

.field public mSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/camera/w4/IChannelListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/powervision/gcs/camera/w4/CmdChannel;-><init>(Lcom/powervision/gcs/camera/w4/IChannelListener;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 19
    iput-object p1, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    iput-object v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :goto_1
    iput-object v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    throw v0

    .line 52
    :cond_0
    :goto_2
    :try_start_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 53
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mHostName:Ljava/lang/String;

    iget v3, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mPortNum:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 54
    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    .line 55
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mInputStream:Ljava/io/InputStream;

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mOutputStream:Ljava/io/OutputStream;

    .line 57
    invoke-virtual {p0}, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->startIO()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    iput-object v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :goto_1
    iput-object v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mSocket:Ljava/net/Socket;

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method protected readFromChannel()Ljava/lang/String;
    .locals 4

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 102
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIP(Ljava/lang/String;I)Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mHostName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mPortNum:I

    return-object p0
.end method

.method protected writeToChannel([B)V
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/camera/w4/CmdChannelWIFI;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
