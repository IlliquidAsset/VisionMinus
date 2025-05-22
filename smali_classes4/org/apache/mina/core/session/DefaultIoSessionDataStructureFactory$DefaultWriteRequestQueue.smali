.class Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;
.super Ljava/lang/Object;
.source "DefaultIoSessionDataStructureFactory.java"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequestQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultWriteRequestQueue"
.end annotation


# instance fields
.field private final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public clear(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 198
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public isEmpty(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 0

    .line 205
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    .line 221
    sget-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    if-ne v0, v1, :cond_0

    .line 222
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory$DefaultWriteRequestQueue;->q:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
