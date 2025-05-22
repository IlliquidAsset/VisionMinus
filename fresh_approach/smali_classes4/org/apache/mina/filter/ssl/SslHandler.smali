.class Lorg/apache/mina/filter/ssl/SslHandler;
.super Ljava/lang/Object;
.source "SslHandler.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final filterWriteEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private firstSSLNegociation:Z

.field private handshakeComplete:Z

.field private handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final messageReceivedEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final preHandshakeEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/filterchain/IoFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduled_events:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private sslEngine:Ljavax/net/ssl/SSLEngine;

.field private final sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

.field private sslLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private writingEncryptedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 120
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 123
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->scheduled_events:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    .line 133
    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method private checkStatus(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 514
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p1

    .line 524
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq p1, v0, :cond_0

    return-void

    .line 525
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLEngine error during decrypt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " inNetBuffer: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "appBuffer: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static copy(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 807
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 808
    invoke-virtual {v0, p0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 809
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method private createOutNetBuffer(I)V
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 629
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    return-void
.end method

.method private doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .line 790
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method private renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 724
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    .line 725
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_0

    .line 726
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 728
    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 729
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 730
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    :cond_0
    return-void
.end method

.method private unwrap()Ljavax/net/ssl/SSLEngineResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 744
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 754
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 758
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    .line 760
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_3

    .line 763
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    .line 765
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 771
    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->expand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 768
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "SSL buffer overflow"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_3
    :goto_1
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v3, :cond_4

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_5

    :cond_4
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v1, :cond_1

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v1, :cond_1

    :cond_5
    return-object v0
.end method

.method private unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 684
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 689
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 692
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 696
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 697
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 698
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 703
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 705
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 706
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 709
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    goto :goto_1

    .line 712
    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 713
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 715
    :cond_4
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 716
    iput-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 720
    :goto_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p1

    return-object p1

    .line 686
    :cond_5
    :goto_2
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object p1
.end method


# virtual methods
.method closeOutbound()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 484
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 486
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 490
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 492
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    shl-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 493
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 503
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    return v3

    .line 500
    :cond_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Improper close state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return v1
.end method

.method destroy()V
    .locals 4

    .line 207
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    sget-object v1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception from SSLEngine.closeInbound()."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 219
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 225
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 226
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v1
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 230
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 231
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    throw v1

    .line 230
    :catch_1
    :goto_2
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 231
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 234
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 235
    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 237
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method encrypt(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-eqz v0, :cond_6

    .line 441
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p1, :cond_0

    .line 443
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 451
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_3

    .line 456
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_2

    .line 457
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 459
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_4

    .line 460
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 461
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 463
    :cond_4
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLEngine error during encrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " src: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "outNetBuffer: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_5
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    return-void

    .line 438
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 403
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 404
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 407
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->appBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 409
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->shrink()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 424
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 425
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->shrink()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method flushPreHandshakeEvents()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 287
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    if-eqz v0, :cond_0

    .line 288
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    .line 289
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method flushScheduledEvents()V
    .locals 3

    .line 309
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->scheduled_events:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 312
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 324
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    .line 326
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_1

    .line 328
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->scheduled_events:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    return-object v0
.end method

.method handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 535
    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 586
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} processing the NEED_WRAP state"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 598
    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->createOutNetBuffer(I)V

    .line 601
    :goto_1
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->emptyBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_3

    .line 603
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    shl-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 604
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 610
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 611
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_0

    .line 616
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Handshaking State"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while processing the Handshake for session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    .line 617
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 618
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_5
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} processing the NEED_UNWRAP state"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrapHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    .line 577
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_8

    .line 578
    :cond_7
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    return-void

    .line 563
    :cond_9
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 564
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} processing the NEED_TASK state"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    :cond_a
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->doTasks()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_0

    .line 538
    :cond_b
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 539
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} processing the FINISHED state"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    :cond_c
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v3, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iput-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 546
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 548
    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    .line 549
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SESSION_SECURED:Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    .line 552
    :cond_d
    sget-object p1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 553
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result p1

    if-nez p1, :cond_e

    .line 554
    sget-object p1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{} is now secured"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 556
    :cond_e
    sget-object p1, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{} is not secured yet"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    :goto_2
    return-void
.end method

.method init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} Initializing the SSL Handler"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v0, v0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v1, v1, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 159
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslFilter;->isUseClientMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 162
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 164
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslFilter;->isWantClientAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslFilter;->isNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 174
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 179
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 185
    :cond_5
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 187
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    .line 194
    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->firstSSLNegociation:Z

    .line 195
    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    .line 197
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} SSL Handler Initialization done."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method isHandshakeComplete()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    return v0
.end method

.method isInboundDone()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isOutboundDone()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isWritingEncryptedData()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    return v0
.end method

.method messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 344
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v0

    const-string v1, "{} Processing the received message"

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v2, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    :cond_0
    sget-object v0, Lorg/apache/mina/filter/ssl/SslHandler;->LOGGER:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v2, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_2

    .line 354
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 357
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 359
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 360
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    goto :goto_2

    .line 363
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 365
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 369
    :cond_4
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->unwrap()Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 372
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 373
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 375
    :cond_5
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 376
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 379
    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->checkStatus(Ljavax/net/ssl/SSLEngineResult;)V

    .line 381
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->renegotiateIfNeeded(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljavax/net/ssl/SSLEngineResult;)V

    .line 384
    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 387
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p1

    .line 388
    :goto_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz p1, :cond_7

    .line 391
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 392
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_7
    return-void
.end method

.method needToCompleteHandshake()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method release()V
    .locals 2

    .line 836
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 838
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->inNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 841
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 843
    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_1
    return-void
.end method

.method scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4

    .line 294
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->filterWriteEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    .locals 4

    .line 305
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceivedEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 4

    .line 281
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->preHandshakeEventQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, p1, v2, v3, p2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSLStatus <"

    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    iget-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    if-eqz v1, :cond_0

    const-string v1, "SSL established"

    .line 819
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Processing Handshake"

    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Status : "

    .line 822
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HandshakeComplete :"

    .line 826
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/mina/filter/ssl/SslHandler;->handshakeComplete:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->outNetBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    const/4 v0, 0x0

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 652
    new-instance v2, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v2, v3}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 653
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v5, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v5, v1, v2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    invoke-virtual {v3, p1, v4, v5}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 656
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->needToCompleteHandshake()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 658
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    new-instance v2, Lorg/apache/mina/core/future/DefaultWriteFuture;

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v2, v3}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 668
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslHandler;->sslFilter:Lorg/apache/mina/filter/ssl/SslFilter;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslHandler;->session:Lorg/apache/mina/core/session/IoSession;

    new-instance v5, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v5, v1, v2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    invoke-virtual {v3, p1, v4, v5}, Lorg/apache/mina/filter/ssl/SslFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 660
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "SSL handshake failed."

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1, p1}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 662
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    :cond_2
    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    return-object v2

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslHandler;->writingEncryptedData:Z

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
