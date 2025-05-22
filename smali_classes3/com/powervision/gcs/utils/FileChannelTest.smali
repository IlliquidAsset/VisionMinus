.class public Lcom/powervision/gcs/utils/FileChannelTest;
.super Ljava/lang/Object;
.source "FileChannelTest.java"


# instance fields
.field inBuffer:Ljava/nio/ByteBuffer;

.field inChannel:Ljava/nio/channels/FileChannel;

.field inputStream:Ljava/io/FileInputStream;

.field num:I

.field outBuffer:Ljava/nio/ByteBuffer;

.field packet:[B

.field private sinkChannel:Ljava/nio/channels/Pipe$SinkChannel;

.field private sourceChannel:Ljava/nio/channels/Pipe$SourceChannel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2800

    .line 17
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inBuffer:Ljava/nio/ByteBuffer;

    const/16 v0, 0x1400

    .line 18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->outBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 59
    iput-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->packet:[B

    const/4 v0, 0x1

    .line 123
    iput v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->num:I

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inputStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 49
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/base/config/GlobalConfig;->GeoHistory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 2

    const/4 v0, 0x3

    .line 210
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public read()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inputStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/powervision/base/config/GlobalConfig;->GeoHistory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inputStream:Ljava/io/FileInputStream;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/utils/FileChannelTest;->inChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public receive([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public test()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
