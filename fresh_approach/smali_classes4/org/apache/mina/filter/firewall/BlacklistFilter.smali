.class public Lorg/apache/mina/filter/firewall/BlacklistFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "BlacklistFilter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    return-void
.end method

.method private blockSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    .line 242
    sget-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Remote address in the blacklist; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    return-void
.end method

.method private isBlocked(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 2

    .line 247
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    .line 249
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 250
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/firewall/Subnet;

    .line 254
    invoke-virtual {v1, p1}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    return-void

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Adress to block can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public block(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Subnet can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1

    .line 223
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 183
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public setBlacklist(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 106
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    goto :goto_0

    :cond_0
    return-void

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBlacklist([Ljava/net/InetAddress;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 63
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 64
    aget-object v1, p1, v0

    .line 65
    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addresses"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubnetBlacklist(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/firewall/Subnet;

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    goto :goto_0

    :cond_0
    return-void

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Subnets must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSubnetBlacklist([Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 84
    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Subnets must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unblock(Ljava/net/InetAddress;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 165
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->unblock(Lorg/apache/mina/filter/firewall/Subnet;)V

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Adress to unblock can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unblock(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Subnet can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
