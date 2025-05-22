.class public Lcom/mob/apc/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final c:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/apc/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/mob/apc/a/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static a(Lcom/mob/apc/a/c;Ljava/lang/String;Lcom/mob/apc/a/f;J)Lcom/mob/apc/a/f;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1
    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const-string v4, "[realSendAIDLMessage] pkg: %s, InnerMessage: %s, timeout: %s"

    invoke-virtual {v0, v4, v1}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mob/apc/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/apc/a/e;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "[realSendAIDLMessage] serverBinder %s is alive."

    :try_start_1
    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {v1, v4, v6}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/mob/apc/a/e;->a(Lcom/mob/apc/a/f;)Lcom/mob/apc/a/f;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v6, "[realSendAIDLMessage] serverBinder send error: %s %s"

    invoke-virtual {v1, v6, v4}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/mob/MobACService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-static {}, Lcom/mob/apc/MobAPC;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v6, "[realSendAIDLMessage] rebind service: %s %s"

    invoke-virtual {v1, v6, v4}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/mob/apc/a/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    new-array v0, v2, [B

    iget-object v1, p0, Lcom/mob/apc/a/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0, p3, p4}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p0, p0, Lcom/mob/apc/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mob/apc/a/e;

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string p4, "[realSendAIDLMessage] rebind service binder: %s %s"

    :try_start_6
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p0, v0, v3

    invoke-virtual {p3, p4, v0}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0, p2}, Lcom/mob/apc/a/e;->a(Lcom/mob/apc/a/f;)Lcom/mob/apc/a/f;

    move-result-object p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    :try_start_8
    new-instance p2, Lcom/mob/apc/APCException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 p3, 0x3ec

    const-string p4, "service binder %s send message RemoteException: %s"

    :try_start_9
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_2
    new-instance p0, Lcom/mob/apc/APCException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 p2, 0x3e9

    const-string p3, "service binder %s is null or timeout"

    :try_start_a
    new-array p4, v3, [Ljava/lang/Object;

    aput-object p1, p4, v2

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_0
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "[realSendAIDLMessage] service binder %s send exception: %s"

    invoke-virtual {p2, p1, p3}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/mob/apc/APCException;

    invoke-direct {p1, p0}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Lcom/mob/apc/APCException;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "service %s bind failed"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3eb

    invoke-direct {p0, p2, p1}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_2
    move-exception p0

    new-instance p1, Lcom/mob/apc/APCException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "service bind exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x3ea

    invoke-direct {p1, p2, p0}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mob/apc/APCMessage;J)Lcom/mob/apc/APCMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p3

    move-wide/from16 v7, p4

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v3, v9

    const/4 v10, 0x1

    aput-object v0, v3, v10

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "[sendAIDLMessage] pkg: %s, businessID: %s, apcMessage: %s, timeout: %s"

    invoke-virtual {v2, v4, v3}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :try_start_0
    new-instance v3, Lcom/mob/apc/a/f;

    invoke-direct {v3, v1, p2, v7, v8}, Lcom/mob/apc/a/f;-><init>(Lcom/mob/apc/APCMessage;Ljava/lang/String;J)V

    .line 2
    new-instance v12, Lcom/mob/apc/a/b;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p4

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/mob/apc/a/b;-><init>(Lcom/mob/apc/a/c;Ljava/lang/String;Lcom/mob/apc/a/f;JLjava/util/concurrent/BlockingQueue;)V

    sget-object v0, Lcom/mob/apc/a/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-gtz v2, :cond_0

    .line 3
    invoke-virtual {v11}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/apc/a/f;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v7, v8, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/apc/a/f;

    if-nez v0, :cond_1

    sget-object v1, Lcom/mob/apc/a/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/mob/apc/a/f;->a:Lcom/mob/apc/APCMessage;

    return-object v0

    :cond_2
    iget-object v1, v0, Lcom/mob/apc/a/f;->d:Lcom/mob/apc/APCException;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/mob/apc/a/f;->d:Lcom/mob/apc/APCException;

    throw v0

    :cond_3
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v1, "[sendAIDLMessage] callback is null or timeout."

    invoke-direct {v0, v1}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "[sendAIDLMessage] exception: %s"

    invoke-virtual {v1, v3, v2}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/mob/apc/APCException;

    invoke-direct {v1, v0}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "[AIDLMessager][onServiceConnected] pkg: %s"

    :try_start_1
    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mob/apc/a/e;->a(Landroid/os/IBinder;)Lcom/mob/apc/a/e;

    move-result-object p2

    iget-object v2, p0, Lcom/mob/apc/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/mob/apc/a/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "[AIDLMessager][onServiceConnected] exception: %s"

    invoke-virtual {p2, v0, v1}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "[AIDLMessager][onServiceDisconnected] pkg: %s"

    :try_start_1
    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mob/apc/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/apc/a/g;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/mob/apc/a/g;->a()Lcom/mob/apc/a/g;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "[AIDLMessager][onServiceDisconnected] exception: %s"

    invoke-virtual {v2, p1, v1}, Lcom/mob/apc/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
