.class public Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;
.super Ljava/lang/Object;
.source "IoBufferDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/proxy/utils/IoBufferDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodingContext"
.end annotation


# instance fields
.field private contentLength:I

.field private decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private delimiter:Lorg/apache/mina/core/buffer/IoBuffer;

.field private matchCount:I

.field final synthetic this$0:Lorg/apache/mina/proxy/utils/IoBufferDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->this$0:Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    return v0
.end method

.method public getDecodedBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public getDelimiter()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->delimiter:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public getMatchCount()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public setContentLength(I)V
    .locals 0

    .line 76
    iput p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->contentLength:I

    return-void
.end method

.method public setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->decodedBuffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public setDelimiter(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->delimiter:Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public setMatchCount(I)V
    .locals 0

    .line 84
    iput p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->matchCount:I

    return-void
.end method
