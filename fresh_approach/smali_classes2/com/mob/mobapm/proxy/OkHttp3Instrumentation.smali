.class public Lcom/mob/mobapm/proxy/OkHttp3Instrumentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/mob/mobapm/proxy/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    .line 9
    new-instance v0, Lcom/mob/mobapm/proxy/a;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static openWithProxy(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/mob/mobapm/proxy/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    .line 9
    new-instance v0, Lcom/mob/mobapm/proxy/a;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static urlFactoryOpen(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/mobapm/d/a;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "OkHttpInstrumentation - wrapping return of call to OkUrlFactory.open..."

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/mob/mobapm/proxy/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    .line 10
    new-instance v0, Lcom/mob/mobapm/proxy/a;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
