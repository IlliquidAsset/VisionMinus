.class Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;
.super Ljava/lang/Object;
.source "VmPipeFilterChain.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VmPipeIoProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    return-void
.end method

.method private getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 239
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 241
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 242
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 244
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 245
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    move-object p1, v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->add(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public add(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 8

    .line 182
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getWriteRequestQueue0()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isClosing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 184
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 200
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 203
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 190
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    :cond_2
    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 192
    invoke-interface {v3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v4

    .line 193
    iget-object v5, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    new-instance v6, Lorg/apache/mina/core/session/IoEvent;

    sget-object v7, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v6, v7, p1, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v5, v6, v3}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$100(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/core/session/IoEvent;Z)V

    .line 194
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-direct {p0, v4}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 195
    instance-of v3, v4, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_2

    .line 196
    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v3, v1, v2}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->increaseWrittenBytes0(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 203
    :cond_4
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 206
    invoke-static {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$400(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 200
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 203
    :cond_5
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 208
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    :goto_1
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 211
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 215
    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    .line 216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    .line 217
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 219
    :cond_8
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->remove(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public remove(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 1

    .line 253
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 254
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getServiceListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    .line 256
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->updateTrafficControl(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 3

    .line 268
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v2, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->write(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public write(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    .line 228
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 230
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 232
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isWriteSuspended()Z

    move-result p2

    if-nez p2, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    :cond_0
    return-void
.end method
