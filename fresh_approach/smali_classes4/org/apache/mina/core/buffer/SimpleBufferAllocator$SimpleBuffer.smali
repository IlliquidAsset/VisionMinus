.class Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;
.super Lorg/apache/mina/core/buffer/AbstractIoBuffer;
.source "SimpleBufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/buffer/SimpleBufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleBuffer"
.end annotation


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/apache/mina/core/buffer/SimpleBufferAllocator;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/buffer/SimpleBufferAllocator;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->this$0:Lorg/apache/mina/core/buffer/SimpleBufferAllocator;

    .line 59
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;-><init>(Lorg/apache/mina/core/buffer/IoBufferAllocator;I)V

    .line 60
    iput-object p2, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 61
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/buffer/SimpleBufferAllocator;Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->this$0:Lorg/apache/mina/core/buffer/SimpleBufferAllocator;

    .line 65
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    .line 66
    iput-object p3, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method protected asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 91
    new-instance v0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;

    iget-object v1, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->this$0:Lorg/apache/mina/core/buffer/SimpleBufferAllocator;

    iget-object v2, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;-><init>(Lorg/apache/mina/core/buffer/SimpleBufferAllocator;Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public buf()Ljava/nio/ByteBuffer;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected buf(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 81
    new-instance v0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;

    iget-object v1, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->this$0:Lorg/apache/mina/core/buffer/SimpleBufferAllocator;

    iget-object v2, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;-><init>(Lorg/apache/mina/core/buffer/SimpleBufferAllocator;Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method public hasArray()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method protected slice0()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    .line 86
    new-instance v0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;

    iget-object v1, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->this$0:Lorg/apache/mina/core/buffer/SimpleBufferAllocator;

    iget-object v2, p0, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;-><init>(Lorg/apache/mina/core/buffer/SimpleBufferAllocator;Lorg/apache/mina/core/buffer/SimpleBufferAllocator$SimpleBuffer;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
