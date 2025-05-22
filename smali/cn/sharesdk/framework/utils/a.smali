.class public Lcn/sharesdk/framework/utils/a;
.super Ljava/lang/Object;
.source "Oauth1Signer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/a$a;,
        Lcn/sharesdk/framework/utils/a$b;
    }
.end annotation


# instance fields
.field private a:Lcn/sharesdk/framework/utils/a$b;

.field private b:Lcn/sharesdk/framework/utils/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcn/sharesdk/framework/utils/a$b;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/a$b;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    .line 22
    new-instance v0, Lcn/sharesdk/framework/utils/b;

    const-string v1, "-._~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/b;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/a;->b:Lcn/sharesdk/framework/utils/b;

    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Lcom/mob/tools/network/KVPair;

    iget-object v2, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v2, v2, Lcn/sharesdk/framework/utils/a$b;->a:Ljava/lang/String;

    const-string v3, "oauth_consumer_key"

    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "oauth_signature_method"

    invoke-direct {v1, v2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance p3, Lcom/mob/tools/network/KVPair;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth_timestamp"

    invoke-direct {p3, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance p3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "oauth_nonce"

    invoke-direct {p3, p2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "oauth_version"

    const-string p3, "1.0"

    invoke-direct {p1, p2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object p1, p1, Lcn/sharesdk/framework/utils/a$b;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 164
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string p3, "oauth_token"

    invoke-direct {p2, p3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private a(JLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .line 108
    iget-object v2, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v1, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcn/sharesdk/framework/utils/a;->a(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mob/tools/network/KVPair;

    .line 116
    iget-object p3, p2, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 117
    iget-object p2, p2, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p2, p1, [Ljava/lang/String;

    .line 124
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 128
    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 130
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge p4, p1, :cond_3

    .line 131
    aget-object v1, p2, p4

    .line 132
    new-instance v2, Lcom/mob/tools/network/KVPair;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_3
    return-object p3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    sget-object v2, Lcn/sharesdk/framework/utils/a$1;->a:[I

    invoke-virtual {p4}, Lcn/sharesdk/framework/utils/a$a;->ordinal()I

    move-result p4

    aget p4, v2, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "HMAC-SHA1"

    const/16 v5, 0x26

    if-eq p4, v2, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    move-object p1, v3

    goto/16 :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object p2, p2, Lcn/sharesdk/framework/utils/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object p2, p2, Lcn/sharesdk/framework/utils/a$b;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p1, "PLAINTEXT"

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    goto :goto_0

    .line 71
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v2, v2, Lcn/sharesdk/framework/utils/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iget-object v2, v2, Lcn/sharesdk/framework/utils/a$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "utf-8"

    .line 72
    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    .line 73
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p4, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p4

    .line 75
    invoke-virtual {p4, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 77
    invoke-direct {p0, v0, v1, p3, v4}, Lcn/sharesdk/framework/utils/a;->a(JLjava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 78
    invoke-direct {p0, p3}, Lcn/sharesdk/framework/utils/a;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 83
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    move-object v3, v4

    .line 91
    :goto_0
    invoke-direct {p0, v0, v1, v3}, Lcn/sharesdk/framework/utils/a;->a(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 92
    new-instance p3, Lcom/mob/tools/network/KVPair;

    const-string p4, "oauth_signature"

    invoke-direct {p3, p4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private b(Ljava/util/ArrayList;)Ljava/lang/String;
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

    if-eqz p1, :cond_3

    .line 138
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/network/KVPair;

    if-lez v1, :cond_1

    const/16 v3, 0x26

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_1
    iget-object v3, v2, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/utils/a$b;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 100
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->b:Lcn/sharesdk/framework/utils/b;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/b;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
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

    .line 36
    sget-object v0, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {p0, p1, p2, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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

    const-string v0, "POST"

    .line 40
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OAuth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/network/KVPair;

    if-lez v1, :cond_0

    const/16 v3, 0x2c

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    iget-object v3, v2, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v2, v2, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-direct {v1, v2, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p1, v0, Lcn/sharesdk/framework/utils/a$b;->c:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p2, p1, Lcn/sharesdk/framework/utils/a$b;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p1, v0, Lcn/sharesdk/framework/utils/a$b;->a:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p2, p1, Lcn/sharesdk/framework/utils/a$b;->b:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcn/sharesdk/framework/utils/a;->a:Lcn/sharesdk/framework/utils/a$b;

    iput-object p3, p1, Lcn/sharesdk/framework/utils/a$b;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
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

    .line 44
    sget-object v0, Lcn/sharesdk/framework/utils/a$a;->a:Lcn/sharesdk/framework/utils/a$a;

    invoke-virtual {p0, p1, p2, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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

    const-string v0, "GET"

    .line 48
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcn/sharesdk/framework/utils/a$a;",
            ")",
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

    const-string v0, "PUT"

    .line 56
    invoke-direct {p0, p1, v0, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcn/sharesdk/framework/utils/a$a;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
