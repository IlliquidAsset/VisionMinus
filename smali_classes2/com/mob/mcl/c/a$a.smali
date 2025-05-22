.class Lcom/mob/mcl/c/a$a;
.super Ljava/lang/Thread;
.source "BioTcpSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/mcl/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/a;


# direct methods
.method public constructor <init>(Lcom/mob/mcl/c/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/c/a$a;->a:Lcom/mob/mcl/c/a;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/a$a;->a:Lcom/mob/mcl/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 2
    :try_start_0
    iget-object v3, v0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x1fa0

    new-array v6, v5, [B

    :cond_0
    :goto_0
    const/4 v7, -0x1

    .line 6
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v7, v8, :cond_3

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v4, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-ge v8, v5, :cond_0

    .line 9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 10
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 12
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 13
    :goto_1
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    if-eq v10, v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    invoke-static {v9}, Lcom/mob/mcl/c/g;->a(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    move-object v10, v9

    check-cast v10, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mob/mcl/c/g;

    .line 20
    iget v11, v11, Lcom/mob/mcl/c/g;->a:I

    add-int/lit8 v11, v11, 0x11

    add-int/2addr v7, v11

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v0, v9}, Lcom/mob/mcl/c/a;->a(Ljava/util/List;)V

    .line 22
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 24
    array-length v9, v8

    sub-int/2addr v9, v7

    if-lez v9, :cond_0

    .line 25
    array-length v9, v8

    sub-int/2addr v9, v7

    invoke-virtual {v4, v8, v7, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 30
    iget-object v4, v0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    check-cast v4, Lcom/mob/mcl/c/i;

    if-eqz v4, :cond_4

    .line 31
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {v0, v2}, Lcom/mob/mcl/c/a;->a(Z)V

    :cond_3
    return-void

    .line 33
    :cond_4
    throw v1

    .line 34
    :cond_5
    throw v1
.end method
