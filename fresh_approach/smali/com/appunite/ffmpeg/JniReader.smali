.class public Lcom/appunite/ffmpeg/JniReader;
.super Ljava/lang/Object;
.source "JniReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private position:I

.field private value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/appunite/ffmpeg/JniReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appunite/ffmpeg/JniReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x10

    new-array v0, p2, [B

    .line 13
    iput-object v0, p0, Lcom/appunite/ffmpeg/JniReader;->value:[B

    .line 17
    sget-object v0, Lcom/appunite/ffmpeg/JniReader;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Reading: %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p1, "dupadupadupadupa"

    .line 19
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "MD5"

    .line 21
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iget-object v0, p0, Lcom/appunite/ffmpeg/JniReader;->value:[B

    invoke-static {p1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iput v3, p0, Lcom/appunite/ffmpeg/JniReader;->position:I

    return-void

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public check(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public read([B)I
    .locals 4

    .line 32
    iget v0, p0, Lcom/appunite/ffmpeg/JniReader;->position:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 33
    iget-object v1, p0, Lcom/appunite/ffmpeg/JniReader;->value:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 34
    array-length v0, v1

    .line 36
    :cond_0
    iget v1, p0, Lcom/appunite/ffmpeg/JniReader;->position:I

    sub-int/2addr v0, v1

    .line 37
    iget-object v2, p0, Lcom/appunite/ffmpeg/JniReader;->value:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget p1, p0, Lcom/appunite/ffmpeg/JniReader;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/appunite/ffmpeg/JniReader;->position:I

    return v0
.end method

.method public seek(JI)J
    .locals 0

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public write([B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
