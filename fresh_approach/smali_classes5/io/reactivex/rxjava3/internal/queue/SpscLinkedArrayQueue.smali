.class public final Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;
.super Ljava/lang/Object;
.source "SpscLinkedArrayQueue.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/SimplePlainQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/internal/fuseable/SimplePlainQueue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final consumerMask:I

.field producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J

.field producerLookAheadStep:I

.field final producerMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x8

    .line 49
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 52
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 53
    iput v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    .line 54
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->adjustLookAheadStep(I)V

    .line 55
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    iput v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 57
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    return-void
.end method

.method private adjustLookAheadStep(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 213
    div-int/lit8 p1, p1, 0x4

    sget v0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    return-void
.end method

.method private static calcDirectOffset(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    return p0
.end method

.method private static calcWrappedOffset(JI)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "mask"
        }
    .end annotation

    long-to-int p1, p0

    and-int p0, p1, p2

    .line 241
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result p0

    return p0
.end method

.method private lpConsumerIndex()J
    .locals 2

    .line 229
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lpProducerIndex()J
    .locals 2

    .line 225
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .locals 2

    .line 221
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private static lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private lvNextBufferAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curr",
            "nextIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result p2

    .line 120
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    .line 121
    invoke-static {p1, p2, v1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    return-object v0
.end method

.method private lvProducerIndex()J
    .locals 2

    .line 217
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "nextBuffer",
            "index",
            "mask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 180
    invoke-static {p2, p3, p4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result p2

    .line 181
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "nextBuffer",
            "index",
            "mask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 154
    invoke-static {p2, p3, p4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result p4

    .line 155
    invoke-static {p1, p4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 157
    invoke-static {p1, p4, v1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    .line 158
    invoke-direct {p0, p2, p3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    :cond_0
    return-object v0
.end method

.method private resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "oldBuffer",
            "currIndex",
            "offset",
            "e",
            "mask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 104
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-long/2addr p6, p2

    const-wide/16 v2, 0x1

    sub-long/2addr p6, v2

    .line 105
    iput-wide p6, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    .line 106
    invoke-static {v1, p4, p5}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 107
    invoke-direct {p0, p1, v1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 108
    sget-object p5, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, p5}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    add-long/2addr p2, v2

    .line 110
    invoke-direct {p0, p2, p3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    return-void
.end method

.method private soConsumerIndex(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private static soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method private soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curr",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    return-void
.end method

.method private soProducerIndex(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "e",
            "index",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .line 95
    invoke-static {p1, p5, p2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 p1, 0x1

    add-long/2addr p3, p1

    .line 96
    invoke-direct {p0, p3, p4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 5

    .line 209
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 72
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 73
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lpProducerIndex()J

    move-result-wide v3

    .line 74
    iget v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    .line 75
    invoke-static {v3, v4, v0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v5

    .line 76
    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    cmp-long v2, v3, v6

    if-gez v2, :cond_0

    move-object v0, p0

    move-object v2, p1

    .line 77
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result p1

    return p1

    .line 79
    :cond_0
    iget v2, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    int-to-long v6, v2

    add-long/2addr v6, v3

    .line 81
    invoke-static {v6, v7, v0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v2

    .line 82
    invoke-static {v1, v2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v8, 0x1

    if-nez v2, :cond_1

    sub-long/2addr v6, v8

    .line 83
    iput-wide v6, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    move-object v0, p0

    move-object v2, p1

    .line 84
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result p1

    return p1

    :cond_1
    add-long/2addr v8, v3

    .line 85
    invoke-static {v8, v9, v0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v2

    invoke-static {v1, v2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, p0

    move-object v2, p1

    .line 86
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result p1

    return p1

    :cond_2
    int-to-long v6, v0

    move-object v0, p0

    move-wide v2, v3

    move v4, v5

    move-object v5, p1

    .line 88
    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null is not a valid element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 264
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v1

    .line 265
    iget v3, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    const-wide/16 v4, 0x2

    add-long/2addr v4, v1

    .line 267
    invoke-static {v4, v5, v3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v6

    .line 269
    invoke-static {v0, v6}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 270
    invoke-static {v1, v2, v3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 271
    invoke-static {v0, v2, p2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 272
    invoke-static {v0, v1, p1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 273
    invoke-direct {p0, v4, v5}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    .line 276
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 277
    iput-object v7, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 279
    invoke-static {v1, v2, v3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 280
    invoke-static {v7, v2, p2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 281
    invoke-static {v7, v1, p1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 282
    invoke-direct {p0, v0, v7}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 284
    sget-object p1, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 286
    invoke-direct {p0, v4, v5}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 166
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 167
    iget v3, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    .line 168
    invoke-static {v1, v2, v3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v4

    .line 169
    invoke-static {v0, v4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 170
    sget-object v5, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 171
    invoke-direct {p0, v0, v4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvNextBufferAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 135
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 136
    iget v3, p0, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    .line 137
    invoke-static {v1, v2, v3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v4

    .line 138
    invoke-static {v0, v4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 139
    sget-object v6, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 141
    invoke-static {v0, v4, v7}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 142
    invoke-direct {p0, v1, v2}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    return-object v5

    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 145
    invoke-direct {p0, v0, v4}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvNextBufferAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v7
.end method

.method public size()I
    .locals 7

    .line 196
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 199
    :goto_0
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    .line 200
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/queue/SpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    sub-long/2addr v2, v4

    long-to-int v0, v2

    return v0

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method
