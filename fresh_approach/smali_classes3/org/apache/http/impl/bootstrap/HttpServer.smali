.class public Lorg/apache/http/impl/bootstrap/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/bootstrap/HttpServer$Status;
    }
.end annotation


# instance fields
.field private final connectionFactory:Lorg/apache/http/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/HttpConnectionFactory<",
            "+",
            "Lorg/apache/http/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionLogger:Lorg/apache/http/ExceptionLogger;

.field private final httpService:Lorg/apache/http/protocol/HttpService;

.field private final ifAddress:Ljava/net/InetAddress;

.field private final listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final port:I

.field private volatile requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private final serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private final socketConfig:Lorg/apache/http/config/SocketConfig;

.field private final sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/http/impl/bootstrap/HttpServer$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final workerExecutorService:Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;

.field private final workerThreads:Ljava/lang/ThreadGroup;


# direct methods
.method constructor <init>(ILjava/net/InetAddress;Lorg/apache/http/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpConnectionFactory;Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;Lorg/apache/http/ExceptionLogger;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/InetAddress;",
            "Lorg/apache/http/config/SocketConfig;",
            "Ljavax/net/ServerSocketFactory;",
            "Lorg/apache/http/protocol/HttpService;",
            "Lorg/apache/http/HttpConnectionFactory<",
            "+",
            "Lorg/apache/http/impl/DefaultBHttpServerConnection;",
            ">;",
            "Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;",
            "Lorg/apache/http/ExceptionLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 80
    iput v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->port:I

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->httpService:Lorg/apache/http/protocol/HttpService;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->connectionFactory:Lorg/apache/http/HttpConnectionFactory;

    move-object/from16 v1, p7

    .line 86
    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    move-object/from16 v1, p8

    .line 87
    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    .line 88
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v3, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v3}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v4, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP-listener-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move-object p1, v1

    move p2, v5

    move p3, v6

    move-wide p4, v7

    move-object p6, v2

    move-object/from16 p7, v3

    move-object/from16 p8, v4

    invoke-direct/range {p1 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v2, "HTTP-workers"

    invoke-direct {v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    .line 93
    new-instance v1, Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v3, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v3}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v4, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;

    iget-object v5, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    const-string v6, "HTTP-worker"

    invoke-direct {v4, v6, v5}, Lorg/apache/http/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const-wide/16 v7, 0x1

    move-object p1, v1

    move p2, v5

    move p3, v6

    move-wide p4, v7

    move-object p6, v2

    move-object/from16 p7, v3

    move-object/from16 p8, v4

    invoke-direct/range {p1 .. p8}, Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;

    .line 97
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lorg/apache/http/impl/bootstrap/HttpServer;->stop()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/bootstrap/HttpServer;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 161
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;

    invoke-virtual {p1}, Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;->getWorkers()Ljava/util/Set;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/http/impl/bootstrap/Worker;

    .line 163
    invoke-virtual {p2}, Lorg/apache/http/impl/bootstrap/Worker;->getConnection()Lorg/apache/http/HttpServerConnection;

    move-result-object p2

    .line 165
    :try_start_1
    invoke-interface {p2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 167
    iget-object p3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    invoke-interface {p3, p2}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public start()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    iget v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->port:I

    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getBacklogSize()I

    move-result v2

    iget-object v3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 114
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 115
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->sslSetupHandler:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    check-cast v1, Ljavax/net/ssl/SSLServerSocket;

    invoke-interface {v0, v1}, Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;->initialize(Ljavax/net/ssl/SSLServerSocket;)V

    .line 121
    :cond_1
    new-instance v0, Lorg/apache/http/impl/bootstrap/RequestListener;

    iget-object v3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->socketConfig:Lorg/apache/http/config/SocketConfig;

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v5, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v6, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->connectionFactory:Lorg/apache/http/HttpConnectionFactory;

    iget-object v7, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    iget-object v8, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/http/impl/bootstrap/RequestListener;-><init>(Lorg/apache/http/config/SocketConfig;Ljava/net/ServerSocket;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpConnectionFactory;Lorg/apache/http/ExceptionLogger;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->STOPPING:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 135
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerExecutorService:Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;

    invoke-virtual {v0}, Lorg/apache/http/impl/bootstrap/WorkerPoolExecutor;->shutdown()V

    .line 136
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->requestListener:Lorg/apache/http/impl/bootstrap/RequestListener;

    if-eqz v0, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/http/impl/bootstrap/RequestListener;->terminate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->exceptionLogger:Lorg/apache/http/ExceptionLogger;

    invoke-interface {v1, v0}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    :cond_1
    return-void
.end method
