.class public Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;
.super Ljava/lang/Object;
.source "SynchronizedProtocolDecoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v1, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDecoder()Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/mina/filter/codec/SynchronizedProtocolDecoder;->decoder:Lorg/apache/mina/filter/codec/ProtocolDecoder;

    return-object v0
.end method
