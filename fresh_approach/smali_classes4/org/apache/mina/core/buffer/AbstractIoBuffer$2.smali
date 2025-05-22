.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;
.super Ljava/io/OutputStream;
.source "AbstractIoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .line 1572
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 1567
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method
