.class public Lcom/powervision/gcs/utils/tool/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Lcom/powervision/gcs/utils/tool/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field crc:J

.field csize:J

.field extra:[B

.field flag:I

.field method:I

.field name:Ljava/lang/String;

.field offset:J

.field size:J

.field time:J

.field version:I


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    .line 8
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 9
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 10
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/utils/tool/ZipEntry;->initFields(J)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/utils/tool/ZipEntry;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    .line 8
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 9
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 10
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    .line 31
    iget-object v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->name:Ljava/lang/String;

    .line 32
    iget-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    .line 33
    iget-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 34
    iget-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 35
    iget-wide v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    .line 36
    iget v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    iput v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    .line 37
    iget-object v0, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B

    iput-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B

    .line 38
    iget-object p1, p1, Lcom/powervision/gcs/utils/tool/ZipEntry;->comment:Ljava/lang/String;

    iput-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    .line 8
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 9
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 10
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->name:Ljava/lang/String;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "entry name too long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    .line 8
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    .line 9
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    .line 10
    iput-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->name:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p2, p3}, Lcom/powervision/gcs/utils/tool/ZipEntry;->initFields(J)V

    return-void
.end method

.method private static dosToJavaTime(J)J
    .locals 10

    .line 141
    new-instance v7, Ljava/util/Date;

    const/16 v0, 0x19

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x50

    add-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x15

    shr-long v2, p0, v0

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v0, 0x10

    shr-long v3, p0, v0

    const-wide/16 v5, 0x1f

    and-long/2addr v3, v5

    long-to-int v3, v3

    const/16 v0, 0xb

    shr-long v8, p0, v0

    and-long v4, v8, v5

    long-to-int v4, v4

    const/4 v0, 0x5

    shr-long v5, p0, v0

    const-wide/16 v8, 0x3f

    and-long/2addr v5, v8

    long-to-int v5, v5

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v8, 0x3e

    and-long/2addr p0, v8

    long-to-int v6, p0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 142
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method private native initFields(J)V
.end method

.method private static javaToDosTime(J)J
    .locals 1

    .line 146
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 147
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result p0

    add-int/lit16 p0, p0, 0x76c

    const/16 p1, 0x7bc

    if-ge p0, p1, :cond_0

    const-wide/32 p0, 0x210000

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x19

    .line 148
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x15

    or-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result p1

    shl-int/lit8 p1, p1, 0xb

    or-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    or-int/2addr p0, p1

    int-to-long p0, p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/utils/tool/ZipEntry;

    .line 158
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 5

    .line 61
    iget-wide v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/tool/ZipEntry;->dosToJavaTime(J)J

    move-result-wide v2

    :cond_0
    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->name:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5555

    if-le v0, v1, :cond_1

    invoke-static {p1}, Lcom/powervision/gcs/utils/tool/ZipOutputStream;->getUTF8Length(Ljava/lang/String;)I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid entry comment length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCompressedSize(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->csize:J

    return-void
.end method

.method public setCrc(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 86
    iput-wide p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->crc:J

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid entry crc-32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtra([B)V
    .locals 2

    if-eqz p1, :cond_1

    .line 109
    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid extra field length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->extra:[B

    return-void
.end method

.method public setMethod(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid compression method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    :goto_0
    iput p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->method:I

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 66
    iput-wide p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->size:J

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid entry size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTime(J)V
    .locals 0

    .line 57
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/tool/ZipEntry;->javaToDosTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/powervision/gcs/utils/tool/ZipEntry;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/powervision/gcs/utils/tool/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
