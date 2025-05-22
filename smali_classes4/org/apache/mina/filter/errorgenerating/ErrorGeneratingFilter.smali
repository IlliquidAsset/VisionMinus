.class public Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ErrorGeneratingFilter.java"


# instance fields
.field private changeByteProbability:I

.field private duplicatePduProbability:I

.field private insertByteProbability:I

.field private final logger:Lorg/slf4j/Logger;

.field private manipulateReads:Z

.field private manipulateWrites:Z

.field private maxInsertByte:I

.field private removeByteProbability:I

.field private removePduProbability:I

.field private resendPduLasterProbability:I

.field private rng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    .line 58
    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    .line 60
    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    .line 62
    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    .line 64
    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    .line 66
    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    const/16 v1, 0xa

    .line 68
    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    .line 70
    iput-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    .line 72
    iput-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 76
    const-class v0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    .line 127
    iget p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-le p1, v0, :cond_3

    .line 128
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 133
    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    iget v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 135
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 137
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 139
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_1
    :goto_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_2

    .line 142
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result p1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 146
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserted "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 6

    .line 154
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-lez p1, :cond_3

    iget p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-le p1, v2, :cond_3

    .line 155
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 159
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 160
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 161
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 163
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 165
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 168
    :goto_1
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_2

    .line 169
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 172
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->rewind()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 173
    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 174
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 175
    iget-object v3, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes at position "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 178
    :cond_3
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_5

    iget p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le p1, v1, :cond_5

    .line 179
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 183
    new-array v1, p1, [B

    .line 184
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    :goto_2
    if-ge v0, p1, :cond_4

    .line 186
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 187
    aget-byte v3, v1, v0

    invoke-virtual {p2, v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modified "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 84
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    .line 87
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object p3

    invoke-direct {v1, v0, v2, p3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    move-object p3, v1

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    iget-object v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 92
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 100
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    iget-object v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    if-le v0, v1, :cond_2

    return-void

    .line 105
    :cond_2
    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public getChangeByteProbability()I
    .locals 1

    .line 195
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    return v0
.end method

.method public getDuplicatePduProbability()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    return v0
.end method

.method public getInsertByteProbability()I
    .locals 1

    .line 221
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    return v0
.end method

.method public getMaxInsertByte()I
    .locals 1

    .line 300
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    return v0
.end method

.method public getRemoveByteProbability()I
    .locals 1

    .line 261
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    return v0
.end method

.method public getRemovePduProbability()I
    .locals 1

    .line 276
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    return v0
.end method

.method public getResendPduLasterProbability()I
    .locals 1

    .line 288
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    return v0
.end method

.method public isManipulateReads()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    return v0
.end method

.method public isManipulateWrites()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    if-eqz v0, :cond_0

    .line 111
    instance-of v0, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 114
    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p3, v0

    .line 123
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public setChangeByteProbability(I)V
    .locals 0

    .line 205
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    return-void
.end method

.method public setDuplicatePduProbability(I)V
    .locals 0

    .line 217
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    return-void
.end method

.method public setInsertByteProbability(I)V
    .locals 0

    .line 231
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    return-void
.end method

.method public setManipulateReads(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    return-void
.end method

.method public setManipulateWrites(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    return-void
.end method

.method public setMaxInsertByte(I)V
    .locals 0

    .line 309
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    return-void
.end method

.method public setRemoveByteProbability(I)V
    .locals 0

    .line 272
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    return-void
.end method

.method public setRemovePduProbability(I)V
    .locals 0

    .line 284
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    return-void
.end method

.method public setResendPduLasterProbability(I)V
    .locals 0

    .line 296
    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    return-void
.end method
