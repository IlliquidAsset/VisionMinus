.class final Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$2;
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$2;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object p2, p0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$2;->LOGGER:Lorg/slf4j/Logger;

    .line 50
    invoke-virtual {p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "A keep-alive response message was not received within {} second(s)."

    .line 49
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
