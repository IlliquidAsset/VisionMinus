.class public Lorg/apache/mina/filter/ssl/SslFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SslFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;,
        Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;
    }
.end annotation


# static fields
.field public static final DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field public static final SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

.field private static final SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

.field private static final START_HANDSHAKE:Z = true

.field public static final USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final autoStart:Z

.field private client:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private needClientAuth:Z

.field final sslContext:Ljavax/net/ssl/SSLContext;

.field private wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 97
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "session"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    .line 109
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "disableOnce"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    .line 119
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "useNotification"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    .line 134
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "peerAddress"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    .line 141
    new-instance v1, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v2, "SESSION_SECURED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    .line 148
    new-instance v1, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    const-string v2, "SESSION_UNSECURED"

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;-><init>(Ljava/lang/String;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    .line 151
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "nextFilter"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    .line 153
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "handler"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 181
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Z)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    if-eqz p1, :cond_0

    .line 197
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 198
    iput-boolean p2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    return-void

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sslContext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;
    .locals 1

    .line 797
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/ssl/SslHandler;

    if-eqz p1, :cond_1

    .line 803
    invoke-virtual {p1}, Lorg/apache/mina/filter/ssl/SslHandler;->getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    .line 804
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not managed by this filter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 800
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 2

    .line 789
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 771
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Processing the SSL Data "

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushPreHandshakeEvents()V

    .line 781
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    .line 784
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    return-void
.end method

.method private initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 737
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 742
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->closeOutbound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "SSL session is shut down already."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1

    .line 748
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    if-nez v1, :cond_1

    .line 751
    invoke-static {p2}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    .line 754
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 755
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 758
    :cond_2
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 759
    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_UNSECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 762
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 763
    throw p1
.end method

.method private initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 721
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "{} : Starting the first handshake"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object p2

    .line 725
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :try_start_1
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 727
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 727
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 731
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 732
    throw p1
.end method

.method private isCloseNotify(Ljava/lang/Object;)Z
    .locals 7

    .line 592
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 596
    :cond_0
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 597
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 599
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x15

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 600
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x2

    .line 601
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    if-eqz v5, :cond_1

    .line 602
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    if-eq v5, v4, :cond_1

    .line 603
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 604
    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/2addr v0, v3

    .line 605
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    instance-of v0, p3, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    if-eqz v0, :cond_6

    .line 554
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    .line 555
    invoke-virtual {v0}, Lorg/apache/mina/core/write/WriteToClosedSessionException;->getRequests()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 558
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/write/WriteRequest;

    .line 559
    invoke-interface {v3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_6

    .line 566
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    return-void

    .line 571
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    .line 574
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 575
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 584
    :cond_5
    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {v0, v1, v2, p3}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v0

    .line 588
    :cond_6
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 663
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    if-nez v0, :cond_0

    .line 668
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 675
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 676
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    .line 678
    new-instance v2, Lorg/apache/mina/filter/ssl/SslFilter$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$1;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {v1, v2}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    .line 684
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_2

    .line 692
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    .line 684
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 688
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 689
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    if-nez v1, :cond_3

    .line 692
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :cond_3
    throw v0
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 610
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "{}: Writing Message : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 615
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v1

    .line 618
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 620
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 623
    :cond_1
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 629
    :cond_2
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 631
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isWritingEncryptedData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 634
    :cond_3
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 636
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 637
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/mina/filter/ssl/SslHandler;->encrypt(Ljava/nio/ByteBuffer;)V

    .line 638
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    .line 639
    new-instance v2, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p3, p2, v3}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    invoke-virtual {v1, p1, v2}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 642
    :cond_4
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 644
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_5
    const/4 v0, 0x0

    .line 650
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 653
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 650
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 656
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 657
    throw p1
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;
    .locals 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v1, :cond_0

    const-string v1, "Session Server"

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Session Client"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x5b

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/ssl/SslHandler;

    if-nez v1, :cond_1

    const-string p1, "(no sslEngine)"

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 268
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "(SSL)"

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "(ssl...)"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSslSession(Lorg/apache/mina/core/session/IoSession;)Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 208
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSession;

    return-object p1
.end method

.method public initiateHandshake(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 705
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    return-void

    .line 714
    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v0, "No SSL next filter in the chain"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 708
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v0, "No filter chain"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isNeedClientAuth()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    return v0
.end method

.method public isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 2

    .line 287
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/ssl/SslHandler;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 293
    :cond_0
    monitor-enter p1

    .line 294
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 295
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUseClientMode()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    return v0
.end method

.method public isWantClientAuth()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 483
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "{}: Message received : {}"

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 489
    monitor-enter v0

    .line 490
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v0, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    goto :goto_1

    .line 496
    :cond_1
    check-cast p3, Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :try_start_1
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V

    .line 503
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    .line 505
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    goto :goto_0

    .line 509
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    .line 512
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-virtual {v0, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V

    return-void

    :catch_0
    move-exception p1

    .line 518
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result p3

    if-nez p3, :cond_4

    .line 519
    new-instance p3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "SSL handshake failed."

    invoke-direct {p3, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p3, p1}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 524
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    move-object p1, p3

    goto :goto_2

    .line 527
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 530
    :goto_2
    throw p1

    :catchall_0
    move-exception p1

    .line 533
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    .line 540
    instance-of v0, p3, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    if-eqz v0, :cond_0

    .line 541
    check-cast p3, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    .line 542
    invoke-virtual {p3}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 452
    iget-boolean p2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 453
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    :cond_0
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 426
    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Adding the SSL Filter {} to the chain"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    .line 435
    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance p2, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 441
    iget-object p3, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz p3, :cond_0

    array-length p3, p3

    if-nez p3, :cond_1

    .line 442
    :cond_0
    iget-object p3, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/net/ssl/SSLServerSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    .line 445
    :cond_1
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 447
    sget-object p3, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p3, p2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string p1, "Only one SSL filter is permitted in a chain."

    .line 428
    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 429
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 459
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    .line 460
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    .line 461
    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object p2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 468
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 471
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 474
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void

    :catchall_0
    move-exception v1

    .line 474
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 477
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    throw v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0

    .line 339
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    return-void
.end method

.method public startSsl(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 225
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 228
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 229
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 230
    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 235
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 235
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 240
    throw p1
.end method

.method public stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 308
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 312
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    .line 314
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushScheduledEvents()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 314
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 319
    throw p1
.end method
