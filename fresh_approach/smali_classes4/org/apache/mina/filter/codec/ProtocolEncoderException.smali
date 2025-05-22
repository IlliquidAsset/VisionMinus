.class public Lorg/apache/mina/filter/codec/ProtocolEncoderException;
.super Lorg/apache/mina/filter/codec/ProtocolCodecException;
.source "ProtocolEncoderException.java"


# static fields
.field private static final serialVersionUID:J = 0x7978de0174711154L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
