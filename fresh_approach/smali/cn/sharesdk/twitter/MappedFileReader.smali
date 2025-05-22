.class public Lcn/sharesdk/twitter/MappedFileReader;
.super Ljava/lang/Object;
.source "MappedFileReader.java"


# instance fields
.field private array:[B

.field private arraySize:I

.field private fileIn:Ljava/io/FileInputStream;

.field private fileLength:J

.field private mappedBuf:Ljava/nio/MappedByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileIn:Ljava/io/FileInputStream;

    .line 20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileLength:J

    .line 22
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v5, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileLength:J

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    .line 23
    iput p2, p0, Lcn/sharesdk/twitter/MappedFileReader;->arraySize:I

    return-void
.end method

.method public static byteToBase64([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileIn:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public getArray()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    return-object v0
.end method

.method public getFileLength()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->fileLength:J

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sub-int/2addr v0, v1

    .line 32
    iget v1, p0, Lcn/sharesdk/twitter/MappedFileReader;->arraySize:I

    if-le v0, v1, :cond_1

    .line 33
    new-array v0, v1, [B

    iput-object v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    .line 34
    iget-object v1, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    iget v0, p0, Lcn/sharesdk/twitter/MappedFileReader;->arraySize:I

    return v0

    .line 37
    :cond_1
    new-array v1, v0, [B

    iput-object v1, p0, Lcn/sharesdk/twitter/MappedFileReader;->array:[B

    .line 38
    iget-object v2, p0, Lcn/sharesdk/twitter/MappedFileReader;->mappedBuf:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return v0
.end method
