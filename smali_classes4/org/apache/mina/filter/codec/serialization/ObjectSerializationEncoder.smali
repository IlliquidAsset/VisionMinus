.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;
.super Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.source "ObjectSerializationEncoder.java"


# instance fields
.field private maxObjectSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;-><init>()V

    const v0, 0x7fffffff

    .line 38
    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    instance-of p1, p2, Ljava/io/Serializable;

    if-eqz p1, :cond_1

    const/16 p1, 0x40

    .line 81
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 83
    invoke-virtual {p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 85
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    .line 86
    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    if-gt p2, v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 92
    invoke-interface {p3, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->write(Ljava/lang/Object;)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The encoded object is too big: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (> "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method

.method public getMaxObjectSize()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 70
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    return-void

    .line 67
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
