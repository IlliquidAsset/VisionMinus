.class public Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;
.super Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Lcn/powervision/upgrade/utils/compress/tool/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field private closed:Z

.field private comment:Ljava/lang/String;

.field private crc:Ljava/util/zip/CRC32;

.field private entries:Ljava/util/Vector;

.field private entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

.field private finished:Z

.field private locoff:J

.field private method:I

.field private names:Ljava/util/Hashtable;

.field private written:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 32
    new-instance v0, Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcn/powervision/upgrade/utils/compress/tool/Deflater;)V

    .line 13
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 14
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->names:Ljava/util/Hashtable;

    .line 15
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    .line 17
    iput-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->locoff:J

    const/16 p1, 0x8

    .line 19
    iput p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->method:I

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->closed:Z

    .line 33
    iput-boolean v2, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->usesDefaultDeflater:Z

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 9

    .line 357
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 358
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x7ff

    const/16 v5, 0x7f

    if-ge v2, v0, :cond_2

    .line 362
    aget-char v6, p0, v2

    if-gt v6, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-gt v6, v4, :cond_1

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :cond_2
    new-array v2, v3, [B

    const/4 v3, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 376
    aget-char v6, p0, v1

    if-gt v6, v5, :cond_3

    add-int/lit8 v7, v3, 0x1

    int-to-byte v6, v6

    .line 378
    aput-byte v6, v2, v3

    :goto_3
    move v3, v7

    goto :goto_4

    :cond_3
    if-gt v6, v4, :cond_4

    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 380
    aput-byte v8, v2, v3

    add-int/lit8 v3, v7, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 381
    aput-byte v6, v2, v7

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    .line 383
    aput-byte v8, v2, v3

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 384
    aput-byte v8, v2, v7

    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 385
    aput-byte v6, v2, v3

    goto :goto_3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method static getUTF8Length(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 342
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 343
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private writeBytes([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 336
    iget-wide p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    return-void
.end method

.method private writeCEN(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x2014b50    # 1.6619997E-316

    .line 264
    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 265
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->version:I

    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 266
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->version:I

    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 267
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->flag:I

    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 268
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->method:I

    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 269
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->time:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 270
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 271
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 272
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 273
    iget-object v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 274
    array-length v1, v0

    invoke-direct {p0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 275
    iget-object v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 277
    iget-object v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->comment:Ljava/lang/String;

    invoke-static {v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 279
    array-length v3, v1

    invoke-direct {p0, v3}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 281
    check-cast v1, [B

    .line 282
    invoke-direct {p0, v2}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 285
    :goto_1
    invoke-direct {p0, v2}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 286
    invoke-direct {p0, v2}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    const-wide/16 v3, 0x0

    .line 287
    invoke-direct {p0, v3, v4}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 288
    iget-wide v3, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->offset:J

    invoke-direct {p0, v3, v4}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 289
    array-length v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeBytes([BII)V

    .line 290
    iget-object v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    iget-object p1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    array-length p1, p1

    invoke-direct {p0, v0, v2, p1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeBytes([BII)V

    :cond_2
    if-eqz v1, :cond_3

    .line 295
    array-length p1, v1

    invoke-direct {p0, v1, v2, p1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeBytes([BII)V

    :cond_3
    return-void
.end method

.method private writeEND(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x6054b50

    .line 301
    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 303
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 304
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 305
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 306
    invoke-direct {p0, p3, p4}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 307
    invoke-direct {p0, p1, p2}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 308
    iget-object p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->comment:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 309
    invoke-static {p1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 310
    array-length p2, p1

    invoke-direct {p0, p2}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 311
    array-length p2, p1

    invoke-direct {p0, p1, v0, p2}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeBytes([BII)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    :goto_0
    return-void
.end method

.method private writeEXT(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x8074b50

    .line 257
    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 258
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 259
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 260
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    return-void
.end method

.method private writeInt(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    .line 327
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    .line 328
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    .line 329
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v3

    long-to-int p2, p1

    .line 330
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 331
    iget-wide p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    const-wide/16 v0, 0x4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    return-void
.end method

.method private writeLOC(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x4034b50

    .line 230
    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 231
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->version:I

    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 232
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->flag:I

    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 233
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->method:I

    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 234
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->time:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 235
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->flag:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 236
    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 237
    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 238
    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    goto :goto_0

    .line 240
    :cond_0
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 241
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 242
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeInt(J)V

    .line 245
    :goto_0
    iget-object v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 246
    array-length v1, v0

    invoke-direct {p0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 247
    iget-object v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    array-length v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeShort(I)V

    .line 248
    array-length v1, v0

    invoke-direct {p0, v0, v2, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeBytes([BII)V

    .line 249
    iget-object v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    iget-object p1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->extra:[B

    array-length p1, p1

    invoke-direct {p0, v0, v2, p1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeBytes([BII)V

    .line 253
    :cond_2
    iget-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    iput-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->locoff:J

    return-void
.end method

.method private writeShort(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    .line 320
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 321
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 322
    iget-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->close()V

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->ensureOpen()V

    .line 116
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    if-eqz v0, :cond_9

    .line 118
    iget v1, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->method:I

    const-string v2, ")"

    const-string v3, " but got 0x"

    const-string v4, "invalid entry size (expected "

    const-string v5, " bytes)"

    const-string v6, " but got "

    if-eqz v1, :cond_6

    const/16 v7, 0x8

    if-ne v1, v7, :cond_5

    .line 129
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->finish()V

    .line 131
    :goto_0
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->deflate()V

    goto :goto_0

    .line 135
    :cond_0
    iget v1, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->flag:I

    and-int/2addr v1, v7

    if-nez v1, :cond_4

    .line 136
    iget-wide v7, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->getBytesRead()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_3

    .line 140
    iget-wide v7, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->getBytesWritten()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_2

    .line 144
    iget-wide v4, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 145
    :cond_1
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry CRC-32 (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_2
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid entry compressed size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->getBytesWritten()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_3
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->getBytesRead()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    .line 149
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->getBytesWritten()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    .line 150
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    .line 151
    invoke-direct {p0, v0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeEXT(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)V

    .line 154
    :goto_1
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->reset()V

    .line 155
    iget-wide v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    iget-wide v3, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    goto :goto_2

    .line 158
    :cond_5
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_6
    iget-wide v7, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    iget-wide v9, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    iget-wide v11, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->locoff:J

    sub-long/2addr v9, v11

    cmp-long v1, v7, v9

    if-nez v1, :cond_8

    .line 124
    iget-wide v4, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    .line 161
    :goto_2
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    goto :goto_3

    .line 125
    :cond_7
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry crc-32 (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_8
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    iget-wide v6, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->locoff:J

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    return-void
.end method

.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->ensureOpen()V

    .line 200
    iget-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->finished:Z

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->closeEntry()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 208
    iget-wide v2, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    .line 209
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 211
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    invoke-direct {p0, v4}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeCEN(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-wide v4, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    sub-long/2addr v4, v2

    invoke-direct {p0, v2, v3, v4, v5}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeEND(JJ)V

    .line 216
    iput-boolean v1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->finished:Z

    goto :goto_1

    .line 206
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "ZIP file must have at least one entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public putNextEntry(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->ensureOpen()V

    .line 58
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->closeEntry()V

    .line 62
    :cond_0
    iget-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->time:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->setTime(J)V

    .line 66
    :cond_1
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->method:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 67
    iget v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->method:I

    iput v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->method:I

    .line 70
    :cond_2
    iget v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->method:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    .line 88
    iget-wide v5, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_4

    iget-wide v5, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_4

    iget-wide v5, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_4

    .line 89
    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 93
    iput v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->flag:I

    goto :goto_0

    .line 90
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "DEFLATED entry missing size, compressed size, or crc-32"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_4
    iput v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->flag:I

    :goto_0
    const/16 v0, 0x14

    .line 98
    iput v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->version:I

    goto :goto_2

    .line 101
    :cond_5
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "unsupported compression method"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_6
    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_7

    .line 73
    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    iput-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    goto :goto_1

    .line 74
    :cond_7
    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    .line 75
    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    iput-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    goto :goto_1

    .line 76
    :cond_8
    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    iget-wide v6, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->csize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    .line 80
    :goto_1
    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_a

    iget-wide v4, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->crc:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    .line 81
    iput v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->version:I

    .line 82
    iput v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->flag:I

    .line 104
    :goto_2
    iget-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    iput-wide v0, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->offset:J

    .line 105
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->names:Ljava/util/Hashtable;

    iget-object v1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 108
    invoke-direct {p0, p1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->writeLOC(Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;)V

    .line 109
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    iput-object p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    return-void

    .line 106
    :cond_9
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_a
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry missing size, compressed size, or crc-32"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_b
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "STORED entry where compressed != uncompressed size"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5555

    if-le v0, v1, :cond_1

    invoke-static {p1}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->getUTF8Length(Ljava/lang/String;)I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZIP file comment too long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->comment:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0, p1}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->setLevel(I)V

    return-void
.end method

.method public setMethod(I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid compression method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    :goto_0
    iput p1, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->method:I

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->ensureOpen()V

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 169
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_5

    if-eqz p3, :cond_4

    .line 171
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    iget v0, v0, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->method:I

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->write([BII)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "invalid compression method"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_1
    iget-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->written:J

    .line 177
    iget-wide v2, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->locoff:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->entry:Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;

    iget-wide v2, v2, Lcn/powervision/upgrade/utils/compress/tool/ZipEntry;->size:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 181
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 190
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_1

    .line 178
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "attempt to write past end of STORED entry"

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "no current ZIP entry"

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 194
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
