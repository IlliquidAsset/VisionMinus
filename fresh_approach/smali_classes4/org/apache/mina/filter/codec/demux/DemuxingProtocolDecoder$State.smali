.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
.super Ljava/lang/Object;
.source "DemuxingProtocolDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

.field private final decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

.field final synthetic this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    move-result-object p1

    .line 253
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 254
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 255
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;->getDecoder()Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 0

    .line 246
    iget-object p0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)[Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 0

    .line 246
    iget-object p0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object p0
.end method
