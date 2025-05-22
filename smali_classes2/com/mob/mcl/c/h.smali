.class public Lcom/mob/mcl/c/h;
.super Ljava/lang/Object;
.source "MlpClient.java"


# instance fields
.field a:Lcom/mob/mcl/c/a;

.field final b:Lcom/mob/mcl/c/f;

.field final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/mob/mcl/c/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    iput-object p1, p0, Lcom/mob/mcl/c/h;->b:Lcom/mob/mcl/c/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/mcl/c/g;)Lcom/mob/mcl/c/e;
    .locals 7

    .line 1
    iget-wide v0, p1, Lcom/mob/mcl/c/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/mob/mcl/c/g;->c:J

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->a:Lcom/mob/mcl/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    new-instance v2, Lcom/mob/mcl/c/e;

    invoke-direct {v2}, Lcom/mob/mcl/c/e;-><init>()V

    .line 6
    iget-object v3, v0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    monitor-enter v3

    .line 7
    :try_start_0
    iget-object v4, v0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    iget-wide v5, p1, Lcom/mob/mcl/c/g;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v3, v0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 11
    iget v4, p1, Lcom/mob/mcl/c/g;->a:I

    add-int/lit8 v4, v4, 0x11

    .line 12
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    iget v5, p1, Lcom/mob/mcl/c/g;->a:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    iget v5, p1, Lcom/mob/mcl/c/g;->b:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 16
    iget-wide v5, p1, Lcom/mob/mcl/c/g;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 17
    iget-object p1, p1, Lcom/mob/mcl/c/g;->d:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v5, "UTF-8"

    .line 18
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 20
    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 21
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 22
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, v0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    check-cast v0, Lcom/mob/mcl/c/i;

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1

    :cond_2
    throw v1

    :catchall_1
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 28
    :cond_3
    throw v1
.end method
