.class public Lorg/apache/http/impl/io/SocketOutputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;-><init>()V

    const-string v0, "Socket"

    .line 62
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gez p2, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p2

    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    const/16 p2, 0x400

    .line 70
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketOutputBuffer;->init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V

    return-void
.end method
