.class public Lcom/mob/mobapm/proxy/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/OutputStream;

.field public b:Lcom/mob/mobapm/core/Transaction;

.field private c:Ljava/nio/ByteBuffer;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/mob/mobapm/core/Transaction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/mobapm/proxy/c;->e:Z

    .line 6
    iput-object p1, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    .line 7
    iput-object p2, p0, Lcom/mob/mobapm/proxy/c;->b:Lcom/mob/mobapm/core/Transaction;

    .line 8
    sget p1, Lcom/mob/mobapm/core/c;->j:I

    iput p1, p0, Lcom/mob/mobapm/proxy/c;->d:I

    .line 9
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "mob---close:"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-boolean v3, p0, Lcom/mob/mobapm/proxy/c;->e:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mob/mobapm/proxy/c;->b:Lcom/mob/mobapm/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const-string v3, "POST"

    :try_start_1
    iget-object v4, p0, Lcom/mob/mobapm/proxy/c;->b:Lcom/mob/mobapm/core/Transaction;

    invoke-virtual {v4}, Lcom/mob/mobapm/core/Transaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 9
    new-array v2, v0, [B

    .line 10
    iget-object v3, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->b:Lcom/mob/mobapm/core/Transaction;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/mob/mobapm/core/Transaction;->setBody(Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 18
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 20
    :cond_3
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "write b[]:"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 5
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/mob/mobapm/proxy/c;->write([BII)V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "write b[]:int:int"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/mob/mobapm/proxy/c;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string v0, "POST"

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/mob/mobapm/proxy/c;->b:Lcom/mob/mobapm/core/Transaction;

    invoke-virtual {v1}, Lcom/mob/mobapm/core/Transaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 13
    :try_start_2
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 21
    :catchall_1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mob/mobapm/proxy/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_2
    return-void
.end method
