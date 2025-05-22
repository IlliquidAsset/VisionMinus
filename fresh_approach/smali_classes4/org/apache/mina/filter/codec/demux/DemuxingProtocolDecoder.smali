.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "DemuxingProtocolDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    }
.end annotation


# static fields
.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final STATE:Lorg/apache/mina/core/session/AttributeKey;

.field private decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 94
    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    .line 90
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 92
    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    .locals 0

    .line 88
    iget-object p0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-object p0
.end method

.method private getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    .line 236
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMessageDecoder(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 106
    :try_start_0
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 112
    const-class v1, Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;-><init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregisterable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified class doesn\'t have a public default constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoderClass"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 2

    .line 123
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 131
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 132
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v0, v0

    aput-object p1, v1, v0

    .line 134
    iput-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-super {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 228
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 145
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v1

    .line 148
    array-length v4, v1

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_3

    .line 149
    aget-object v6, v1, v4

    .line 150
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    .line 151
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v8

    .line 156
    :try_start_0
    invoke-interface {v6, p1, p2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decodable(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {p2, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 159
    invoke-virtual {p2, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 162
    sget-object v7, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v9, v7, :cond_0

    .line 163
    invoke-static {v0, v6}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    goto :goto_2

    .line 165
    :cond_0
    sget-object v6, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v9, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    :cond_1
    sget-object v6, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v9, v6, :cond_2

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected decode result (see your decodable()): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 158
    invoke-virtual {p2, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 159
    invoke-virtual {p2, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1

    .line 172
    :cond_3
    :goto_2
    array-length v1, v1

    if-eq v5, v1, :cond_4

    .line 181
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v1

    if-nez v1, :cond_5

    return v3

    .line 174
    :cond_4
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 176
    new-instance p2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No appropriate message decoder: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->setHexdump(Ljava/lang/String;)V

    .line 178
    throw p2

    :cond_5
    const/4 v1, 0x0

    .line 188
    :try_start_1
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    move-result-object p1

    .line 189
    sget-object p2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne p1, p2, :cond_6

    .line 190
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return v2

    .line 192
    :cond_6
    sget-object p2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne p1, p2, :cond_7

    return v3

    .line 194
    :cond_7
    sget-object p2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne p1, p2, :cond_8

    .line 195
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 196
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string p2, "Message decoder returned NOT_OK."

    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_8
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 199
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected decode result (see your decode()): "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 202
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 203
    throw p1
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-super {p0, p1, p2}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 213
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    return-void
.end method
