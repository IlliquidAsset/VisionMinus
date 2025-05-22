.class public Lorg/apache/mina/filter/logging/LoggingFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "LoggingFilter.java"


# instance fields
.field private exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final logger:Lorg/slf4j/Logger;

.field private messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private final name:Ljava/lang/String;

.field private sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

.field private sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    const-class v0, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 52
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->WARN:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 55
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 58
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 61
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 64
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 67
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    .line 70
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    iput-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    if-nez p1, :cond_0

    .line 95
    const-class p1, Lorg/apache/mina/filter/logging/LoggingFilter;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    .line 100
    :goto_0
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V
    .locals 1

    .line 178
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_1
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_2
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_4
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 149
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 160
    :cond_1
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_2
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 154
    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 151
    :cond_4
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    sget-object v0, Lorg/apache/mina/filter/logging/LoggingFilter$1;->$SwitchMap$org$apache$mina$filter$logging$LogLevel:[I

    invoke-virtual {p1}, Lorg/apache/mina/filter/logging/LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 130
    :cond_1
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 127
    :cond_2
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 124
    :cond_3
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 121
    :cond_4
    iget-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "EXCEPTION :"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getExceptionCaughtLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageReceivedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getMessageSentLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionClosedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionCreatedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionIdleLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public getSessionOpenedLogLevel()Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "RECEIVED: {}"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SENT: {}"

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CLOSED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 238
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "CREATED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 220
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "IDLE"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 232
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "OPENED"

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/logging/LoggingFilter;->log(Lorg/apache/mina/filter/logging/LogLevel;Ljava/lang/String;)V

    .line 226
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public setExceptionCaughtLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->exceptionCaughtLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setMessageReceivedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageReceivedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setMessageSentLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->messageSentLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionClosedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionClosedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionCreatedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionCreatedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionIdleLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionIdleLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method public setSessionOpenedLogLevel(Lorg/apache/mina/filter/logging/LogLevel;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lorg/apache/mina/filter/logging/LoggingFilter;->sessionOpenedLevel:Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method
