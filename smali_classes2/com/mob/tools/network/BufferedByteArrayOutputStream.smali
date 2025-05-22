.class public Lcom/mob/tools/network/BufferedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "BufferedByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v0, v0

    return v0
.end method

.method public switchBuffer([B)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 18
    array-length v0, p1

    iget-object v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    .line 23
    iput-object p1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    .line 24
    check-cast v0, [B

    check-cast v0, [B

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    iget v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 43
    iget p1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    goto :goto_0

    .line 45
    :cond_0
    new-array p2, p2, [B

    .line 46
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p0, p2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write([B)V

    :goto_0
    return-void
.end method
