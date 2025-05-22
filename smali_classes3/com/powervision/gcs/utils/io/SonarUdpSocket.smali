.class public Lcom/powervision/gcs/utils/io/SonarUdpSocket;
.super Ljava/lang/Object;
.source "SonarUdpSocket.java"


# static fields
.field static LOCK:Ljava/lang/Object;

.field private static lock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private static packetRcv:Ljava/net/DatagramPacket;

.field private static packetSend:Ljava/net/DatagramPacket;

.field public static sonarUdpSocket:Lcom/powervision/gcs/utils/io/SonarUdpSocket;


# instance fields
.field a:Ljava/lang/Thread;

.field private msgRcv:[B

.field public running:Z

.field private udpLife:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->udpLife:Z

    const/16 v0, 0x1ff

    new-array v0, v0, [B

    .line 36
    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->msgRcv:[B

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->running:Z

    return-void
.end method

.method static synthetic access$000()Ljava/net/DatagramPacket;
    .locals 1

    .line 18
    sget-object v0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->packetRcv:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method static synthetic access$002(Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;
    .locals 0

    .line 18
    sput-object p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->packetRcv:Ljava/net/DatagramPacket;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/utils/io/SonarUdpSocket;)[B
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->msgRcv:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/utils/io/SonarUdpSocket;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->udpLife:Z

    return p0
.end method

.method public static getInstance()Lcom/powervision/gcs/utils/io/SonarUdpSocket;
    .locals 1

    .line 26
    sget-object v0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->sonarUdpSocket:Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    invoke-direct {v0}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->sonarUdpSocket:Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    .line 29
    :cond_0
    sget-object v0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->sonarUdpSocket:Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    return-object v0
.end method

.method public static notifyTheThread()V
    .locals 2

    .line 116
    sget-object v0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect()V
    .locals 2

    const-string v0, "lzqWifi"

    const-string v1, "udp connect"

    .line 43
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->running:Z

    if-eqz v0, :cond_0

    const-string v0, "lzqudp"

    const-string v1, "isRunning \u6ca1\u8fdb\u53bb "

    .line 45
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->running:Z

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/io/SonarUdpSocket$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/utils/io/SonarUdpSocket$1;-><init>(Lcom/powervision/gcs/utils/io/SonarUdpSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->a:Ljava/lang/Thread;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
