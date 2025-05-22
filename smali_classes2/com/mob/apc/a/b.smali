.class Lcom/mob/apc/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/apc/a/f;

.field final synthetic c:J

.field final synthetic d:Ljava/util/concurrent/BlockingQueue;

.field final synthetic e:Lcom/mob/apc/a/c;


# direct methods
.method constructor <init>(Lcom/mob/apc/a/c;Ljava/lang/String;Lcom/mob/apc/a/f;JLjava/util/concurrent/BlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/apc/a/b;->e:Lcom/mob/apc/a/c;

    iput-object p2, p0, Lcom/mob/apc/a/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/apc/a/b;->b:Lcom/mob/apc/a/f;

    iput-wide p4, p0, Lcom/mob/apc/a/b;->c:J

    iput-object p6, p0, Lcom/mob/apc/a/b;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mob/apc/a/b;->e:Lcom/mob/apc/a/c;

    iget-object v1, p0, Lcom/mob/apc/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/apc/a/b;->b:Lcom/mob/apc/a/f;

    iget-wide v3, p0, Lcom/mob/apc/a/b;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mob/apc/a/c;->a(Lcom/mob/apc/a/c;Ljava/lang/String;Lcom/mob/apc/a/f;J)Lcom/mob/apc/a/f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/mob/apc/a/b;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lcom/mob/apc/a/f;

    iget-object v3, p0, Lcom/mob/apc/a/b;->b:Lcom/mob/apc/a/f;

    iget-object v3, v3, Lcom/mob/apc/a/f;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mob/apc/a/b;->c:J

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/mob/apc/a/f;-><init>(Lcom/mob/apc/APCMessage;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    instance-of v1, v0, Lcom/mob/apc/APCException;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/mob/apc/APCException;

    iput-object v1, v2, Lcom/mob/apc/a/f;->d:Lcom/mob/apc/APCException;

    :cond_0
    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/mob/apc/a/b;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_0
    iget-object v2, p0, Lcom/mob/apc/a/b;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
