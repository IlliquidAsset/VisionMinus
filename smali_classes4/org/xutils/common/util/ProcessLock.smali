.class public final Lorg/xutils/common/util/ProcessLock;
.super Ljava/lang/Object;
.source "ProcessLock.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FORMAT:Ljava/text/DecimalFormat;

.field private static final LOCK_FILE_DIR:Ljava/lang/String; = "process_lock"

.field private static final LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/util/DoubleKeyValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lorg/xutils/common/util/ProcessLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFileLock:Ljava/nio/channels/FileLock;

.field private final mLockName:Ljava/lang/String;

.field private final mStream:Ljava/io/Closeable;

.field private final mWriteMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lorg/xutils/common/util/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    .line 40
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    const-string v1, "process_lock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 146
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##################"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/xutils/common/util/ProcessLock;->FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    .line 47
    iput-object p2, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    .line 48
    iput-object p4, p0, Lorg/xutils/common/util/ProcessLock;->mStream:Ljava/io/Closeable;

    .line 49
    iput-boolean p5, p0, Lorg/xutils/common/util/ProcessLock;->mWriteMode:Z

    return-void
.end method

.method private static customHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, v4

    .line 154
    aget-byte v4, v2, v3

    int-to-double v4, v4

    add-double/2addr v0, v4

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    mul-double v0, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    sget-object p0, Lorg/xutils/common/util/ProcessLock;->FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValid(Ljava/nio/channels/FileLock;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V
    .locals 3

    .line 121
    sget-object v0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter v0

    if-eqz p1, :cond_3

    .line 124
    :try_start_0
    sget-object v1, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/xutils/common/util/DoubleKeyValueMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    sget-object v1, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v1, p0}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 127
    :cond_0
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 130
    :cond_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 131
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 134
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 137
    throw p0

    .line 140
    :cond_3
    :goto_1
    invoke-static {p3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    sget-object p0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;
    .locals 1

    .line 60
    invoke-static {p0}, Lorg/xutils/common/util/ProcessLock;->customHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/xutils/common/util/ProcessLock;->tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object p0

    return-object p0
.end method

.method public static tryLock(Ljava/lang/String;ZJ)Lorg/xutils/common/util/ProcessLock;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 74
    invoke-static {p0}, Lorg/xutils/common/util/ProcessLock;->customHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 75
    sget-object p3, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter p3

    const/4 v2, 0x0

    .line 76
    :catchall_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    .line 77
    invoke-static {p0, p2, p1}, Lorg/xutils/common/util/ProcessLock;->tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    :try_start_1
    sget-object v3, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    :try_start_2
    throw p0

    .line 89
    :cond_1
    :goto_1
    monitor-exit p3

    return-object v2

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static tryLockInternal(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;
    .locals 13

    .line 160
    sget-object v0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v1, p0}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 163
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 164
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 165
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/common/util/ProcessLock;

    if-eqz v3, :cond_3

    .line 169
    invoke-virtual {v3}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 172
    monitor-exit v0

    return-object v2

    .line 173
    :cond_2
    iget-boolean v3, v3, Lorg/xutils/common/util/ProcessLock;->mWriteMode:Z

    if-eqz v3, :cond_0

    .line 174
    monitor-exit v0

    return-object v2

    .line 177
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 185
    :cond_4
    :try_start_1
    new-instance v5, Ljava/io/File;

    .line 186
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v1

    const-string v3, "process_lock"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v5, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_5
    if-eqz p2, :cond_6

    .line 191
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 192
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    goto :goto_1

    .line 195
    :cond_6
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v1, :cond_9

    const-wide/16 v7, 0x0

    const-wide v9, 0x7fffffffffffffffL

    if-nez p2, :cond_7

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    :goto_2
    move-object v6, v1

    .line 200
    :try_start_2
    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v9

    .line 201
    invoke-static {v9}, Lorg/xutils/common/util/ProcessLock;->isValid(Ljava/nio/channels/FileLock;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 202
    new-instance v10, Lorg/xutils/common/util/ProcessLock;

    move-object v3, v10

    move-object v4, p0

    move-object v6, v9

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/xutils/common/util/ProcessLock;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/nio/channels/FileLock;Ljava/io/Closeable;Z)V

    .line 203
    sget-object p2, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p0, v3, v10}, Lorg/xutils/common/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v10

    .line 206
    :cond_8
    :try_start_4
    invoke-static {p0, v9, v5, p1}, Lorg/xutils/common/util/ProcessLock;->release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V

    goto :goto_4

    .line 209
    :cond_9
    new-instance p2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not get file channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p2

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, v2

    move-object v1, p2

    .line 213
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 214
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    :cond_a
    :goto_4
    sget-object p0, Lorg/xutils/common/util/ProcessLock;->LOCK_MAP:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit v0

    return-object v2

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/xutils/common/util/ProcessLock;->release()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 232
    invoke-virtual {p0}, Lorg/xutils/common/util/ProcessLock;->release()V

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    invoke-static {v0}, Lorg/xutils/common/util/ProcessLock;->isValid(Ljava/nio/channels/FileLock;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .line 105
    iget-object v0, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mFileLock:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    iget-object v3, p0, Lorg/xutils/common/util/ProcessLock;->mStream:Ljava/io/Closeable;

    invoke-static {v0, v1, v2, v3}, Lorg/xutils/common/util/ProcessLock;->release(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/File;Ljava/io/Closeable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mLockName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/common/util/ProcessLock;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
