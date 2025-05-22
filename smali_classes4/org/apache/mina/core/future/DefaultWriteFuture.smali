.class public Lorg/apache/mina/core/future/DefaultWriteFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultWriteFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/WriteFuture;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public static newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 52
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 38
    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setWritten()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/WriteFuture;

    return-object p1
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->await()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 127
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 88
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isWritten()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .line 143
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/WriteFuture;

    return-object p1
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setValue(Ljava/lang/Object;)Z

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "exception"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWritten()V
    .locals 1

    .line 100
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setValue(Ljava/lang/Object;)Z

    return-void
.end method
