.class Lcom/powervision/gcs/utils/io/SonarSocket$1;
.super Ljava/lang/Object;
.source "SonarSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/io/SonarSocket;->startWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/io/SonarSocket;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/io/SonarSocket;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tcp startWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-boolean v1, v1, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqSonar"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-boolean v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->isRun:Z

    if-eqz v0, :cond_2

    const-wide/16 v2, 0xfa

    .line 122
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 124
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    const/16 v2, 0x404

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 127
    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/powervision/base/config/GlobalConfig;->PV_SONAR_TCP_SERVER_IP:Ljava/lang/String;

    const/16 v3, 0x4e22

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "socAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v2, v2, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    const/16 v3, 0x1388

    invoke-virtual {v2, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v0, "connectSuccess:"

    .line 132
    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->commonCallBack:Lcom/powervision/opensource/CommonCallBack;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/powervision/opensource/CommonCallBack;->success([Ljava/lang/Object;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v2, v2, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    .line 138
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v2, v2, Lcom/powervision/gcs/utils/io/SonarSocket;->socketcli:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->osm:Ljava/io/OutputStream;

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v0, v0, Lcom/powervision/gcs/utils/io/SonarSocket;->ism:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v2}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$000(Lcom/powervision/gcs/utils/io/SonarSocket;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u8bfb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    iget-object v3, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v3}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$000(Lcom/powervision/gcs/utils/io/SonarSocket;)[B

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$100(Lcom/powervision/gcs/utils/io/SonarSocket;[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/utils/io/SonarSocket$1;->this$0:Lcom/powervision/gcs/utils/io/SonarSocket;

    invoke-static {v0}, Lcom/powervision/gcs/utils/io/SonarSocket;->access$200(Lcom/powervision/gcs/utils/io/SonarSocket;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "\u7ebf\u7a0b\u7ed3\u675f"

    .line 150
    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
