.class public Lcn/powervision/upgrade/manager/UpgradeDownManager;
.super Ljava/lang/Object;
.source "UpgradeDownManager.java"


# static fields
.field private static volatile sUpgradeDownManager:Lcn/powervision/upgrade/manager/UpgradeDownManager;


# instance fields
.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/powervision/upgrade/manager/UpgradeDownManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getBasUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "://"

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x3

    .line 157
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const-string v0, "/"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 162
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadManager()Lcn/powervision/upgrade/manager/UpgradeDownManager;
    .locals 2

    .line 52
    sget-object v0, Lcn/powervision/upgrade/manager/UpgradeDownManager;->sUpgradeDownManager:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/powervision/base/net/download/DownloadManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcn/powervision/upgrade/manager/UpgradeDownManager;->sUpgradeDownManager:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcn/powervision/upgrade/manager/UpgradeDownManager;

    invoke-direct {v1}, Lcn/powervision/upgrade/manager/UpgradeDownManager;-><init>()V

    sput-object v1, Lcn/powervision/upgrade/manager/UpgradeDownManager;->sUpgradeDownManager:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcn/powervision/upgrade/manager/UpgradeDownManager;->sUpgradeDownManager:Lcn/powervision/upgrade/manager/UpgradeDownManager;

    return-object v0
.end method

.method private writeCaches(Lokhttp3/ResponseBody;Ljava/io/File;J)V
    .locals 11

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 179
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    add-long/2addr v2, p3

    .line 183
    :goto_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 184
    :try_start_1
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v0, "rwd"

    invoke-direct {v9, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 185
    :try_start_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :try_start_3
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    sub-long v5, v2, p3

    move-object v1, v10

    move-object v2, v0

    move-wide v3, p3

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 190
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 191
    invoke-virtual {v0, v1, v7, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    .line 199
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v10, :cond_4

    .line 202
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    .line 205
    :cond_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
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

    move-object v10, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v10, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v9, v1

    move-object v10, v9

    :goto_2
    move-object v1, v8

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v9, v1

    move-object v10, v9

    :goto_3
    move-object v1, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v9, v1

    move-object v10, v9

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v9, v1

    move-object v10, v9

    .line 194
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_5

    .line 199
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz v10, :cond_6

    .line 202
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v9, :cond_7

    .line 205
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    .line 208
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

    .line 199
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_8
    :goto_9
    if-eqz v10, :cond_9

    .line 202
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    :cond_9
    if-eqz v9, :cond_a

    .line 205
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    .line 208
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    :cond_a
    :goto_b
    throw v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/powervision/upgrade/manager/UpgradeDownManager;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/powervision/upgrade/manager/UpgradeDownManager;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$startDown$0$UpgradeDownManager(Ljava/io/File;JLokhttp3/ResponseBody;)Lokhttp3/ResponseBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
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

    .line 84
    invoke-direct {p0, p4, p1, p2, p3}, Lcn/powervision/upgrade/manager/UpgradeDownManager;->writeCaches(Lokhttp3/ResponseBody;Ljava/io/File;J)V

    return-object p4
.end method

.method public synthetic lambda$startDown$1$UpgradeDownManager(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "lzqFirm"

    const-string v1, "doOnError"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcn/powervision/upgrade/manager/UpgradeDownManager;->cancel()V

    .line 91
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void
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

    .line 118
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 124
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 126
    :cond_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p3, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 135
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 142
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

    .line 135
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 140
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    :cond_5
    :goto_5
    throw p2
.end method

.method public startDown(JLjava/lang/String;Ljava/io/File;Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;)V
    .locals 4

    .line 63
    new-instance v0, Lcom/powervision/base/net/download/downlistener/DownloadInterceptor;

    invoke-direct {v0, p5}, Lcom/powervision/base/net/download/downlistener/DownloadInterceptor;-><init>(Lcom/powervision/base/net/download/downlistener/DownloadProgressListener;)V

    .line 64
    invoke-static {p3}, Lcn/powervision/upgrade/manager/UpgradeDownManager;->getBasUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 65
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 66
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 68
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 72
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 73
    invoke-virtual {v1, p5}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p5

    .line 74
    invoke-virtual {p5, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p5

    .line 75
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p5, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p5

    .line 76
    invoke-virtual {p5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p5

    .line 77
    const-class v0, Lcom/powervision/base/net/download/DownloadService;

    invoke-virtual {p5, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/powervision/base/net/download/DownloadService;

    .line 78
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

    .line 79
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 80
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 81
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p5, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;

    invoke-direct {p5, p0, p4, p1, p2}, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$kOsDcYg5yVv102hiMn1i-OkiagE;-><init>(Lcn/powervision/upgrade/manager/UpgradeDownManager;Ljava/io/File;J)V

    .line 82
    invoke-virtual {p3, p5}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 87
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$9dewlrr-_tZJBIt7lp_srWLlDtc;

    invoke-direct {p2, p0}, Lcn/powervision/upgrade/manager/-$$Lambda$UpgradeDownManager$9dewlrr-_tZJBIt7lp_srWLlDtc;-><init>(Lcn/powervision/upgrade/manager/UpgradeDownManager;)V

    .line 88
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcn/powervision/upgrade/manager/UpgradeDownManager;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
