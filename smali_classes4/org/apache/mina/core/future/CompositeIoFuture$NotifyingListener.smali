.class Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;
.super Ljava/lang/Object;
.source "CompositeIoFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/future/CompositeIoFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/future/CompositeIoFuture;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/future/CompositeIoFuture;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;->this$0:Lorg/apache/mina/core/future/CompositeIoFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/future/CompositeIoFuture;Lorg/apache/mina/core/future/CompositeIoFuture$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;-><init>(Lorg/apache/mina/core/future/CompositeIoFuture;)V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;->this$0:Lorg/apache/mina/core/future/CompositeIoFuture;

    invoke-static {p1}, Lorg/apache/mina/core/future/CompositeIoFuture;->access$100(Lorg/apache/mina/core/future/CompositeIoFuture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;->this$0:Lorg/apache/mina/core/future/CompositeIoFuture;

    invoke-static {p1}, Lorg/apache/mina/core/future/CompositeIoFuture;->access$200(Lorg/apache/mina/core/future/CompositeIoFuture;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;->this$0:Lorg/apache/mina/core/future/CompositeIoFuture;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/future/CompositeIoFuture;->setValue(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
