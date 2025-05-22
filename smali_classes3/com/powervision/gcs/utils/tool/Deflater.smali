.class public Lcom/powervision/gcs/utils/tool/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I


# instance fields
.field private buf:[B

.field private finish:Z

.field private finished:Z

.field private len:I

.field private level:I

.field private off:I

.field private setParams:Z

.field private strategy:I

.field private strm:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    invoke-static {}, Lcom/powervision/gcs/utils/tool/Deflater;->initIDs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/utils/tool/Deflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/utils/tool/Deflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 27
    iput-object v1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->buf:[B

    .line 28
    iput p1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->level:I

    .line 29
    iput v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strategy:I

    .line 30
    invoke-static {p1, v0, p2}, Lcom/powervision/gcs/utils/tool/Deflater;->init(IIZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    return-void
.end method

.method private native deflateBytes([BII)I
.end method

.method private static native end(J)V
.end method

.method private ensureOpen()V
    .locals 5

    .line 172
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 173
    throw v0
.end method

.method private static native getAdler(J)I
.end method

.method private static native getBytesRead(J)J
.end method

.method private static native getBytesWritten(J)J
.end method

.method private static native init(IIZ)J
.end method

.method private static native initIDs()V
.end method

.method private static native reset(J)V
.end method

.method private static native setDictionary(J[BII)V
.end method


# virtual methods
.method public deflate([B)I
    .locals 2

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/gcs/utils/tool/Deflater;->deflate([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized deflate([BII)I
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 116
    :try_start_0
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/gcs/utils/tool/Deflater;->deflateBytes([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 119
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized end()V
    .locals 5

    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 160
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/Deflater;->end(J)V

    .line 161
    iput-wide v2, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/tool/Deflater;->end()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 106
    :try_start_0
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->finish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finished()Z
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdler()I
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/Deflater;->ensureOpen()V

    .line 129
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/Deflater;->getAdler(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .locals 2

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/Deflater;->ensureOpen()V

    .line 138
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/Deflater;->getBytesRead(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .locals 2

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/Deflater;->ensureOpen()V

    .line 147
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/Deflater;->getBytesWritten(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTotalIn()I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/tool/Deflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getTotalOut()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/tool/Deflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public needsInput()Z
    .locals 1

    .line 102
    iget v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->len:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/Deflater;->ensureOpen()V

    .line 152
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/Deflater;->reset(J)V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->finish:Z

    .line 154
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->finished:Z

    .line 155
    iput v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->len:I

    iput v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->off:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDictionary([B)V
    .locals 2

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/gcs/utils/tool/Deflater;->setDictionary([BII)V

    return-void
.end method

.method public declared-synchronized setDictionary([BII)V
    .locals 5

    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 59
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_0

    .line 60
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strm:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/powervision/gcs/utils/tool/Deflater;->setDictionary(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInput([B)V
    .locals 2

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/gcs/utils/tool/Deflater;->setInput([BII)V

    return-void
.end method

.method public declared-synchronized setInput([BII)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 44
    :try_start_0
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->buf:[B

    .line 46
    iput p2, p0, Lcom/powervision/gcs/utils/tool/Deflater;->off:I

    .line 47
    iput p3, p0, Lcom/powervision/gcs/utils/tool/Deflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLevel(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 93
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->level:I

    if-eq v0, p1, :cond_2

    .line 94
    iput p1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->level:I

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->setParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 91
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid compression level"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStrategy(I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 78
    :cond_1
    :goto_0
    iget v1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strategy:I

    if-eq v1, p1, :cond_2

    .line 79
    iput p1, p0, Lcom/powervision/gcs/utils/tool/Deflater;->strategy:I

    .line 80
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/Deflater;->setParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
