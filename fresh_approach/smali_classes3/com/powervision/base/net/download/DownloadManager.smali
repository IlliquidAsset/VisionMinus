.class public Lcom/powervision/base/net/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static volatile sDownloadManager:Lcom/powervision/base/net/download/DownloadManager;


# instance fields
.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/base/net/download/DownloadManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getBasUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "://"

    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x3

    .line 146
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const-string v0, "/"

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 151
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadManager()Lcom/powervision/base/net/download/DownloadManager;
    .locals 2

    .line 48
    sget-object v0, Lcom/powervision/base/net/download/DownloadManager;->sDownloadManager:Lcom/powervision/base/net/download/DownloadManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/powervision/base/net/download/DownloadManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/powervision/base/net/download/DownloadManager;->sDownloadManager:Lcom/powervision/base/net/download/DownloadManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/powervision/base/net/download/DownloadManager;

    invoke-direct {v1}, Lcom/powervision/base/net/download/DownloadManager;-><init>()V

    sput-object v1, Lcom/powervision/base/net/download/DownloadManager;->sDownloadManager:Lcom/powervision/base/net/download/DownloadManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/net/download/DownloadManager;->sDownloadManager:Lcom/powervision/base/net/download/DownloadManager;

    return-object v0
.end method

.method private writeCaches(Lokhttp3/ResponseBody;Ljava/io/File;J)V
    .locals 10

    const/4 v1, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    add-long/2addr v2, p3

    .line 172
    :goto_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 173
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rwd"

    invoke-direct {v8, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 174
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    :try_start_3
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    sub-long v5, v2, p3

    move-object v1, v9

    move-object v2, v0

    move-wide v3, p3

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 179
    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    .line 187
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v9, :cond_4

    .line 190
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 193
    :cond_4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v9, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v8, v1

    move-object v9, v8

    :goto_2
    move-object v1, v7

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v8, v1

    move-object v9, v8

    :goto_3
    move-object v1, v7

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v8, v1

    move-object v9, v8

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v8, v1

    move-object v9, v8

    .line 183
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_5

    .line 187
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz v9, :cond_6

    .line 190
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v8, :cond_7

    .line 193
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    .line 196
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_7
    return-void

    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_8
    if-eqz v1, :cond_8

    .line 187
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_8
    :goto_9
    if-eqz v9, :cond_9

    .line 190
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    :cond_9
    if-eqz v8, :cond_a

    .line 193
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    .line 196
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    :cond_a
    :goto_b
    throw v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/powervision/base/net/download/DownloadManager;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/powervision/base/net/download/DownloadManager;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$startDown$0$DownloadManager(Ljava/io/File;JLokhttp3/ResponseBody;)Lokhttp3/ResponseBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "len= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/powervision/base/net/download/DownloadManager;->writeCaches(Lokhttp3/ResponseBody;Ljava/io/File;J)V

    return-object p4
.end method

.method public saveFile(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 107
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 113
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 115
    :cond_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p3, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 124
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, p3

    goto :goto_3

    :catchall_1
    move-exception p2

    :goto_3
    if-eqz p1, :cond_4

    .line 124
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 129
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    :cond_5
    :goto_5
    throw p2
.end method

.method public startDown(JLjava/lang/String;Ljava/io/File;Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;)V
    .locals 4

    .line 59
    new-instance v0, Lcom/powervision/base/net/download/downlistener/DownloadInterceptor;

    invoke-direct {v0, p5}, Lcom/powervision/base/net/download/downlistener/DownloadInterceptor;-><init>(Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;)V

    .line 60
    invoke-static {p3}, Lcom/powervision/base/net/download/DownloadManager;->getBasUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 61
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 62
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 64
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 66
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 67
    invoke-virtual {v1, p5}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p5

    .line 68
    invoke-virtual {p5, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p5

    .line 69
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p5, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p5

    .line 70
    invoke-virtual {p5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p5

    .line 71
    const-class v0, Lcom/powervision/base/net/download/DownloadService;

    invoke-virtual {p5, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/powervision/base/net/download/DownloadService;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0, p3}, Lcom/powervision/base/net/download/DownloadService;->download(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p3

    .line 73
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 75
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p5, Lcom/powervision/base/net/download/-$$Lambda$DownloadManager$a-WEDOc8oDoJ6FvRQO7Wz03qD6s;

    invoke-direct {p5, p0, p4, p1, p2}, Lcom/powervision/base/net/download/-$$Lambda$DownloadManager$a-WEDOc8oDoJ6FvRQO7Wz03qD6s;-><init>(Lcom/powervision/base/net/download/DownloadManager;Ljava/io/File;J)V

    .line 76
    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/net/download/DownloadManager;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
