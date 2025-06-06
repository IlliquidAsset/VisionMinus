.class public Lorg/apache/http/impl/pool/BasicConnPool;
.super Lorg/apache/http/pool/AbstractConnPool;
.source "BasicConnPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/AbstractConnPool<",
        "Lorg/apache/http/HttpHost;",
        "Lorg/apache/http/HttpClientConnection;",
        "Lorg/apache/http/impl/pool/BasicPoolEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/http/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 80
    new-instance v0, Lorg/apache/http/impl/pool/BasicConnFactory;

    sget-object v1, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    sget-object v2, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    .line 73
    new-instance v0, Lorg/apache/http/impl/pool/BasicConnFactory;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Lorg/apache/http/config/SocketConfig;Lorg/apache/http/config/ConnectionConfig;)V

    const/4 p1, 0x2

    const/16 p2, 0x14

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/http/impl/pool/BasicConnFactory;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/pool/BasicConnFactory;-><init>(Lorg/apache/http/params/HttpParams;)V

    const/4 p1, 0x2

    const/16 v1, 0x14

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/pool/ConnFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnFactory<",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0x14

    .line 58
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    return-void
.end method


# virtual methods
.method protected createEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/pool/BasicPoolEntry;
    .locals 3

    .line 87
    new-instance v0, Lorg/apache/http/impl/pool/BasicPoolEntry;

    sget-object v1, Lorg/apache/http/impl/pool/BasicConnPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/http/impl/pool/BasicPoolEntry;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;)V

    return-object v0
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 0

    .line 51
    check-cast p1, Lorg/apache/http/HttpHost;

    check-cast p2, Lorg/apache/http/HttpClientConnection;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/pool/BasicConnPool;->createEntry(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/pool/BasicPoolEntry;

    move-result-object p1

    return-object p1
.end method

.method protected validate(Lorg/apache/http/impl/pool/BasicPoolEntry;)Z
    .locals 0

    .line 92
    invoke-virtual {p1}, Lorg/apache/http/impl/pool/BasicPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/HttpClientConnection;

    invoke-interface {p1}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected bridge synthetic validate(Lorg/apache/http/pool/PoolEntry;)Z
    .locals 0

    .line 51
    check-cast p1, Lorg/apache/http/impl/pool/BasicPoolEntry;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/pool/BasicConnPool;->validate(Lorg/apache/http/impl/pool/BasicPoolEntry;)Z

    move-result p1

    return p1
.end method
