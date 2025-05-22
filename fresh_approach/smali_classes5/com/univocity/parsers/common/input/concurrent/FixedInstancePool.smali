.class abstract Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;
.super Ljava/lang/Object;
.source "FixedInstancePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field count:I

.field private head:I

.field private final instanceIndexes:[I

.field final instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/univocity/parsers/common/input/concurrent/Entry<",
            "TT;>;"
        }
    .end annotation
.end field

.field private lastInstanceIndex:I

.field private tail:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->head:I

    .line 36
    iput v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->tail:I

    .line 37
    iput v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->count:I

    .line 38
    iput v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->lastInstanceIndex:I

    .line 48
    new-array v1, p1, [Lcom/univocity/parsers/common/input/concurrent/Entry;

    iput-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;

    .line 49
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instanceIndexes:[I

    const/4 v1, -0x1

    .line 50
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 51
    iget-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;

    new-instance v1, Lcom/univocity/parsers/common/input/concurrent/Entry;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/univocity/parsers/common/input/concurrent/Entry;-><init>(Ljava/lang/Object;I)V

    aput-object v1, p1, v0

    .line 52
    iget-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instanceIndexes:[I

    aput v0, p1, v0

    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/univocity/parsers/common/input/concurrent/Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/univocity/parsers/common/input/concurrent/Entry<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->count:I

    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x32

    .line 71
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 74
    new-instance v0, Lcom/univocity/parsers/common/input/concurrent/Entry;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/univocity/parsers/common/input/concurrent/Entry;-><init>(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 78
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instanceIndexes:[I

    iget v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->head:I

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 80
    iget v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->lastInstanceIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->lastInstanceIndex:I

    .line 81
    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instanceIndexes:[I

    aput v0, v1, v0

    .line 82
    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;

    new-instance v2, Lcom/univocity/parsers/common/input/concurrent/Entry;

    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/univocity/parsers/common/input/concurrent/Entry;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v1, v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;

    aget-object v0, v1, v0

    .line 86
    iget v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->head:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->head:I

    .line 87
    iget-object v2, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->head:I

    .line 90
    :cond_2
    iget v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public declared-synchronized release(Lcom/univocity/parsers/common/input/concurrent/Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/input/concurrent/Entry<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_0
    iget v0, p1, Lcom/univocity/parsers/common/input/concurrent/Entry;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instanceIndexes:[I

    iget v1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->tail:I

    iget p1, p1, Lcom/univocity/parsers/common/input/concurrent/Entry;->index:I

    aput p1, v0, v1

    .line 102
    iget p1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->tail:I

    iget-object v0, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->instancePool:[Lcom/univocity/parsers/common/input/concurrent/Entry;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->tail:I

    .line 105
    :cond_0
    iget p1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;->count:I

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
