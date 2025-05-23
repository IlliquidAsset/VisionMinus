.class public Lorg/apache/http/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;
.source "HttpHostConnectException.java"


# static fields
.field private static final serialVersionUID:J = -0x2c5515199314e300L


# instance fields
.field private final host:Lorg/apache/http/HttpHost;


# direct methods
.method public varargs constructor <init>(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)V
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "remote host"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    const-string p3, " refused"

    :goto_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lorg/apache/http/conn/HttpHostConnectException;->host:Lorg/apache/http/HttpHost;

    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/HttpHostConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 54
    check-cast v0, [Ljava/net/InetAddress;

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public getHost()Lorg/apache/http/HttpHost;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/http/conn/HttpHostConnectException;->host:Lorg/apache/http/HttpHost;

    return-object v0
.end method
