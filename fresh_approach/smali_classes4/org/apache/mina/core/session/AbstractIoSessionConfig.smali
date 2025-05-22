.class public abstract Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.super Ljava/lang/Object;
.source "AbstractIoSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionConfig;


# instance fields
.field private idleTimeForBoth:I

.field private idleTimeForRead:I

.field private idleTimeForWrite:I

.field private maxReadBufferSize:I

.field private minReadBufferSize:I

.field private readBufferSize:I

.field private throughputCalculationInterval:I

.field private useReadOperation:Z

.field private writeTimeout:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 29
    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    const/16 v0, 0x800

    .line 32
    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    const/high16 v0, 0x10000

    .line 35
    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    const/16 v0, 0x3c

    .line 50
    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    return-void
.end method


# virtual methods
.method public final getBothIdleTime()I
    .locals 1

    .line 202
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getBothIdleTimeInMillis()J
    .locals 2

    .line 210
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I
    .locals 3

    .line 154
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 155
    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForBoth:I

    return p1

    .line 158
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 159
    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForRead:I

    return p1

    .line 162
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 163
    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForWrite:I

    return p1

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J
    .locals 4

    .line 174
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getMaxReadBufferSize()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    return v0
.end method

.method public getMinReadBufferSize()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    return v0
.end method

.method public getReadBufferSize()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    return v0
.end method

.method public final getReaderIdleTime()I
    .locals 1

    .line 218
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getReaderIdleTimeInMillis()J
    .locals 2

    .line 226
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThroughputCalculationInterval()I
    .locals 1

    .line 317
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    return v0
.end method

.method public getThroughputCalculationIntervalInMillis()J
    .locals 4

    .line 337
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 274
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    return v0
.end method

.method public getWriteTimeoutInMillis()J
    .locals 4

    .line 282
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final getWriterIdleTime()I
    .locals 1

    .line 234
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getWriterIdleTimeInMillis()J
    .locals 2

    .line 242
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isUseReadOperation()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->useReadOperation:Z

    return v0
.end method

.method public setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setReadBufferSize(I)V

    .line 71
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMinReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setMinReadBufferSize(I)V

    .line 72
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setMaxReadBufferSize(I)V

    .line 73
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 74
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 75
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 76
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getWriteTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setWriteTimeout(I)V

    .line 77
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setUseReadOperation(Z)V

    .line 78
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getThroughputCalculationInterval()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setThroughputCalculationInterval(I)V

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBothIdleTime(I)V
    .locals 1

    .line 250
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    return-void
.end method

.method public setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V
    .locals 2

    if-ltz p2, :cond_3

    .line 186
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 187
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForBoth:I

    goto :goto_0

    .line 188
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 189
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForRead:I

    goto :goto_0

    .line 190
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 191
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForWrite:I

    :goto_0
    return-void

    .line 193
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown idle status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 183
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal idle time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxReadBufferSize(I)V
    .locals 3

    const-string v0, "maxReadBufferSize: "

    if-lez p1, :cond_1

    .line 141
    iget v1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    if-lt p1, v1, :cond_0

    .line 146
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    return-void

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: greater than "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMinReadBufferSize(I)V
    .locals 3

    const-string v0, "minReadBufferSize: "

    if-lez p1, :cond_1

    .line 116
    iget v1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    if-gt p1, v1, :cond_0

    .line 121
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: smaller than "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setReadBufferSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 97
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReaderIdleTime(I)V
    .locals 1

    .line 258
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    return-void
.end method

.method public setThroughputCalculationInterval(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 329
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throughputCalculationInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseReadOperation(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->useReadOperation:Z

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 293
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal write timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWriterIdleTime(I)V
    .locals 1

    .line 266
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    return-void
.end method
