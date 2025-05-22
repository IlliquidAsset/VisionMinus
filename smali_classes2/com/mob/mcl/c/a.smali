.class public Lcom/mob/mcl/c/a;
.super Ljava/lang/Object;
.source "BioTcpSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/c/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/net/Socket;

.field public final b:Lcom/mob/mcl/c/f;

.field public c:Ljava/net/SocketAddress;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mob/mcl/c/e;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/mob/mcl/c/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    .line 7
    iput-object p2, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    .line 8
    iget-object p1, p0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 9
    check-cast p2, Lcom/mob/mcl/c/i;

    invoke-virtual {p2, p0}, Lcom/mob/mcl/c/i;->a(Lcom/mob/mcl/c/a;)V

    .line 10
    new-instance p1, Lcom/mob/mcl/c/a$a;

    const-string p2, "mlp-worker"

    invoke-direct {p1, p0, p2}, Lcom/mob/mcl/c/a$a;-><init>(Lcom/mob/mcl/c/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mob/mcl/c/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/mcl/c/g;

    .line 3
    iget-object v1, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    const/16 v2, 0x2329

    if-eqz v1, :cond_1

    iget v3, v0, Lcom/mob/mcl/c/g;->b:I

    if-lt v3, v2, :cond_1

    .line 4
    check-cast v1, Lcom/mob/mcl/c/i;

    invoke-virtual {v1, p0, v0}, Lcom/mob/mcl/c/i;->a(Lcom/mob/mcl/c/a;Lcom/mob/mcl/c/g;)V

    .line 7
    :cond_1
    iget v1, v0, Lcom/mob/mcl/c/g;->b:I

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iget-wide v4, v0, Lcom/mob/mcl/c/g;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/mcl/c/e;

    .line 12
    iget-object v2, v1, Lcom/mob/mcl/c/e;->a:Ljava/util/concurrent/CountDownLatch;

    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v3, v1, Lcom/mob/mcl/c/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v1, Lcom/mob/mcl/c/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 15
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 22
    iget-object v0, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/f;

    check-cast v0, Lcom/mob/mcl/c/i;

    if-eqz v0, :cond_1

    .line 23
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 25
    sget-object p1, Lcom/mob/mcl/b/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/mob/mcl/c/j;

    invoke-direct {v2, v0}, Lcom/mob/mcl/c/j;-><init>(Lcom/mob/mcl/c/i;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 26
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :catchall_0
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 28
    iget-object p1, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method
