.class public Lorg/apache/http/client/protocol/HttpClientContext;
.super Lorg/apache/http/protocol/HttpCoreContext;
.source "HttpClientContext.java"


# static fields
.field public static final AUTHSCHEME_REGISTRY:Ljava/lang/String; = "http.authscheme-registry"

.field public static final AUTH_CACHE:Ljava/lang/String; = "http.auth.auth-cache"

.field public static final COOKIESPEC_REGISTRY:Ljava/lang/String; = "http.cookiespec-registry"

.field public static final COOKIE_ORIGIN:Ljava/lang/String; = "http.cookie-origin"

.field public static final COOKIE_SPEC:Ljava/lang/String; = "http.cookie-spec"

.field public static final COOKIE_STORE:Ljava/lang/String; = "http.cookie-store"

.field public static final CREDS_PROVIDER:Ljava/lang/String; = "http.auth.credentials-provider"

.field public static final HTTP_ROUTE:Ljava/lang/String; = "http.route"

.field public static final PROXY_AUTH_STATE:Ljava/lang/String; = "http.auth.proxy-scope"

.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"

.field public static final REQUEST_CONFIG:Ljava/lang/String; = "http.request-config"

.field public static final TARGET_AUTH_STATE:Ljava/lang/String; = "http.auth.target-scope"

.field public static final USER_TOKEN:Ljava/lang/String; = "http.user-token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lorg/apache/http/protocol/HttpCoreContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lorg/apache/http/protocol/HttpCoreContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    return-void
.end method

.method public static adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;
    .locals 1

    .line 137
    instance-of v0, p0, Lorg/apache/http/client/protocol/HttpClientContext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/http/client/protocol/HttpClientContext;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/http/client/protocol/HttpClientContext;

    invoke-direct {v0, p0}, Lorg/apache/http/client/protocol/HttpClientContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static create()Lorg/apache/http/client/protocol/HttpClientContext;
    .locals 2

    .line 143
    new-instance v0, Lorg/apache/http/client/protocol/HttpClientContext;

    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    return-object v0
.end method

.method private getLookup(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/http/config/Lookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/http/config/Lookup<",
            "TT;>;"
        }
    .end annotation

    .line 181
    const-class p2, Lorg/apache/http/config/Lookup;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/config/Lookup;

    return-object p1
.end method


# virtual methods
.method public getAuthCache()Lorg/apache/http/client/AuthCache;
    .locals 2

    .line 209
    const-class v0, Lorg/apache/http/client/AuthCache;

    const-string v1, "http.auth.auth-cache"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/AuthCache;

    return-object v0
.end method

.method public getAuthSchemeRegistry()Lorg/apache/http/config/Lookup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation

    .line 193
    const-class v0, Lorg/apache/http/auth/AuthSchemeProvider;

    const-string v1, "http.authscheme-registry"

    invoke-direct {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getLookup(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieOrigin()Lorg/apache/http/cookie/CookieOrigin;
    .locals 2

    .line 176
    const-class v0, Lorg/apache/http/cookie/CookieOrigin;

    const-string v1, "http.cookie-origin"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieOrigin;

    return-object v0
.end method

.method public getCookieSpec()Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    .line 172
    const-class v0, Lorg/apache/http/cookie/CookieSpec;

    const-string v1, "http.cookie-spec"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieSpec;

    return-object v0
.end method

.method public getCookieSpecRegistry()Lorg/apache/http/config/Lookup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    .line 185
    const-class v0, Lorg/apache/http/cookie/CookieSpecProvider;

    const-string v1, "http.cookiespec-registry"

    invoke-direct {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getLookup(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 2

    .line 164
    const-class v0, Lorg/apache/http/client/CookieStore;

    const-string v1, "http.cookie-store"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 2

    .line 201
    const-class v0, Lorg/apache/http/client/CredentialsProvider;

    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CredentialsProvider;

    return-object v0
.end method

.method public getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;
    .locals 2

    .line 155
    const-class v0, Lorg/apache/http/conn/routing/HttpRoute;

    const-string v1, "http.route"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/routing/RouteInfo;

    return-object v0
.end method

.method public getProxyAuthState()Lorg/apache/http/auth/AuthState;
    .locals 2

    .line 221
    const-class v0, Lorg/apache/http/auth/AuthState;

    const-string v1, "http.auth.proxy-scope"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthState;

    return-object v0
.end method

.method public getRedirectLocations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 160
    const-class v0, Ljava/util/List;

    const-string v1, "http.protocol.redirect-locations"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRequestConfig()Lorg/apache/http/client/config/RequestConfig;
    .locals 2

    .line 237
    const-class v0, Lorg/apache/http/client/config/RequestConfig;

    const-string v1, "http.request-config"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/config/RequestConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    sget-object v0, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    :goto_0
    return-object v0
.end method

.method public getTargetAuthState()Lorg/apache/http/auth/AuthState;
    .locals 2

    .line 217
    const-class v0, Lorg/apache/http/auth/AuthState;

    const-string v1, "http.auth.target-scope"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthState;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/Object;
    .locals 1

    const-string v0, "http.user-token"

    .line 229
    invoke-virtual {p0, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserToken(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "http.user-token"

    .line 225
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAuthCache(Lorg/apache/http/client/AuthCache;)V
    .locals 1

    const-string v0, "http.auth.auth-cache"

    .line 213
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAuthSchemeRegistry(Lorg/apache/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http.authscheme-registry"

    .line 197
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieSpecRegistry(Lorg/apache/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http.cookiespec-registry"

    .line 189
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 1

    const-string v0, "http.cookie-store"

    .line 168
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .locals 1

    const-string v0, "http.auth.credentials-provider"

    .line 205
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRequestConfig(Lorg/apache/http/client/config/RequestConfig;)V
    .locals 1

    const-string v0, "http.request-config"

    .line 242
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserToken(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "http.user-token"

    .line 233
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
