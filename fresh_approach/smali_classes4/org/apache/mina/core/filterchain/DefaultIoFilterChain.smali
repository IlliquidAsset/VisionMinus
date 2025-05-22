.class public Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.super Ljava/lang/Object;
.source "DefaultIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;,
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;,
        Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field private final name2entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lorg/apache/mina/core/session/AbstractIoSession;

.field private final tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const-class v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "connectFuture"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    .line 71
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 9

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    .line 85
    new-instance p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v6, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    const/4 v7, 0x0

    const-string v5, "head"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 86
    new-instance v8, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    new-instance v6, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;

    invoke-direct {v6, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$TailFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    const-string v5, "tail"

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    iput-object v8, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 87
    iget-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {p1, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextInputClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method private callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 1

    .line 585
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    if-nez v0, :cond_0

    .line 588
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 589
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 590
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 592
    sget-object p2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Unexpected exception from exceptionCaught handler."

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isClosing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 599
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 602
    :cond_1
    invoke-interface {v0, p3}, Lorg/apache/mina/core/future/ConnectFuture;->setException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextInputClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 613
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 614
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 615
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->inputClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 617
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1

    .line 540
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 541
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 542
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 546
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 547
    throw p1

    :catch_1
    move-exception p1

    .line 544
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    .line 568
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 569
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 570
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 574
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 575
    throw p1

    :catch_1
    move-exception p1

    .line 572
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 502
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 503
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 504
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 508
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 506
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 457
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 458
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 459
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 464
    throw p1

    :catch_1
    move-exception p1

    .line 461
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1

    .line 519
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 520
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 521
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 526
    throw p1

    :catch_1
    move-exception p1

    .line 523
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 474
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 475
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 476
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 480
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 481
    throw p1

    :catch_1
    move-exception p1

    .line 478
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 646
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 647
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 648
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter;->filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 652
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 653
    throw p1

    :catch_1
    move-exception p1

    .line 650
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    .line 627
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    .line 628
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    .line 629
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 634
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 635
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 636
    throw p1

    :catch_1
    move-exception p1

    .line 631
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 632
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3

    .line 446
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 3

    .line 433
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eqz v0, :cond_0

    return-object v0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    .locals 7

    const-string v0, " in "

    .line 399
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    const/16 v2, 0x3a

    .line 402
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v4

    invoke-interface {v1, p0, v3, v4}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    .line 411
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v4

    invoke-interface {v1, p0, v3, v4}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 413
    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostRemove(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 404
    new-instance v4, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreRemove(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    .locals 2

    .line 419
    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 420
    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 421
    invoke-static {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 422
    invoke-static {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 424
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 9

    const-string v0, " in "

    .line 378
    new-instance v8, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V

    const/16 v1, 0x3a

    .line 381
    :try_start_0
    invoke-virtual {v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    invoke-interface {p3, p0, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 387
    invoke-static {p1, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 388
    iget-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {p1, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :try_start_1
    invoke-virtual {v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    invoke-interface {p3, p0, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 393
    invoke-direct {p0, v8}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister0(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    .line 394
    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostAdd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 383
    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreAdd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    .line 200
    invoke-direct {p0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    .line 194
    invoke-direct {p0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkAddable(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->register(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    move-object v2, v1

    check-cast v2, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-direct {p0, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 367
    :try_start_2
    new-instance v2, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)Z"
        }
    .end annotation

    .line 690
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z
    .locals 0

    .line 686
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)V
    .locals 2

    .line 580
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextExceptionCaught(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireFilterClose()V
    .locals 2

    .line 641
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterClose(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callPreviousFilterWrite(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public fireInputClosed()V
    .locals 2

    .line 607
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 608
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextInputClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public fireMessageReceived(Ljava/lang/Object;)V
    .locals 5

    .line 531
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    move-object v1, p1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBytes(JJ)V

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageReceived(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    .line 553
    :try_start_0
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 557
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 558
    throw p1

    :catch_1
    move-exception v0

    .line 555
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 561
    :goto_0
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->isEncoded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextMessageSent(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_0
    return-void
.end method

.method public fireSessionClosed()V
    .locals 2

    .line 488
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->setClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 492
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 493
    throw v0

    :catch_1
    move-exception v0

    .line 490
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 497
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionClosed(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public fireSessionCreated()V
    .locals 2

    .line 452
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionCreated(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3

    .line 513
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseIdleCount(Lorg/apache/mina/core/session/IdleStatus;J)V

    .line 514
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionIdle(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public fireSessionOpened()V
    .locals 2

    .line 469
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->callNextSessionOpened(Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 149
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 139
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 661
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v2, :cond_0

    .line 662
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    .line 673
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v2, :cond_0

    .line 674
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 121
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    .line 122
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 126
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 107
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    .line 108
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 112
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNextFilter(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    return-object p1
.end method

.method public getNextFilter(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    return-object p1
.end method

.method public getNextFilter(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getEntry(Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object p1

    return-object p1
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->session:Lorg/apache/mina/core/session/AbstractIoSession;

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;)",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 229
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    .line 230
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    .line 232
    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-object p1

    .line 237
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 0

    monitor-enter p0

    .line 205
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V

    .line 207
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 3

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 213
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_1

    .line 214
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->deregister(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 220
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ">;",
            "Lorg/apache/mina/core/filterchain/IoFilter;",
            ")",
            "Lorg/apache/mina/core/filterchain/IoFilter;"
        }
    .end annotation

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 317
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_3

    .line 318
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object p1

    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_0

    .line 326
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/16 v2, 0x3a

    .line 334
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, v1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :try_start_2
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, v1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception v3

    .line 346
    :try_start_4
    invoke-static {v0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 347
    new-instance p1, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostAdd(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 336
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreAdd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 354
    :cond_2
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto/16 :goto_0

    .line 357
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 5

    monitor-enter p0

    .line 244
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x3a

    .line 249
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :try_start_2
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v3

    .line 261
    :try_start_4
    invoke-static {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 262
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostAdd(): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 251
    new-instance v1, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreAdd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 5

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    .line 272
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v0, v1, :cond_3

    .line 273
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v1, 0x0

    .line 277
    iget-object v2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->name2entry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_0

    .line 279
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/16 v2, 0x3a

    .line 287
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, v1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-static {v0, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v3

    invoke-interface {p2, p0, v1, v3}, Lorg/apache/mina/core/filterchain/IoFilter;->onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    .line 300
    :try_start_4
    invoke-static {v0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 301
    new-instance p1, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostAdd(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 289
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreAdd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/mina/core/filterchain/IoFilterLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 308
    :cond_2
    invoke-static {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v0

    goto/16 :goto_0

    .line 311
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->head:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    const/4 v2, 0x1

    .line 702
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->tail:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eq v1, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, ", "

    .line 704
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x28

    .line 709
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 711
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    .line 713
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "empty"

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " }"

    .line 722
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
