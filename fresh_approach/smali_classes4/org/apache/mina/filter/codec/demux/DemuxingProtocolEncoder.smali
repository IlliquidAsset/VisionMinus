.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
.super Ljava/lang/Object;
.source "DemuxingProtocolEncoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
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

.field private final type2encoderFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 55
    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    .line 52
    new-instance v0, Lorg/apache/mina/util/CopyOnWriteMap;

    invoke-direct {v0}, Lorg/apache/mina/util/CopyOnWriteMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    return-object p0
.end method

.method private findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 150
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    if-eqz v0, :cond_1

    return-object v0

    .line 166
    :cond_1
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    if-nez v0, :cond_4

    if-nez p3, :cond_2

    .line 174
    new-instance p3, Lorg/apache/mina/util/IdentityHashSet;

    invoke-direct {p3}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    .line 177
    :cond_2
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 181
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v0, v1, v3

    .line 182
    invoke-direct {p0, p1, v0, p3}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 196
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 199
    invoke-virtual {p0, p1, p3}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 209
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    if-eqz p1, :cond_6

    move-object v0, p1

    :cond_6
    return-object v0
.end method

.method private getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    .line 231
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 68
    :try_start_0
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 74
    const-class v1, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;-><init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregisterable type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The specified class doesn\'t have a public default constructor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoderClass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "-TT;>;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<",
            "-TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 98
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v0

    return-void

    .line 100
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is registered already."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "factory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "messageType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 111
    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "-TT;>;)V"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<",
            "-TT;>;)V"
        }
    .end annotation

    .line 123
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 124
    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    move-result-object v0

    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/demux/MessageEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    return-void

    .line 137
    :cond_0
    new-instance p1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No message encoder found for message: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object p1

    return-object p1
.end method
