.class public Lcom/powervision/gcs/utils/tool/ZipInputStream;
.super Lcom/powervision/gcs/utils/tool/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Lcom/powervision/gcs/utils/tool/ZipConstants;


# static fields
.field private static final DEFLATED:I = 0x8

.field private static final STORED:I


# instance fields
.field private b:[B

.field private closed:Z

.field private crc:Ljava/util/zip/CRC32;

.field private entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

.field private entryEOF:Z

.field private remaining:J

.field private tmpbuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 30
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v2, v1}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 14
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    new-array v0, v1, [B

    .line 16
    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->closed:Z

    .line 20
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entryEOF:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 21
    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->b:[B

    .line 31
    iput-boolean v3, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->usesDefaultInflater:Z

    if-eqz p1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final get16([BI)I
    .locals 1

    .line 343
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static final get32([BI)J
    .locals 3

    .line 347
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get16([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get16([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static getUTF8String([BII)Ljava/lang/String;
    .locals 7

    .line 211
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "gbk"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    add-int/2addr p2, p1

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 220
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    const/16 v4, 0x80

    packed-switch v1, :pswitch_data_0

    .line 237
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    add-int/lit8 v1, v3, 0x1

    .line 247
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v4, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_2
    add-int/lit8 v1, v3, 0x1

    .line 240
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :goto_1
    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_4

    .line 258
    new-array v1, v2, [C

    const/4 v3, 0x0

    :goto_2
    if-ge p1, p2, :cond_3

    add-int/lit8 v4, p1, 0x1

    .line 262
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v5, p1, 0x4

    packed-switch v5, :pswitch_data_1

    .line 279
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_5
    add-int/lit8 v5, v4, 0x1

    .line 285
    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v6, v3, 0x1

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v4

    add-int/lit8 v4, v5, 0x1

    .line 286
    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr p1, v5

    int-to-char p1, p1

    aput-char p1, v1, v3

    move p1, v4

    move v3, v6

    goto :goto_2

    :pswitch_6
    add-int/lit8 v5, v3, 0x1

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    add-int/lit8 v6, v4, 0x1

    .line 282
    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    int-to-char p1, p1

    aput-char p1, v1, v3

    move v3, v5

    move p1, v6

    goto :goto_2

    :pswitch_7
    add-int/lit8 v5, v3, 0x1

    int-to-char p1, p1

    .line 272
    aput-char p1, v1, v3

    move p1, v4

    move v3, v5

    goto :goto_2

    .line 290
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 256
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private readEnd(Lcom/powervision/gcs/utils/tool/ZipEntry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->buf:[B

    iget v3, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->len:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 305
    :cond_0
    iget v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->flag:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 306
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->readFully([BII)V

    .line 307
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    invoke-static {v0, v3}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v2

    const-wide/32 v4, 0x8074b50

    const/4 v0, 0x4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 309
    iput-wide v2, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 310
    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    invoke-static {v2, v0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    .line 311
    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    invoke-static {v2, v1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 312
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    invoke-static {v2, v0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 315
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    .line 316
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 320
    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    const-string v4, " bytes)"

    const-string v5, " but got "

    cmp-long v6, v0, v2

    if-nez v6, :cond_5

    .line 322
    iget-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-nez v6, :cond_4

    .line 324
    iget-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    return-void

    .line 325
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry CRC (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but got 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_4
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry compressed size (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_5
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry size (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 331
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 333
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method private readLOC()Lcom/powervision/gcs/utils/tool/ZipEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v3}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v1

    const-wide/32 v4, 0x4034b50

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get16([BI)I

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 174
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->b:[B

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->b:[B

    invoke-direct {p0, v1, v3, v0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->readFully([BII)V

    .line 178
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->b:[B

    invoke-static {v1, v3, v0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->getUTF8String([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->createZipEntry(Ljava/lang/String;)Lcom/powervision/gcs/utils/tool/ZipEntry;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get16([BI)I

    move-result v1

    iput v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->version:I

    .line 180
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get16([BI)I

    move-result v1

    iput v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->flag:I

    .line 181
    iget v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->flag:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_6

    .line 184
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get16([BI)I

    move-result v1

    iput v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    .line 185
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    .line 186
    iget v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->flag:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 187
    iget v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 188
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "only DEFLATED entries can have EXT descriptor"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 192
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    .line 193
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x16

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get32([BI)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->get16([BI)I

    move-result v1

    if-lez v1, :cond_5

    .line 198
    new-array v2, v1, [B

    .line 199
    invoke-direct {p0, v2, v3, v1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->readFully([BII)V

    .line 200
    iput-object v2, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B

    :cond_5
    return-object v0

    .line 182
    :cond_6
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "encrypted ZIP entry not supported"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_7
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "missing entry name"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->ensureOpen()V

    .line 69
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entryEOF:Z

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

    .line 147
    iget-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->close()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->ensureOpen()V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entryEOF:Z

    return-void
.end method

.method protected createZipEntry(Ljava/lang/String;)Lcom/powervision/gcs/utils/tool/ZipEntry;
    .locals 1

    .line 296
    new-instance v0, Lcom/powervision/gcs/utils/tool/ZipEntry;

    invoke-direct {v0, p1}, Lcom/powervision/gcs/utils/tool/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Lcom/powervision/gcs/utils/tool/ZipEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->ensureOpen()V

    .line 39
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->closeEntry()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 44
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 45
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->readLOC()Lcom/powervision/gcs/utils/tool/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_1
    iget v0, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    iget-wide v0, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->remaining:J

    :cond_2
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entryEOF:Z

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    return-object v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->ensureOpen()V

    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    .line 74
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_8

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 80
    :cond_1
    iget v0, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/gcs/utils/tool/InflaterInputStream;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    invoke-direct {p0, p1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->readEnd(Lcom/powervision/gcs/utils/tool/ZipEntry;)V

    .line 104
    iput-boolean v3, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entryEOF:Z

    .line 105
    iput-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :goto_0
    return p3

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "invalid compression method"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_4
    iget-wide v4, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->remaining:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    .line 83
    iput-boolean v3, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entryEOF:Z

    .line 84
    iput-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entry:Lcom/powervision/gcs/utils/tool/ZipEntry;

    return v1

    :cond_5
    int-to-long v2, p3

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    long-to-int p3, v4

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_7

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 97
    iget-wide p1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->remaining:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->remaining:J

    return p3

    .line 93
    :cond_7
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "unexpected EOF"

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
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

    .line 124
    invoke-direct {p0}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->ensureOpen()V

    const-wide/32 v0, 0x7fffffff

    .line 125
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    sub-int v1, p2, v0

    .line 131
    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 132
    array-length v1, v2

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->tmpbuf:[B

    invoke-virtual {p0, v2, p1, v1}, Lcom/powervision/gcs/utils/tool/ZipInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/powervision/gcs/utils/tool/ZipInputStream;->entryEOF:Z

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long p1, v0

    return-wide p1

    .line 122
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative skip length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
