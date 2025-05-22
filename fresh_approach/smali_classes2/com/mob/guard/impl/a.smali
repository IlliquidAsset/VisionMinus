.class public Lcom/mob/guard/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static j:Lcom/mob/guard/impl/a;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/net/Socket;

.field private g:Landroid/app/PendingIntent;

.field private h:I

.field private i:Lcom/mob/guard/impl/PingBroadcast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/guard/impl/a;

    invoke-direct {v0}, Lcom/mob/guard/impl/a;-><init>()V

    sput-object v0, Lcom/mob/guard/impl/a;->j:Lcom/mob/guard/impl/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/guard/impl/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/guard/impl/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/guard/impl/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/guard/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/guard/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mob/guard/impl/a;->f:Ljava/net/Socket;

    .line 8
    iput-object v0, p0, Lcom/mob/guard/impl/a;->g:Landroid/app/PendingIntent;

    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/mob/guard/impl/a;->h:I

    return-void
.end method

.method static synthetic a(Lcom/mob/guard/impl/a;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/mob/guard/impl/a;->h:I

    return p1
.end method

.method static synthetic a(Lcom/mob/guard/impl/a;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mob/guard/impl/a;->f:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/guard/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/guard/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/mob/guard/impl/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 8
    iget-object v0, p0, Lcom/mob/guard/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9
    iget-object v0, p0, Lcom/mob/guard/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/guard/impl/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/guard/impl/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/guard/impl/a;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/mob/guard/impl/a;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mob/guard/impl/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz p1, :cond_0

    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 30
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GuardConnect] onServerDisconnect maxRegisterClientFailedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mob/guard/impl/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isConnectException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 32
    invoke-direct {p0}, Lcom/mob/guard/impl/a;->b()V

    .line 34
    iget-object v0, p0, Lcom/mob/guard/impl/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/guard/impl/a$c;

    invoke-direct {v1, p0, p1}, Lcom/mob/guard/impl/a$c;-><init>(Lcom/mob/guard/impl/a;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/nio/channels/SelectionKey;)Z
    .locals 2

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SocketChannel;

    const-string v0, "chk"

    const-string v1, "utf-8"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/mob/guard/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/guard/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/guard/impl/a;->f:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mob/guard/impl/a;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mob/guard/impl/a;->f:Ljava/net/Socket;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mob/guard/impl/a;->i:Lcom/mob/guard/impl/PingBroadcast;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/guard/impl/a;->i:Lcom/mob/guard/impl/PingBroadcast;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 2
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 6
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Lcom/mob/guard/impl/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/guard/impl/a;->a()V

    return-void
.end method

.method public static d()Lcom/mob/guard/impl/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/mob/guard/impl/a;->j:Lcom/mob/guard/impl/a;

    return-object v0
.end method

.method static synthetic d(Lcom/mob/guard/impl/a;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/guard/impl/a;->f:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic e(Lcom/mob/guard/impl/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/guard/impl/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/mob/guard/impl/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mob/guard/impl/a;->h:I

    return p0
.end method

.method private f()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/guard/impl/a;->i:Lcom/mob/guard/impl/PingBroadcast;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/mob/guard/impl/PingBroadcast;

    invoke-direct {v0}, Lcom/mob/guard/impl/PingBroadcast;-><init>()V

    iput-object v0, p0, Lcom/mob/guard/impl/a;->i:Lcom/mob/guard/impl/PingBroadcast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/guard/impl/a;->i:Lcom/mob/guard/impl/PingBroadcast;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 11
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mob.guard.intent.PING"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/guard/impl/a;->i:Lcom/mob/guard/impl/PingBroadcast;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    invoke-direct {p0}, Lcom/mob/guard/impl/a;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 16
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic g(Lcom/mob/guard/impl/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mob/guard/impl/a;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mob/guard/impl/a;->h:I

    return v0
.end method

.method private g()V
    .locals 6

    .line 2
    invoke-static {}, Lcom/mob/guard/impl/e;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[GuardConnect] scheduleNextPing"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5
    iget-object v2, p0, Lcom/mob/guard/impl/a;->g:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 8
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mob.guard.intent.PING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v3, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/guard/impl/a;->g:Landroid/app/PendingIntent;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x3a980

    add-long/2addr v1, v3

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x2

    if-lt v3, v4, :cond_1

    .line 14
    iget-object v3, p0, Lcom/mob/guard/impl/a;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 16
    iget-object v3, p0, Lcom/mob/guard/impl/a;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v3, p0, Lcom/mob/guard/impl/a;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/mob/guard/impl/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/guard/impl/a;->f()V

    return-void
.end method

.method static synthetic i(Lcom/mob/guard/impl/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/guard/impl/a;->g()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)I
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/mob/guard/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 18
    iget-object v3, p0, Lcom/mob/guard/impl/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v3, p0, Lcom/mob/guard/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_0

    .line 21
    invoke-direct {p0, v2}, Lcom/mob/guard/impl/a;->a(Ljava/nio/channels/SelectionKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/mob/guard/impl/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/guard/impl/a$a;

    invoke-direct {v1, p0, p1}, Lcom/mob/guard/impl/a$a;-><init>(Lcom/mob/guard/impl/a;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mob/guard/impl/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/guard/impl/a$b;

    invoke-direct {v1, p0}, Lcom/mob/guard/impl/a$b;-><init>(Lcom/mob/guard/impl/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mob/guard/impl/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/guard/impl/a$d;

    invoke-direct {v1, p0}, Lcom/mob/guard/impl/a$d;-><init>(Lcom/mob/guard/impl/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
