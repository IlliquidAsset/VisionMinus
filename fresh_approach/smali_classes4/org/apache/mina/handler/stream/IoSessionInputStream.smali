.class Lorg/apache/mina/handler/stream/IoSessionInputStream;
.super Ljava/io/InputStream;
.source "IoSessionInputStream.java"


# instance fields
.field private final buf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private volatile closed:Z

.field private exception:Ljava/io/IOException;

.field private final mutex:Ljava/lang/Object;

.field private volatile released:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 46
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 48
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method private releaseBuffer()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    return-void
.end method

.method private waitForData()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 116
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 118
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted while waiting for more data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 120
    throw v2

    .line 123
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 130
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_3
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    .line 127
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    throw v0

    :catchall_0
    move-exception v1

    .line 123
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 53
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 69
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    .line 70
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    .line 72
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 80
    monitor-exit v0

    return v1

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x1

    .line 91
    monitor-exit v0

    return p1

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 97
    iget-object p3, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p3

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 104
    monitor-exit v0

    return p3

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public throwException(Ljava/io/IOException;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 169
    iput-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    .line 171
    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 150
    monitor-exit v0

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 155
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 156
    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 159
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 160
    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 161
    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 163
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
