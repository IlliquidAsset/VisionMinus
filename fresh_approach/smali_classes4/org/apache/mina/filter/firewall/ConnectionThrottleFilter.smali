.class public Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ConnectionThrottleFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME:J = 0x3e8L

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private allowedInterval:J

.field private final clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 102
    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    .line 114
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    .line 115
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    .line 118
    new-instance p1, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;-><init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$1;)V

    const/4 p2, 0x1

    .line 121
    invoke-virtual {p1, p2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->setDaemon(Z)V

    .line 124
    invoke-virtual {p1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method protected isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 7

    .line 155
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    .line 157
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 158
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "This is not a new client"

    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 169
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    iget-wide v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    cmp-long p1, v2, v5

    if-gez p1, :cond_0

    .line 174
    sget-object p1, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Session connection interval too short"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    .line 181
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_2
    return v1
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Connections coming in too fast; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 196
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 199
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public setAllowedInterval(J)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
