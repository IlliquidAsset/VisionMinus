.class Lorg/apache/mina/core/session/DummySession$6;
.super Ljava/lang/Object;
.source "DummySession.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/session/DummySession;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "Lorg/apache/mina/core/session/IoSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/DummySession;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/session/DummySession;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession$6;->this$0:Lorg/apache/mina/core/session/DummySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 7

    .line 136
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/DummySession;

    .line 137
    invoke-virtual {v0}, Lorg/apache/mina/core/session/DummySession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 143
    instance-of v2, v1, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v2, :cond_0

    .line 144
    check-cast v1, Lorg/apache/mina/core/file/FileRegion;

    .line 146
    :try_start_0
    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v3

    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 147
    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/mina/core/file/FileRegion;->update(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 149
    invoke-virtual {v0}, Lorg/apache/mina/core/session/DummySession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/session/DummySession$6;->this$0:Lorg/apache/mina/core/session/DummySession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/DummySession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_1
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

.method public remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 170
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    :cond_0
    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    .line 160
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 162
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 164
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->isWriteSuspended()Z

    move-result p2

    if-nez p2, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/DummySession$6;->flush(Lorg/apache/mina/core/session/IoSession;)V

    :cond_0
    return-void
.end method
