.class public Lcom/mob/mobapm/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mobapm/internal/e$c;,
        Lcom/mob/mobapm/internal/e$d;
    }
.end annotation


# static fields
.field private static b:Z = true


# instance fields
.field protected a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-boolean v0, Lcom/mob/mobapm/internal/e;->b:Z

    iput-boolean v0, p0, Lcom/mob/mobapm/internal/e;->a:Z

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/mobapm/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/mobapm/internal/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p2, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    .line 239
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance p1, Lcom/mob/mobapm/internal/f;

    invoke-direct {p1}, Lcom/mob/mobapm/internal/f;-><init>()V

    if-eqz p3, :cond_0

    .line 242
    invoke-direct {p0, p3}, Lcom/mob/mobapm/internal/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    :cond_0
    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/mobapm/internal/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/mobapm/internal/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 185
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance p1, Lcom/mob/mobapm/internal/c;

    invoke-direct {p1}, Lcom/mob/mobapm/internal/c;-><init>()V

    .line 189
    new-instance v0, Lcom/mob/mobapm/internal/f;

    invoke-direct {v0}, Lcom/mob/mobapm/internal/f;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    const-string v2, "--"

    const-string v3, "\r\n"

    if-eqz p3, :cond_0

    .line 191
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mob/tools/network/KVPair;

    .line 192
    invoke-virtual {v0, v2}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 193
    invoke-virtual {v0, v1}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    iget-object v6, v4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    const-string v6, "\"\r\n\r\n"

    invoke-virtual {v5, v6}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 194
    iget-object v4, v4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mob/mobapm/internal/c;->a(Lcom/mob/mobapm/internal/b;)Lcom/mob/mobapm/internal/c;

    .line 199
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/tools/network/KVPair;

    .line 200
    new-instance v0, Lcom/mob/mobapm/internal/f;

    invoke-direct {v0}, Lcom/mob/mobapm/internal/f;-><init>()V

    .line 201
    new-instance v4, Ljava/io/File;

    iget-object v5, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v2}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 203
    invoke-virtual {v0, v1}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    iget-object v6, p4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    const-string v6, "\"; filename=\""

    invoke-virtual {v5, v6}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    .line 204
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v4

    const-string v5, "\"\r\n"

    invoke-virtual {v4, v5}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 205
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v4

    iget-object v5, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_8

    .line 207
    :cond_1
    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 208
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 210
    :cond_2
    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "image/png"

    goto :goto_4

    .line 212
    :cond_3
    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "image/gif"

    goto :goto_4

    .line 215
    :cond_4
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    if-eqz v5, :cond_6

    .line 218
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v5

    goto :goto_4

    :cond_6
    :goto_2
    const-string v4, "application/octet-stream"

    goto :goto_4

    :cond_7
    :goto_3
    const-string v4, "image/jpeg"

    :cond_8
    :goto_4
    const-string v5, "Content-Type: "

    .line 223
    invoke-virtual {v0, v5}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object v4

    const-string v5, "\r\n\r\n"

    invoke-virtual {v4, v5}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 224
    invoke-virtual {p1, v0}, Lcom/mob/mobapm/internal/c;->a(Lcom/mob/mobapm/internal/b;)Lcom/mob/mobapm/internal/c;

    .line 226
    new-instance v0, Lcom/mob/mobapm/internal/a;

    invoke-direct {v0}, Lcom/mob/mobapm/internal/a;-><init>()V

    .line 227
    iget-object p4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Lcom/mob/mobapm/internal/a;->a(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, v0}, Lcom/mob/mobapm/internal/c;->a(Lcom/mob/mobapm/internal/b;)Lcom/mob/mobapm/internal/c;

    .line 230
    new-instance p4, Lcom/mob/mobapm/internal/f;

    invoke-direct {p4}, Lcom/mob/mobapm/internal/f;-><init>()V

    .line 231
    invoke-virtual {p4, v3}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 232
    invoke-virtual {p1, p4}, Lcom/mob/mobapm/internal/c;->a(Lcom/mob/mobapm/internal/b;)Lcom/mob/mobapm/internal/c;

    goto/16 :goto_1

    .line 236
    :cond_9
    new-instance p3, Lcom/mob/mobapm/internal/f;

    invoke-direct {p3}, Lcom/mob/mobapm/internal/f;-><init>()V

    .line 237
    invoke-virtual {p3, v2}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    move-result-object p2

    const-string p4, "--\r\n"

    invoke-virtual {p2, p4}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 238
    invoke-virtual {p1, p3}, Lcom/mob/mobapm/internal/c;->a(Lcom/mob/mobapm/internal/b;)Lcom/mob/mobapm/internal/c;

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .line 288
    iget-object v2, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    iget-object v1, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/String;

    .line 290
    invoke-static {v1, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 291
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x26

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/mob/mobapm/internal/e$c;)Ljava/net/HttpURLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "methodTokens"

    const/4 v1, 0x0

    .line 304
    :try_start_0
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :goto_0
    const-string v3, "HttpURLConnection"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const-string v0, "PERMITTED_USER_METHODS"

    .line 311
    :try_start_1
    invoke-static {v3, v0}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 318
    check-cast v2, [Ljava/lang/String;

    .line 319
    array-length v7, v2

    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/String;

    .line 320
    array-length v8, v2

    invoke-static {v2, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    array-length v2, v2

    const-string v8, "PATCH"

    aput-object v8, v7, v2

    if-eqz v6, :cond_1

    .line 323
    invoke-static {v3, v0, v7}, Lcom/mob/tools/utils/ReflectHelper;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 325
    :cond_1
    invoke-static {p1, v0, v7}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    :cond_2
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_3

    const-string v0, "http.keepAlive"

    const-string v2, "false"

    .line 330
    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_4

    .line 334
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 335
    move-object v2, p1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "TLS"

    .line 336
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    .line 337
    new-instance v6, Lcom/mob/mobapm/internal/e$d;

    invoke-direct {v6, v1}, Lcom/mob/mobapm/internal/e$d;-><init>(Ljava/security/KeyStore;)V

    aput-object v6, v4, v5

    .line 338
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 339
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 340
    invoke-virtual {v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_4
    if-nez p2, :cond_5

    .line 343
    sget v0, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    goto :goto_3

    :cond_5
    iget v0, p2, Lcom/mob/mobapm/internal/e$c;->b:I

    :goto_3
    if-lez v0, :cond_6

    .line 345
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_6
    if-nez p2, :cond_7

    .line 348
    sget p2, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    goto :goto_4

    :cond_7
    iget p2, p2, Lcom/mob/mobapm/internal/e$c;->a:I

    :goto_4
    if-lez p2, :cond_8

    .line 350
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_8
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/e$c;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/mobapm/internal/e$c;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpGet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p2}, Lcom/mob/mobapm/internal/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Lcom/mob/mobapm/internal/e$c;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/tools/network/KVPair;

    .line 13
    iget-object p4, p3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p3, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-boolean p2, p0, Lcom/mob/mobapm/internal/e;->a:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 18
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    const/16 p4, 0xa

    const-string v2, "utf-8"

    if-ne p2, p3, :cond_4

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p3, v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 24
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_3

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 28
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 33
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 34
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "use time: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1

    .line 58
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 60
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 64
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    :cond_5
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 69
    :cond_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 70
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "error"

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "status"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance p2, Ljava/lang/Throwable;

    new-instance p3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p3, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;ILcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/mobapm/internal/e$c;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 127
    iget-object v0, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/mobapm/internal/e$c;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 125
    invoke-virtual/range {v0 .. v6}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;ILcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/mobapm/internal/e$c;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance v7, Lcom/mob/mobapm/internal/e$b;

    invoke-direct {v7, p0, v0}, Lcom/mob/mobapm/internal/e$b;-><init>(Lcom/mob/mobapm/internal/e;Ljava/util/HashMap;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/mobapm/internal/e$c;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/mobapm/internal/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/mobapm/internal/e$c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/b;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/mobapm/internal/e$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/mobapm/internal/b;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/mobapm/internal/e$c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawpost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 246
    invoke-direct {p0, p1, p6}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Lcom/mob/mobapm/internal/e$c;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p6, 0x1

    .line 247
    invoke-virtual {p1, p6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-ltz p4, :cond_0

    .line 249
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 252
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/tools/network/KVPair;

    .line 253
    iget-object p6, p4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p6, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-boolean p2, p0, Lcom/mob/mobapm/internal/e;->a:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 258
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 259
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 260
    invoke-virtual {p3}, Lcom/mob/mobapm/internal/b;->c()Ljava/io/InputStream;

    move-result-object p3

    const/high16 p4, 0x10000

    new-array p4, p4, [B

    .line 262
    invoke-virtual {p3, p4}, Ljava/io/InputStream;->read([B)I

    move-result p6

    :goto_1
    if-lez p6, :cond_2

    .line 264
    invoke-virtual {p2, p4, v4, p6}, Ljava/io/OutputStream;->write([BII)V

    .line 265
    invoke-virtual {p3, p4}, Ljava/io/InputStream;->read([B)I

    move-result p6

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 268
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 269
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    if-eqz p5, :cond_3

    .line 273
    :try_start_0
    new-instance p2, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p2, p1}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p5, p2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 278
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 280
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p2

    .line 283
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 285
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/mobapm/internal/e$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            "Lcom/mob/mobapm/internal/e$c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawGet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 91
    invoke-direct {p0, p1, p4}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Lcom/mob/mobapm/internal/e$c;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/tools/network/KVPair;

    .line 94
    iget-object v2, p4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, v2, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-boolean p2, p0, Lcom/mob/mobapm/internal/e;->a:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 98
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 99
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p4, 0xc8

    if-ne p2, p4, :cond_2

    if-eqz p3, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 107
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    new-instance p4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 109
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_4

    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0xa

    .line 113
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_3
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 119
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "error"

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "status"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance p2, Ljava/lang/Throwable;

    new-instance p3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p3, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/mobapm/internal/e$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/mobapm/internal/e$c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpPost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 136
    invoke-direct {p0, p1, p7}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Lcom/mob/mobapm/internal/e$c;)Ljava/net/HttpURLConnection;

    move-result-object p7

    const/4 v2, 0x1

    .line 137
    invoke-virtual {p7, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    .line 138
    invoke-virtual {p7, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 140
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 141
    invoke-direct {p0, p7, p1, p2, p3}, Lcom/mob/mobapm/internal/e;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/mobapm/internal/b;

    move-result-object p1

    if-ltz p5, :cond_1

    .line 143
    invoke-virtual {p7, p5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, p7, p1, p2}, Lcom/mob/mobapm/internal/e;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/mobapm/internal/b;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/mob/mobapm/internal/b;->b()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p7, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 151
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/tools/network/KVPair;

    .line 152
    iget-object p4, p3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p3, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p7, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_2
    iget-boolean p2, p0, Lcom/mob/mobapm/internal/e;->a:Z

    invoke-virtual {p7, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 157
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->connect()V

    .line 158
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 159
    invoke-virtual {p1}, Lcom/mob/mobapm/internal/b;->c()Ljava/io/InputStream;

    move-result-object p1

    const/high16 p3, 0x10000

    new-array p3, p3, [B

    .line 161
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p4

    :goto_2
    if-lez p4, :cond_3

    .line 163
    invoke-virtual {p2, p3, v4, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 164
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p4

    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 167
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 168
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    if-eqz p6, :cond_4

    .line 172
    :try_start_0
    new-instance p1, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p1, p7}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p6, p1}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 177
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 179
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    .line 182
    :cond_4
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/mobapm/internal/e$c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 77
    new-instance v1, Lcom/mob/mobapm/internal/e$a;

    invoke-direct {v1, p0, v0, p2}, Lcom/mob/mobapm/internal/e$a;-><init>(Lcom/mob/mobapm/internal/e;[BLjava/io/OutputStream;)V

    invoke-virtual {p0, p1, v1, p3}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/mobapm/internal/e$c;)V

    .line 86
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/mobapm/internal/e$c;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpGet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p2}, Lcom/mob/mobapm/internal/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Lcom/mob/mobapm/internal/e$c;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/tools/network/KVPair;

    .line 13
    iget-object p4, p3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p3, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-boolean p2, p0, Lcom/mob/mobapm/internal/e;->a:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 18
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 20
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "code"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "use time: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p4}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p2
.end method
