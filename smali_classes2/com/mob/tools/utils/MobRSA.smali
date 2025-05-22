.class public Lcom/mob/tools/utils/MobRSA;
.super Ljava/lang/Object;
.source "MobRSA.java"


# instance fields
.field private keySize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    return-void
.end method

.method private decodeBlock([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 130
    invoke-virtual {v0, p2, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobRSA;->recoveryPaddingBlock([B)[B

    move-result-object p1

    return-object p1
.end method

.method private encodeBlock([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    array-length v0, p1

    if-ne v0, p3, :cond_0

    if-eqz p2, :cond_1

    .line 81
    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 82
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 85
    :cond_1
    invoke-direct {p0, p1, p6}, Lcom/mob/tools/utils/MobRSA;->paddingBlock([BI)[B

    move-result-object p1

    .line 86
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 87
    invoke-virtual {p2, p5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_2

    .line 92
    invoke-virtual {p2, p4, p5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "the message must be smaller than the modulue"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private paddingBlock([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    array-length v0, p1

    add-int/lit8 v1, p2, -0x1

    if-gt v0, v1, :cond_0

    .line 100
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 101
    aput-byte v2, v0, v1

    .line 102
    array-length v3, p1

    shr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    .line 103
    aput-byte v4, v0, v2

    const/4 v2, 0x2

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    .line 104
    aput-byte v4, v0, v2

    const/4 v2, 0x3

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    .line 105
    aput-byte v4, v0, v2

    const/4 v2, 0x4

    int-to-byte v4, v3

    .line 106
    aput-byte v4, v0, v2

    sub-int/2addr p2, v3

    .line 107
    invoke-static {p1, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Message too large"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private recoveryPaddingBlock([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 140
    new-array v2, v1, [B

    .line 141
    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Not RSA Block"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 117
    new-array v1, v1, [B

    .line 118
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 119
    invoke-direct {p0, v1, p2, p3}, Lcom/mob/tools/utils/MobRSA;->decodeBlock([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object v8, p0

    .line 61
    iget v0, v8, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v9, v0, 0x8

    add-int/lit8 v10, v9, -0xb

    .line 64
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 66
    :goto_0
    array-length v0, v7

    if-le v0, v13, :cond_0

    .line 67
    array-length v0, v7

    sub-int/2addr v0, v13

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v9

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/mob/tools/utils/MobRSA;->encodeBlock([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 69
    array-length v1, v0

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->write([B)V

    add-int/2addr v13, v14

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 74
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public genKeys()[Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 19
    iget v1, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v1

    .line 20
    iget v2, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v2

    .line 21
    iget v3, p0, Lcom/mob/tools/utils/MobRSA;->keySize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v0}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    .line 22
    invoke-virtual {p0, v1, v2, v0}, Lcom/mob/tools/utils/MobRSA;->genKeys(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public genKeys(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 33
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gez p2, :cond_1

    .line 41
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p3, v0, p2

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object v1, v0, p1

    return-object v0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "e must be coprime with (p-1)*(q-1)"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "e must be smaller than (p-1)*(q-1)"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "e must be larger than 1"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method
