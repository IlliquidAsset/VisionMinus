.class Lcom/powervision/gcs/utils/io/SonarUdpSocket$1;
.super Ljava/lang/Object;
.source "SonarUdpSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/io/SonarUdpSocket;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/io/SonarUdpSocket;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/io/SonarUdpSocket;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :goto_0
    const-wide/16 v0, 0xfa

    const-wide/16 v2, 0xbb8

    .line 68
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    new-instance v0, Ljava/net/DatagramSocket;

    const/16 v1, 0x4e21

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    const/16 v1, 0x1f40

    .line 70
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 72
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    invoke-static {v4}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->access$100(Lcom/powervision/gcs/utils/io/SonarUdpSocket;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    invoke-static {v5}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->access$100(Lcom/powervision/gcs/utils/io/SonarUdpSocket;)[B

    move-result-object v5

    array-length v5, v5

    invoke-direct {v1, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-static {v1}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->access$002(Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;

    const-string v1, "lzqudp"

    const-string v4, "init port "

    .line 73
    invoke-static {v1, v4}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarUdpSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarUdpSocket;

    invoke-static {v1}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->access$200(Lcom/powervision/gcs/utils/io/SonarUdpSocket;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->access$000()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 79
    invoke-static {}, Lcom/powervision/gcs/utils/io/SonarUdpSocket;->access$000()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/powervision/gcs/mina/HandlerEvent;->getInstance()Lcom/powervision/gcs/mina/HandlerEvent;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/powervision/gcs/mina/HandlerEvent;->handleImage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 100
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :cond_1
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :goto_2
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    throw v0
.end method
