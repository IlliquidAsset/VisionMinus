.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "ObjectSerializationDecoder.java"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private maxObjectSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    const/high16 v0, 0x100000

    .line 40
    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->classLoader:Ljava/lang/ClassLoader;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "classLoader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    iget p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->prefixedDataAvailable(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getMaxObjectSize()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 85
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxObjectSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
