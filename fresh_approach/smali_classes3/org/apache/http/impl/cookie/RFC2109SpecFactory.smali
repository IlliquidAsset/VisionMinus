.class public Lorg/apache/http/impl/cookie/RFC2109SpecFactory;
.super Ljava/lang/Object;
.source "RFC2109SpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cookieSpec:Lorg/apache/http/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 0

    .line 87
    iget-object p1, p0, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "http.protocol.cookie-datepatterns"

    .line 70
    invoke-interface {p1, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    const-string v2, "http.protocol.single-cookie-header"

    .line 76
    invoke-interface {p1, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    .line 79
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    return-object v1

    .line 81
    :cond_1
    new-instance p1, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>()V

    return-object p1
.end method
