.class public abstract Lorg/apache/mina/filter/codec/demux/MessageDecoderAdapter;
.super Ljava/lang/Object;
.source "MessageDecoderAdapter.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/demux/MessageDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
