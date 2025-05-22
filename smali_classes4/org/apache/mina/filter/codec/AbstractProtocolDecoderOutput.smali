.class public abstract Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;
.super Ljava/lang/Object;
.source "AbstractProtocolDecoderOutput.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;


# instance fields
.field private final messageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->messageQueue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public getMessageQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->messageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
