.class final Lorg/apache/mina/core/session/AbstractIoSession$1;
.super Ljava/lang/Object;
.source "AbstractIoSession.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/AbstractIoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/CloseFuture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/CloseFuture;)V
    .locals 2

    .line 83
    invoke-interface {p1}, Lorg/apache/mina/core/future/CloseFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 84
    invoke-static {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$000(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 85
    invoke-static {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$100(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v0, 0x0

    .line 86
    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$202(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    .line 87
    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$302(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    .line 88
    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$402(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    .line 89
    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$502(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    .line 81
    check-cast p1, Lorg/apache/mina/core/future/CloseFuture;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession$1;->operationComplete(Lorg/apache/mina/core/future/CloseFuture;)V

    return-void
.end method
