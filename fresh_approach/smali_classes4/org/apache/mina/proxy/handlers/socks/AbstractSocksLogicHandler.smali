.class public abstract Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.super Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.source "AbstractSocksLogicHandler.java"


# instance fields
.field protected final request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;


# direct methods
.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 46
    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    return-void
.end method
