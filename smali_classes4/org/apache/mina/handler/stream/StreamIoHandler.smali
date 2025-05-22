.class public abstract Lorg/apache/mina/handler/stream/StreamIoHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "StreamIoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;
    }
.end annotation


# static fields
.field private static final KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

.field private static final KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private readTimeout:I

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-class v0, Lorg/apache/mina/handler/stream/StreamIoHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/handler/stream/StreamIoHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 49
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "in"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    .line 51
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "out"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    .line 152
    sget-object v0, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/stream/IoSessionInputStream;

    .line 155
    instance-of v1, p2, Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    goto :goto_0

    .line 157
    :cond_0
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 158
    move-object v1, p2

    check-cast v1, Ljava/io/IOException;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0, v1}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->throwException(Ljava/io/IOException;)V

    goto :goto_1

    .line 164
    :cond_2
    sget-object v0, Lorg/apache/mina/handler/stream/StreamIoHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Unexpected exception."

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    :goto_1
    return-void
.end method

.method public getReadTimeout()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->readTimeout:I

    return v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->writeTimeout:I

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1

    .line 143
    sget-object v0, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/stream/IoSessionInputStream;

    .line 144
    check-cast p2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1, p2}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->write(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method protected abstract processStreamIo(Lorg/apache/mina/core/session/IoSession;Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    sget-object v0, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 130
    sget-object v1, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    .line 132
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1

    .line 174
    sget-object p1, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-eq p2, p1, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance p1, Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;

    new-instance p2, Ljava/net/SocketTimeoutException;

    const-string v0, "Read timeout"

    invoke-direct {p2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    .line 113
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->writeTimeout:I

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setWriteTimeout(I)V

    .line 114
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    iget v2, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->readTimeout:I

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 117
    new-instance v0, Lorg/apache/mina/handler/stream/IoSessionInputStream;

    invoke-direct {v0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;-><init>()V

    .line 118
    new-instance v1, Lorg/apache/mina/handler/stream/IoSessionOutputStream;

    invoke-direct {v1, p1}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 119
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_IN:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v2, Lorg/apache/mina/handler/stream/StreamIoHandler;->KEY_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/handler/stream/StreamIoHandler;->processStreamIo(Lorg/apache/mina/core/session/IoSession;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->readTimeout:I

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .line 104
    iput p1, p0, Lorg/apache/mina/handler/stream/StreamIoHandler;->writeTimeout:I

    return-void
.end method
