.class public Lcom/powervision/gcs/utils/tool/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private b:[B

.field protected buf:[B

.field private closed:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field private reachEOF:Z

.field private singleByteBuf:[B

.field usesDefaultInflater:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->usesDefaultInflater:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 1

    const/16 v0, 0x200

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->closed:Z

    .line 30
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->reachEOF:Z

    .line 31
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->usesDefaultInflater:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 32
    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->singleByteBuf:[B

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 33
    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->b:[B

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    .line 38
    iput-object p2, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 39
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->buf:[B

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer size <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 42
    throw p1
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->ensureOpen()V

    .line 90
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->reachEOF:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->closed:Z

    if-nez v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->usesDefaultInflater:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->closed:Z

    :cond_1
    return-void
.end method

.method protected fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->ensureOpen()V

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->len:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 146
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->ensureOpen()V

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->singleByteBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->singleByteBuf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->ensureOpen()V

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    .line 62
    array-length v2, p1

    sub-int/2addr v2, v1

    or-int/2addr v0, v2

    if-ltz v0, :cond_5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->fill()V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->reachEOF:Z
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    return p1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance p2, Ljava/util/zip/ZipException;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "Invalid ZLIB data format"

    :goto_2
    invoke-direct {p2, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 63
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 97
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->ensureOpen()V

    const-wide/32 v0, 0x7fffffff

    .line 98
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    sub-int v1, p2, v0

    .line 104
    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->b:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 105
    array-length v1, v2

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->b:[B

    invoke-virtual {p0, v2, p1, v1}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->reachEOF:Z

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long p1, v0

    return-wide p1

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative skip length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
