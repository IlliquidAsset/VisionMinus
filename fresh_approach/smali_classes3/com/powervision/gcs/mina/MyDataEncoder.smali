.class public Lcom/powervision/gcs/mina/MyDataEncoder;
.super Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.source "MyDataEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    check-cast p2, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 17
    invoke-interface {p3, p2}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->write(Ljava/lang/Object;)V

    .line 18
    invoke-interface {p3}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->flush()Lorg/apache/mina/core/future/WriteFuture;

    return-void
.end method
