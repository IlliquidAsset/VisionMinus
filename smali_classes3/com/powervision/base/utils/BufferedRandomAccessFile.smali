.class public final Lcom/powervision/base/utils/BufferedRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "BufferedRandomAccessFile.java"


# static fields
.field private static final BUFF_MASK:J = -0x10000L

.field private static final BUFF_SZ:I = 0x10000

.field private static final LOG_BUFF_SZ:I = 0x10


# instance fields
.field private buff_:[B

.field private curr_:J

.field private dirty_:Z

.field private diskPos_:J

.field private hi_:J

.field private hitEOF_:Z

.field private lo_:J

.field private maxHi_:J

.field private path_:Ljava/lang/String;

.field private syncNeeded_:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->path_:Ljava/lang/String;

    .line 81
    invoke-direct {p0, p3}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->init(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->path_:Ljava/lang/String;

    .line 108
    invoke-direct {p0, p3}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->init(I)V

    return-void
.end method

.method private fillBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 183
    iget-object v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    invoke-super {p0, v2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v1, :cond_2

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hitEOF_:Z

    .line 192
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    array-length v2, v0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 194
    :cond_2
    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->diskPos_:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->diskPos_:J

    return v1
.end method

.method private flushBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->dirty_:Z

    if-eqz v0, :cond_1

    .line 164
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->diskPos_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 165
    invoke-super {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 167
    :cond_0
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 168
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 169
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iput-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->diskPos_:J

    .line 170
    iput-boolean v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->dirty_:Z

    :cond_1
    return-void
.end method

.method private init(I)V
    .locals 5

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->dirty_:Z

    const-wide/16 v1, 0x0

    .line 113
    iput-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    iput-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iput-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    const/high16 v3, 0x10000

    if-le p1, v3, :cond_0

    .line 114
    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    new-array p1, v3, [B

    :goto_0
    iput-object p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    const-wide/32 v3, 0x10000

    .line 115
    iput-wide v3, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->maxHi_:J

    .line 116
    iput-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hitEOF_:Z

    .line 117
    iput-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->diskPos_:J

    return-void
.end method

.method private readEnd()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 274
    iget-boolean v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hitEOF_:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 278
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->seek(J)V

    .line 279
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v4, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private writeAtMost([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 329
    iget-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hitEOF_:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->maxHi_:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 331
    iput-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    goto :goto_0

    .line 334
    :cond_0
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    invoke-virtual {p0, v0, v1}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->seek(J)V

    .line 335
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 337
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->maxHi_:J

    iput-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    .line 341
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 342
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 343
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget-wide p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    return p3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->flush()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    .line 146
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->flushBuffer()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public length()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    invoke-super {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->readEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    iget-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v3, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    sub-long v3, v1, v3

    long-to-int v4, v3

    aget-byte v0, v0, v4

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 249
    iput-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->readEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 263
    :cond_0
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 264
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 265
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-wide p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    return p3
.end method

.method public seek(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->flushBuffer()V

    goto :goto_1

    .line 211
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->flushBuffer()V

    const-wide/32 v0, -0x10000

    and-long/2addr v0, p1

    .line 212
    iput-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    .line 213
    iget-object v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->maxHi_:J

    .line 214
    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->diskPos_:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    .line 215
    invoke-super {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 216
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    iput-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->diskPos_:J

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->fillBuffer()I

    move-result v0

    .line 219
    iget-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    .line 227
    :cond_3
    :goto_1
    iput-wide p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    return-void
.end method

.method public sync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->syncNeeded_:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->flush()V

    .line 137
    invoke-virtual {p0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->syncNeeded_:Z

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    .line 289
    iget-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hitEOF_:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->maxHi_:J

    cmp-long v6, v2, v0

    if-gez v6, :cond_0

    add-long/2addr v2, v4

    .line 291
    iput-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    goto :goto_0

    .line 294
    :cond_0
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    invoke-virtual {p0, v0, v1}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->seek(J)V

    .line 295
    iget-wide v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    add-long/2addr v2, v4

    .line 297
    iput-wide v2, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->hi_:J

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->buff_:[B

    iget-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    iget-wide v6, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->lo_:J

    sub-long v6, v1, v6

    long-to-int v3, v6

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-long/2addr v1, v4

    .line 302
    iput-wide v1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->curr_:J

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->dirty_:Z

    .line 304
    iput-boolean p1, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->syncNeeded_:Z

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/base/utils/BufferedRandomAccessFile;->writeAtMost([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->dirty_:Z

    .line 319
    iput-boolean v0, p0, Lcom/powervision/base/utils/BufferedRandomAccessFile;->syncNeeded_:Z

    goto :goto_0

    :cond_0
    return-void
.end method
