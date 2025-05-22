.class public Lcom/powervision/livestreaming/core/RESByteSpeedometer;
.super Ljava/lang/Object;
.source "RESByteSpeedometer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;
    }
.end annotation


# instance fields
.field private byteList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final syncByteList:Ljava/lang/Object;

.field private timeGranularity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->syncByteList:Ljava/lang/Object;

    .line 14
    iput p1, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->timeGranularity:I

    .line 15
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->byteList:Ljava/util/LinkedList;

    return-void
.end method

.method private trim(J)V
    .locals 5

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;

    iget-wide v0, v0, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;->time:J

    sub-long v0, p1, v0

    iget v2, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->timeGranularity:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 40
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public gain(I)V
    .locals 11

    .line 31
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->syncByteList:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 33
    iget-object v9, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->byteList:Ljava/util/LinkedList;

    new-instance v10, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;

    int-to-long v5, p1

    move-object v1, v10

    move-object v2, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;-><init>(Lcom/powervision/livestreaming/core/RESByteSpeedometer;JJ)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0, v7, v8}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->trim(J)V

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSpeed()I
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->syncByteList:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    invoke-direct {p0, v1, v2}, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->trim(J)V

    const-wide/16 v1, 0x0

    .line 23
    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;

    .line 24
    iget-wide v4, v4, Lcom/powervision/livestreaming/core/RESByteSpeedometer$ByteFrame;->bytenum:J

    add-long/2addr v1, v4

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 26
    iget v3, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->timeGranularity:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v2, v1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->syncByteList:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESByteSpeedometer;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
