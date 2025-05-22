.class public Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field protected buf:[B

.field private closed:Z

.field protected def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

.field usesDefaultDeflater:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 34
    new-instance v0, Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-direct {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;-><init>()V

    invoke-direct {p0, p1, v0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcn/powervision/upgrade/utils/compress/tool/Deflater;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->usesDefaultDeflater:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcn/powervision/upgrade/utils/compress/tool/Deflater;)V
    .locals 1

    const/16 v0, 0x200

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcn/powervision/upgrade/utils/compress/tool/Deflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcn/powervision/upgrade/utils/compress/tool/Deflater;I)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->closed:Z

    .line 16
    iput-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->usesDefaultDeflater:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    .line 21
    iput-object p2, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    .line 22
    new-array p1, p3, [B

    iput-object p1, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->buf:[B

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer size <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 25
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->finish()V

    .line 78
    iget-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->usesDefaultDeflater:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->end()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->closed:Z

    :cond_1
    return-void
.end method

.method protected deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    iget-object v1, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->finish()V

    .line 68
    :goto_0
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->deflate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 40
    invoke-virtual {p0, v1, v2, v0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    .line 46
    array-length v2, p1

    sub-int/2addr v2, v1

    or-int/2addr v0, v2

    if-ltz v0, :cond_2

    if-eqz p3, :cond_1

    .line 49
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v0}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->buf:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 53
    iget-object v2, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->setInput([BII)V

    .line 55
    :goto_1
    iget-object v2, p0, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->def:Lcn/powervision/upgrade/utils/compress/tool/Deflater;

    invoke-virtual {v2}, Lcn/powervision/upgrade/utils/compress/tool/Deflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcn/powervision/upgrade/utils/compress/tool/DeflaterOutputStream;->deflate()V

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 45
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "write beyond end of stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
