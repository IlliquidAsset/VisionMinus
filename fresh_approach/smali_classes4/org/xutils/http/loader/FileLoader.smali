.class public Lorg/xutils/http/loader/FileLoader;
.super Lorg/xutils/http/loader/Loader;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECK_SIZE:I = 0x200


# instance fields
.field private contentLength:J

.field private diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

.field private isAutoRename:Z

.field private isAutoResume:Z

.field private params:Lorg/xutils/http/RequestParams;

.field private responseFileName:Ljava/lang/String;

.field private saveFilePath:Ljava/lang/String;

.field private tempSaveFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method

.method private autoRename(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 289
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1

    .line 295
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 296
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method private static getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;
    .locals 5

    const-string v0, "\""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "Content-Disposition"

    .line 305
    invoke-virtual {p0, v2}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "filename="

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, 0x9

    const-string v4, ";"

    .line 310
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_1

    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :cond_1
    if-le v4, v3, :cond_3

    .line 317
    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {p0}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-static {v2, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method

.method private initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 273
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 274
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruDiskCache;->createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 281
    iput-boolean p1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create cache file error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isSupportRange(Lorg/xutils/http/request/UriRequest;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "Accept-Ranges"

    .line 334
    invoke-virtual {p0, v1}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytes"

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const-string v1, "Content-Range"

    .line 338
    invoke-virtual {p0, v1}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 339
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method protected load(Ljava/io/InputStream;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_f

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not create the dir: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 87
    iget-boolean v4, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_5

    cmp-long v4, v2, v5

    if-lez v4, :cond_5

    const-wide/16 v7, 0x200

    sub-long v9, v2, v7

    const-string v4, "need retry"

    cmp-long v11, v9, v5

    if-lez v11, :cond_4

    .line 92
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v12, 0x200

    .line 93
    :try_start_2
    invoke-static {v11, v9, v10, v12}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v9

    .line 94
    invoke-static {p1, v5, v6, v12}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v10

    .line 95
    invoke-static {v10, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 100
    iget-wide v9, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    invoke-static {v11}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_2

    .line 96
    :cond_3
    :try_start_4
    invoke-static {v11}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 98
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 103
    :cond_4
    :try_start_5
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 104
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    move-object v11, v0

    .line 107
    :goto_1
    :try_start_6
    invoke-static {v11}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    throw p1

    .line 114
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v4, :cond_6

    .line 116
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_3

    .line 118
    :cond_6
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-wide v2, v5

    .line 121
    :goto_3
    iget-wide v5, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    add-long/2addr v5, v2

    .line 122
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 123
    :try_start_7
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 125
    :try_start_8
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string v4, "download stopped!"

    if-eqz v0, :cond_8

    :try_start_9
    iget-object v7, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v12, 0x1

    move-wide v8, v5

    move-wide v10, v2

    invoke-interface/range {v7 .. v12}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 126
    :cond_7
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_9
    :goto_5
    move-wide v10, v2

    .line 131
    invoke-virtual {v13, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v2, v10

    .line 141
    iget-object v7, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v7, :cond_9

    .line 142
    iget-object v7, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v12, 0x0

    move-wide v8, v5

    move-wide v10, v2

    invoke-interface/range {v7 .. v12}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    .line 143
    :cond_a
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 144
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v4}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_b
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 136
    new-instance v0, Ljava/io/IOException;

    const-string v1, "parent be deleted!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_c
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 150
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_d

    .line 151
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object v1

    .line 154
    :cond_d
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_e

    .line 155
    iget-object v7, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v12, 0x1

    move-wide v8, v5

    invoke-interface/range {v7 .. v12}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 158
    :cond_e
    invoke-static {v13}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 162
    invoke-direct {p0, v1}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :catchall_2
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object v1, v0

    :goto_6
    move-object v0, v13

    goto :goto_7

    .line 76
    :cond_f
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not create the file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    move-object v1, v0

    .line 158
    :goto_7
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    throw p1
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 172
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/xutils/ex/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "download stopped!"

    if-eqz v1, :cond_2

    .line 176
    :try_start_1
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/xutils/http/loader/FileLoader;->initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V

    goto :goto_1

    .line 183
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    .line 186
    :goto_1
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 187
    :cond_3
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_lock"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 192
    invoke-virtual {v0}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 196
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 199
    iget-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_6

    .line 200
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    cmp-long v9, v5, v7

    if-gtz v9, :cond_5

    .line 203
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto :goto_3

    :cond_5
    sub-long v3, v5, v7

    .line 210
    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_8

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 214
    :cond_7
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 219
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getContentLength()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    .line 220
    iget-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v1, :cond_9

    .line 221
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 223
    :cond_9
    iget-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v1, :cond_a

    .line 224
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->isSupportRange(Lorg/xutils/http/request/UriRequest;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 227
    :cond_a
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_c

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 228
    :cond_b
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_c
    :goto_5
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;
    :try_end_1
    .catch Lorg/xutils/ex/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_d

    .line 233
    :try_start_2
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->getCacheEntity()Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v1

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 235
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setEtag(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getExpiration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setExpires(J)V

    .line 237
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getLastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setLastModify(Ljava/util/Date;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 239
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_d
    :goto_6
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/http/loader/FileLoader;->load(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    goto :goto_8

    .line 193
    :cond_e
    new-instance v1, Lorg/xutils/ex/FileLockedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lorg/xutils/ex/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_0
    move-exception v1

    .line 244
    :try_start_4
    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v2

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_12

    .line 245
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v1, :cond_f

    .line 246
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object v1

    goto :goto_7

    .line 248
    :cond_f
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_7
    if-eqz v1, :cond_11

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 252
    iget-boolean v2, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v2, :cond_10

    .line 253
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 255
    :cond_10
    invoke-direct {p0, v1}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    :goto_8
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 265
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    .line 257
    :cond_11
    :try_start_5
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 258
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache file not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_12
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 264
    :goto_9
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 265
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    throw p1
.end method

.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/xutils/cache/LruDiskCache;->getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 0

    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 64
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoResume()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 65
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoRename()Z

    move-result p1

    iput-boolean p1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    :cond_0
    return-void
.end method
