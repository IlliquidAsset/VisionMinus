.class public Lcom/umeng/analytics/pro/ah;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static final a:I = 0x3

.field private static final b:I = 0x4e20

.field private static c:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 36
    sget-object p0, Lcom/umeng/analytics/pro/ah;->c:Ljavax/net/ssl/HostnameVerifier;

    if-nez p0, :cond_0

    .line 37
    new-instance p0, Lcom/umeng/analytics/pro/ah$1;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/ah$1;-><init>()V

    sput-object p0, Lcom/umeng/analytics/pro/ah;->c:Ljavax/net/ssl/HostnameVerifier;

    .line 57
    :cond_0
    sget-object p0, Lcom/umeng/analytics/pro/ah;->c:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 78
    :try_start_0
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->c(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 84
    new-instance v3, Ljava/io/InputStreamReader;

    .line 85
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    int-to-char v4, v4

    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_2

    :catch_0
    nop

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x4e20

    .line 100
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v2
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3

    const/4 v0, 0x0

    .line 114
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "TLS"

    .line 118
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 120
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 125
    invoke-static {p0}, Lcom/umeng/analytics/pro/ah;->a(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v0, "POST"

    .line 128
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x3a98

    .line 130
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 132
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 133
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    .line 134
    invoke-virtual {p0, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 139
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 141
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 142
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 145
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
