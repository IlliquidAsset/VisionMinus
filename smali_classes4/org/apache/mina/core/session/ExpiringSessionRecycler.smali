.class public Lorg/apache/mina/core/session/ExpiringSessionRecycler;
.super Ljava/lang/Object;
.source "ExpiringSessionRecycler.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionRecycler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;
    }
.end annotation


# instance fields
.field private mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/ExpiringMap<",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">.Expirer;"
        }
    .end annotation
.end field

.field private sessionMap:Lorg/apache/mina/util/ExpiringMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/util/ExpiringMap<",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3c

    .line 40
    invoke-direct {p0, v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {v0, p1, p2}, Lorg/apache/mina/util/ExpiringMap;-><init>(II)V

    iput-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    .line 49
    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap;->getExpirer()Lorg/apache/mina/util/ExpiringMap$Expirer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    .line 50
    iget-object p1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    new-instance p2, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;-><init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;Lorg/apache/mina/core/session/ExpiringSessionRecycler$1;)V

    invoke-virtual {p1, p2}, Lorg/apache/mina/util/ExpiringMap;->addExpirationListener(Lorg/apache/mina/util/ExpirationListener;)V

    return-void
.end method


# virtual methods
.method public getExpirationInterval()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap;->getExpirationInterval()I

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public put(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->startExpiringIfNotStarted()V

    .line 59
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExpiringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v1, v0, p1}, Lorg/apache/mina/util/ExpiringMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public recycle(Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExpiringMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/session/IoSession;

    return-object p1
.end method

.method public remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExpiringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpirationInterval(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExpiringMap;->setExpirationInterval(I)V

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->sessionMap:Lorg/apache/mina/util/ExpiringMap;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExpiringMap;->setTimeToLive(I)V

    return-void
.end method

.method public stopExpiring()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;->mapExpirer:Lorg/apache/mina/util/ExpiringMap$Expirer;

    invoke-virtual {v0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->stopExpiring()V

    return-void
.end method
