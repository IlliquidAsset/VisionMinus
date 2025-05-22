.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "DefaultIoFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0

    .line 727
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V

    return-void
.end method


# virtual methods
.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    move-object p1, p2

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoProcessor;->remove(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 732
    move-object p1, p2

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 735
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    .line 736
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 740
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 741
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 744
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteMessages()V

    .line 750
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 752
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_3

    .line 753
    invoke-interface {v0, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 755
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lorg/apache/mina/core/service/IoProcessor;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    .line 757
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 758
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_1

    .line 761
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_1
    return-void
.end method
