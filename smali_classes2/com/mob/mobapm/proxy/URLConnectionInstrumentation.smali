.class public final Lcom/mob/mobapm/proxy/URLConnectionInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/mob/mobapm/proxy/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/mob/mobapm/proxy/a;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/mobapm/core/c;->e:Z

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/mob/mobapm/proxy/b;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/mob/mobapm/proxy/a;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_1
    return-object p0
.end method
