.class public final Lcom/mob/mobapm/internal/APMMobCommunicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;,
        Lcom/mob/mobapm/internal/APMMobCommunicator$Callback;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Random;

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/math/BigInteger;

.field private d:Lcom/mob/tools/utils/MobRSA;

.field private e:Lcom/mob/tools/utils/Hashon;

.field private f:Lcom/mob/mobapm/internal/e;

.field private g:Lcom/mob/mobapm/internal/e$c;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->a:Ljava/util/Random;

    .line 3
    new-instance v0, Lcom/mob/tools/utils/MobRSA;

    invoke-direct {v0, p1}, Lcom/mob/tools/utils/MobRSA;-><init>(I)V

    iput-object v0, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->d:Lcom/mob/tools/utils/MobRSA;

    .line 4
    new-instance p1, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->b:Ljava/math/BigInteger;

    .line 5
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->c:Ljava/math/BigInteger;

    .line 6
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object p1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    .line 7
    new-instance p1, Lcom/mob/mobapm/internal/e;

    invoke-direct {p1}, Lcom/mob/mobapm/internal/e;-><init>()V

    iput-object p1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    .line 8
    new-instance p1, Lcom/mob/mobapm/internal/e$c;

    invoke-direct {p1}, Lcom/mob/mobapm/internal/e$c;-><init>()V

    iput-object p1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    const/16 p2, 0x7530

    .line 9
    iput p2, p1, Lcom/mob/mobapm/internal/e$c;->a:I

    const/16 p2, 0x1388

    .line 10
    iput p2, p1, Lcom/mob/mobapm/internal/e$c;->b:I

    return-void
.end method

.method private a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
    .locals 0

    .line 77
    new-instance p1, Lcom/mob/mobapm/internal/APMMobCommunicator$b;

    invoke-direct {p1, p0, p2}, Lcom/mob/mobapm/internal/APMMobCommunicator$b;-><init>(Lcom/mob/mobapm/internal/APMMobCommunicator;[Ljava/lang/String;)V

    return-object p1
.end method

.method private a([Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;
    .locals 1

    .line 76
    new-instance v0, Lcom/mob/mobapm/internal/APMMobCommunicator$a;

    invoke-direct {v0, p0, p1}, Lcom/mob/mobapm/internal/APMMobCommunicator$a;-><init>(Lcom/mob/mobapm/internal/APMMobCommunicator;[Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mob/mobapm/internal/APMMobCommunicator;)Lcom/mob/tools/utils/Hashon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    return-object p0
.end method

.method private a([BLjava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p3, :cond_0

    .line 52
    invoke-direct {p0, p2}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a([B)[B

    move-result-object p2

    .line 55
    :cond_0
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->d:Lcom/mob/tools/utils/MobRSA;

    iget-object v2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->b:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, p1, v2, v3}, Lcom/mob/tools/utils/MobRSA;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 58
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 59
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 60
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object p1

    .line 61
    array-length p2, p1

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 62
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 63
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 64
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 66
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ZLjava/util/HashMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/mob/mobapm/internal/APMMobCommunicator;->b()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-eqz p2, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    .line 75
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private a()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    iget-object v2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->a:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Random;->setSeed(J)V

    .line 45
    iget-object v2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 46
    iget-object v2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 47
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 48
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 39
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 40
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Identity"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/mob/mobapm/internal/g;->b()Lcom/mob/mobapm/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mobapm/internal/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-static {}, Lcom/mob/mobapm/internal/g;->b()Lcom/mob/mobapm/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mobapm/internal/g;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "moid"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "response is empty"

    const-string v1, "error"

    const-string v2, "status"

    const/4 v3, -0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p1, :cond_3

    .line 1
    iget-object v4, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "res"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "data"

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1

    .line 11
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;

    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;

    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/mobapm/internal/APMMobCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 107
    invoke-direct {p0, p3, p2}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(ZLjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p2

    .line 111
    :cond_1
    iget-object p3, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/e$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(ZLjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p2, p4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 83
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    iget-object v5, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(ZZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(ZZLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a()[B

    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p4, p6}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p6

    const-string v1, "utf-8"

    .line 12
    invoke-virtual {p6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 13
    invoke-direct {p0, p1, p3}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(ZLjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a([B[Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;

    move-result-object v7

    .line 16
    new-instance v5, Lcom/mob/mobapm/internal/f;

    invoke-direct {v5}, Lcom/mob/mobapm/internal/f;-><init>()V

    .line 17
    invoke-virtual {v5, p6}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    .line 18
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>>  request: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nurl = "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nheader = "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p6, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_1

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object p2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p2, p4}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 23
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 24
    new-instance p6, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p6, p4, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    iget-object p3, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    invoke-virtual {p2, p5, p1, v4, p3}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/e$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    iget-object v8, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    const/4 v6, -0x1

    move-object v3, p5

    invoke-virtual/range {v2 .. v8}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/b;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/mobapm/internal/e$c;)V

    .line 32
    aget-object p2, p1, v0

    if-eqz p2, :cond_2

    .line 33
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ">>> response: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, p1, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 34
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/mob/mobapm/internal/APMMobCommunicator;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ZZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, p4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string p4, "{}"

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(ZZLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/io/File;

    const-string v2, "radar"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    iget-object v2, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    iget-object v3, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    invoke-virtual {v2, p1, v0, v3}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/mobapm/internal/e$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "200"

    goto :goto_0

    :cond_1
    const-string p1, "-1"

    :goto_0
    const-string v0, "code"

    .line 97
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->e:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 30
    invoke-direct {p0, p3, p2}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(ZLjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p2

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    iget-object v1, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/mob/mobapm/internal/e;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/e$c;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a(ZLjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2

    .line 9
    new-instance v3, Lcom/mob/mobapm/internal/f;

    invoke-direct {v3}, Lcom/mob/mobapm/internal/f;-><init>()V

    .line 10
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {v3, p4}, Lcom/mob/mobapm/internal/f;->a(Ljava/lang/String;)Lcom/mob/mobapm/internal/f;

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 14
    invoke-direct {p0, p2}, Lcom/mob/mobapm/internal/APMMobCommunicator;->a([Ljava/lang/String;)Lcom/mob/tools/network/HttpResponseCallback;

    move-result-object v5

    .line 15
    iget-object v0, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->f:Lcom/mob/mobapm/internal/e;

    iget-object v6, p0, Lcom/mob/mobapm/internal/APMMobCommunicator;->g:Lcom/mob/mobapm/internal/e$c;

    const/4 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mob/mobapm/internal/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/mobapm/internal/b;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/mobapm/internal/e$c;)V

    const/4 p1, 0x0

    .line 16
    aget-object p3, p2, p1

    if-eqz p3, :cond_1

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>> response code: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, p1

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v0, p1, [Ljava/lang/Object;

    invoke-virtual {p3, p4, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 18
    aget-object p1, p2, p1

    invoke-direct {p0, p1}, Lcom/mob/mobapm/internal/APMMobCommunicator;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
