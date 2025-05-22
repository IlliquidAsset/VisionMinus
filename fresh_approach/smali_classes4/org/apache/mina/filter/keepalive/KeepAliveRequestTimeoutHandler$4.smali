.class final Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;
.super Ljava/lang/Object;
.source "KeepAliveRequestTimeoutHandler.java"

# interfaces
.implements Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;->LOGGER:Lorg/slf4j/Logger;

    .line 72
    invoke-virtual {p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Closing the session because a keep-alive response message was not received within {} second(s)."

    .line 71
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    return-void
.end method
