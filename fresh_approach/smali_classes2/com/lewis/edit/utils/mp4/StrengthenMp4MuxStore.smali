.class public Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;
.super Ljava/lang/Object;
.source "StrengthenMp4MuxStore.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/IHardStore;


# instance fields
.field private final Lock:Ljava/lang/Object;

.field private audioTrack:I

.field private final mAvFlag:Z

.field private mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/lewis/edit/utils/mp4/HardMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataArray:Lcom/lewis/edit/utils/mp4/DataArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewis/edit/utils/mp4/DataArray<",
            "Lcom/lewis/edit/utils/mp4/HardMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mExecService:Ljava/util/concurrent/ExecutorService;

.field private mMediaMux:Landroid/media/MediaMuxer;

.field private mOutputPath:Ljava/lang/String;

.field private muxStarted:Z

.field private videoTrack:I


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->audioTrack:I

    .line 22
    iput v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->videoTrack:I

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->Lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxStarted:Z

    .line 35
    iput-boolean p1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mAvFlag:Z

    .line 36
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 37
    new-instance p1, Lcom/lewis/edit/utils/mp4/DataArray;

    invoke-direct {p1}, Lcom/lewis/edit/utils/mp4/DataArray;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mDataArray:Lcom/lewis/edit/utils/mp4/DataArray;

    .line 38
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x10

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mExecService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic lambda$BQiAPs-5F1E2m9xRCTi5BUJMPew(Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxRun()V

    return-void
.end method

.method private muxRun()V
    .locals 6

    .line 57
    :goto_0
    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxStarted:Z

    if-eqz v0, :cond_1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewis/edit/utils/mp4/HardMediaData;

    .line 60
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->Lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    iget-boolean v2, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxStarted:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 62
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/HardMediaData;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/HardMediaData;->getBufferData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/HardMediaData;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 63
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mDataArray:Lcom/lewis/edit/utils/mp4/DataArray;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/HardMediaData;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/lewis/edit/utils/mp4/DataArray;->put(ILjava/lang/Object;)V

    .line 65
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 72
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 73
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;

    .line 78
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 79
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mDataArray:Lcom/lewis/edit/utils/mp4/DataArray;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/DataArray;->clear()V

    return-void
.end method

.method private startMux()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mAvFlag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->audioTrack:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->videoTrack:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 129
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxStarted:Z

    .line 130
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mExecService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/lewis/edit/utils/mp4/-$$Lambda$StrengthenMp4MuxStore$BQiAPs-5F1E2m9xRCTi5BUJMPew;

    invoke-direct {v1, p0}, Lcom/lewis/edit/utils/mp4/-$$Lambda$StrengthenMp4MuxStore$BQiAPs-5F1E2m9xRCTi5BUJMPew;-><init>(Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addData(ILcom/lewis/edit/utils/mp4/HardMediaData;)I
    .locals 2

    if-ltz p1, :cond_3

    .line 137
    invoke-virtual {p2, p1}, Lcom/lewis/edit/utils/mp4/HardMediaData;->setIndex(I)V

    .line 138
    iget v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->audioTrack:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->videoTrack:I

    if-ne p1, v0, :cond_3

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mDataArray:Lcom/lewis/edit/utils/mp4/DataArray;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/DataArray;->poll(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lewis/edit/utils/mp4/HardMediaData;

    if-nez p1, :cond_1

    .line 141
    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/HardMediaData;->copy()Lcom/lewis/edit/utils/mp4/HardMediaData;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p2, p1}, Lcom/lewis/edit/utils/mp4/HardMediaData;->copyTo(Lcom/lewis/edit/utils/mp4/HardMediaData;)V

    .line 145
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 147
    iget-object p2, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mCacheQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lewis/edit/utils/mp4/HardMediaData;

    if-eqz p2, :cond_2

    .line 149
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mDataArray:Lcom/lewis/edit/utils/mp4/DataArray;

    invoke-virtual {p2}, Lcom/lewis/edit/utils/mp4/HardMediaData;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/lewis/edit/utils/mp4/DataArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic addData(ILjava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p2, Lcom/lewis/edit/utils/mp4/HardMediaData;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->addData(ILcom/lewis/edit/utils/mp4/HardMediaData;)I

    move-result p1

    return p1
.end method

.method public addTrack(ZLandroid/media/MediaFormat;)I
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->Lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxStarted:Z

    const/4 v2, -0x1

    if-nez v1, :cond_4

    .line 94
    iget v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->audioTrack:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->videoTrack:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 96
    :try_start_1
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mOutputPath:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "mime"

    .line 102
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "audio"

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;

    invoke-virtual {p1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->audioTrack:I

    goto :goto_1

    :cond_1
    const-string v1, "video"

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mMediaMux:Landroid/media/MediaMuxer;

    invoke-virtual {p1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->videoTrack:I

    goto :goto_1

    .line 113
    :cond_2
    iput v3, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->audioTrack:I

    .line 116
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->startMux()V

    .line 118
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bridge synthetic addTrack(ZLjava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p2, Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->addTrack(ZLandroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->Lock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-boolean v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxStarted:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->audioTrack:I

    .line 47
    iput v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->videoTrack:I

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->muxStarted:Z

    .line 50
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;->mOutputPath:Ljava/lang/String;

    return-void
.end method
