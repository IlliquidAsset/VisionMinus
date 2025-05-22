.class public Lcom/mob/tools/network/ByteArrayPart;
.super Lcom/mob/tools/network/HTTPPart;
.source "ByteArrayPart.java"


# instance fields
.field private buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/mob/tools/network/HTTPPart;-><init>()V

    return-void
.end method


# virtual methods
.method public append([B)Lcom/mob/tools/network/ByteArrayPart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write([B)V

    .line 15
    iget-object p1, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {p1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->flush()V

    return-object p0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v3}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v2

    .line 26
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method protected length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 42
    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
