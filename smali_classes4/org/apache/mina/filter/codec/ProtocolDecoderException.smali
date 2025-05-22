.class public Lorg/apache/mina/filter/codec/ProtocolDecoderException;
.super Lorg/apache/mina/filter/codec/ProtocolCodecException;
.source "ProtocolDecoderException.java"


# static fields
.field private static final serialVersionUID:J = 0x3135363438363135L


# instance fields
.field private hexdump:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getHexdump()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 77
    invoke-super {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v1, " "

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(Hexdump: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public setHexdump(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->hexdump:Ljava/lang/String;

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Hexdump cannot be set more than once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
