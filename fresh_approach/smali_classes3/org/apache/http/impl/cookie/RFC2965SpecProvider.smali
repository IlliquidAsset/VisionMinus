.class public Lorg/apache/http/impl/cookie/RFC2965SpecProvider;
.super Ljava/lang/Object;
.source "RFC2965SpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# instance fields
.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    .line 60
    iput-object p1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 5

    .line 73
    iget-object p1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez p1, :cond_1

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object p1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Lorg/apache/http/impl/cookie/RFC2965Spec;

    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v4, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v4}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {p1, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    .line 88
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 90
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object p1
.end method
