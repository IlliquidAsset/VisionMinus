.class public Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;
.super Lcom/univocity/parsers/common/input/AbstractCharInputReader;
.source "ConcurrentCharInputReader.java"


# instance fields
.field private bucketLoader:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

.field private final bucketQuantity:I

.field private final bucketSize:I

.field private unwrapping:Z


# direct methods
.method public constructor <init>(CIII)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p4}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;-><init>(CI)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->unwrapping:Z

    .line 56
    iput p2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketSize:I

    .line 57
    iput p3, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketQuantity:I

    return-void
.end method

.method public constructor <init>([CCIII)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p5}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;-><init>([CCI)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->unwrapping:Z

    .line 72
    iput p3, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketSize:I

    .line 73
    iput p4, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketQuantity:I

    return-void
.end method


# virtual methods
.method protected reloadBuffer()V
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketLoader:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->nextBucket()Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketLoader:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    invoke-virtual {v1}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->reportError()V

    .line 111
    iget-object v1, v0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->data:[C

    iput-object v1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->buffer:[C

    .line 112
    iget v0, v0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;->length:I

    iput v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->length:I
    :try_end_0
    .catch Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->unwrapping:Z

    .line 115
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->unwrapInputStream(Lcom/univocity/parsers/common/input/BomInput$BytesProcessedNotification;)V

    :goto_0
    return-void
.end method

.method protected setReader(Ljava/io/Reader;)V
    .locals 3

    .line 93
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->unwrapping:Z

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->stop()V

    .line 95
    new-instance v0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    iget v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketSize:I

    iget v2, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketQuantity:I

    invoke-direct {v0, p1, v1, v2}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketLoader:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    .line 96
    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->reportError()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketLoader:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    iput-object p1, v0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->reader:Ljava/io/Reader;

    :goto_0
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->unwrapping:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->unwrapping:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketLoader:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->stopReading()V

    .line 84
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharInputReader;->bucketLoader:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;->reportError()V

    :cond_0
    return-void
.end method
