.class public Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;
.super Ljava/lang/Object;
.source "NTLMResponses.java"


# static fields
.field public static final LM_HASH_MAGIC_CONSTANT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBlob([B[BJ)[B
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 289
    fill-array-data v1, :array_0

    new-array v2, v0, [B

    .line 290
    fill-array-data v2, :array_1

    new-array v3, v0, [B

    .line 291
    fill-array-data v3, :array_2

    new-array v4, v0, [B

    .line 292
    fill-array-data v4, :array_3

    const-wide v5, 0xa9730b66800L

    add-long/2addr p2, v5

    const-wide/16 v5, 0x2710

    mul-long p2, p2, v5

    const/16 v5, 0x8

    new-array v6, v5, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    long-to-int v9, p2

    int-to-byte v9, v9

    .line 298
    aput-byte v9, v6, v8

    ushr-long/2addr p2, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 301
    :cond_0
    array-length p2, p1

    const/16 p3, 0x10

    add-int/2addr p2, p3

    add-int/2addr p2, v0

    array-length v8, p0

    add-int/2addr p2, v8

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 304
    invoke-static {v1, v7, p2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    invoke-static {v2, v7, p2, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-static {v6, v7, p2, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    array-length v1, p1

    invoke-static {p1, v7, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    array-length p1, p1

    add-int/2addr p3, p1

    .line 312
    invoke-static {v3, v7, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, v0

    .line 314
    array-length p1, p0

    invoke-static {p0, v7, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    array-length p0, p0

    add-int/2addr p3, p0

    .line 316
    invoke-static {v4, v7, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static createDESKey([BI)Ljava/security/Key;
    .locals 9

    const/4 v0, 0x7

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 368
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x8

    new-array p0, p0, [B

    .line 370
    aget-byte p1, v1, v2

    aput-byte p1, p0, v2

    .line 371
    aget-byte p1, v1, v2

    shl-int/2addr p1, v0

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    ushr-int/2addr v3, v2

    or-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    .line 372
    aget-byte p1, v1, v2

    const/4 v3, 0x6

    shl-int/2addr p1, v3

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v4

    or-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, p0, v4

    .line 373
    aget-byte p1, v1, v4

    const/4 v5, 0x5

    shl-int/2addr p1, v5

    const/4 v6, 0x3

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    ushr-int/2addr v7, v6

    or-int/2addr p1, v7

    int-to-byte p1, p1

    aput-byte p1, p0, v6

    .line 374
    aget-byte p1, v1, v6

    const/4 v7, 0x4

    shl-int/2addr p1, v7

    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    ushr-int/2addr v8, v7

    or-int/2addr p1, v8

    int-to-byte p1, p1

    aput-byte p1, p0, v7

    .line 375
    aget-byte p1, v1, v7

    shl-int/2addr p1, v6

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v5

    or-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, p0, v5

    .line 376
    aget-byte p1, v1, v5

    shl-int/2addr p1, v4

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v3

    or-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, p0, v3

    .line 377
    aget-byte p1, v1, v3

    shl-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 378
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->oddParity([B)V

    .line 379
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "DES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static getLMResponse(Ljava/lang/String;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmHash(Ljava/lang/String;)[B

    move-result-object p0

    .line 61
    invoke-static {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 143
    invoke-static {p0, p4, p3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "MD5"

    .line 162
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 164
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    const/16 p1, 0x8

    new-array p2, p1, [B

    .line 166
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    invoke-static {p0, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object p0

    .line 76
    invoke-static {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 98
    invoke-static/range {v0 .. v7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 122
    invoke-static {p3, p5, p6, p7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createBlob([B[BJ)[B

    move-result-object p1

    .line 123
    invoke-static {p0, p1, p4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacMD5([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 336
    array-length v5, p1

    const/16 v6, 0x5c

    const/16 v7, 0x36

    if-ge v4, v5, :cond_0

    .line 337
    aget-byte v5, p1, v4

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 338
    aget-byte v5, p1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    goto :goto_1

    .line 340
    :cond_0
    aput-byte v7, v1, v4

    .line 341
    aput-byte v6, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 345
    :cond_1
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p1, p1, [B

    .line 346
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    array-length v1, p0

    invoke-static {p0, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "MD5"

    .line 348
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 349
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 350
    array-length v1, p1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 351
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static lmHash(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 180
    array-length v0, p0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 182
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    invoke-static {v1, v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object p0

    const/4 v0, 0x7

    .line 184
    invoke-static {v1, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DES/ECB/NoPadding"

    .line 185
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    .line 186
    invoke-virtual {v1, v3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 187
    sget-object p0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 188
    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 189
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/16 v3, 0x8

    .line 191
    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    invoke-static {v0, v2, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static lmResponse([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x15

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 237
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-static {v0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object p0

    const/4 v3, 0x7

    .line 239
    invoke-static {v0, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v3

    const/16 v4, 0xe

    .line 240
    invoke-static {v0, v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    const-string v4, "DES/ECB/NoPadding"

    .line 241
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    .line 242
    invoke-virtual {v4, v5, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 243
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 244
    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 245
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 246
    invoke-virtual {v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 247
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/16 v4, 0x8

    .line 249
    invoke-static {p0, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    invoke-static {v3, v1, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    invoke-static {p1, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static lmv2Response([B[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 268
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    array-length p2, p2

    array-length v1, p1

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    invoke-static {v0, p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object p0

    .line 271
    array-length p2, p0

    array-length v0, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 272
    array-length v0, p0

    invoke-static {p0, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length p0, p0

    array-length v0, p1

    invoke-static {p1, v2, p2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private static ntlmHash(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UnicodeLittleUnmarked"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "MD4"

    .line 206
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-static {p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object p2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnicodeLittleUnmarked"

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static oddParity([B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 389
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 390
    aget-byte v2, p0, v1

    ushr-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v4, v2, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x2

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    ushr-int/2addr v2, v4

    xor-int/2addr v2, v3

    and-int/2addr v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 393
    aget-byte v2, p0, v1

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    goto :goto_2

    .line 395
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
