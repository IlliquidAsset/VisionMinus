.class public Lcom/umeng/analytics/pro/bl;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lcom/umeng/analytics/pro/ch;

.field private final b:Lcom/umeng/analytics/pro/cu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/cb$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cb$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bl;-><init>(Lcom/umeng/analytics/pro/cj;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cj;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/umeng/analytics/pro/cu;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cu;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    .line 58
    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/cj;->a(Lcom/umeng/analytics/pro/cv;)Lcom/umeng/analytics/pro/ch;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    return-void
.end method

.method private varargs a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/bl;->j([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Lcom/umeng/analytics/pro/cc;

    move-result-object p2

    if-eqz p2, :cond_8

    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    const/16 p3, 0x64

    const/16 p4, 0xb

    if-eq p1, p3, :cond_2

    const/16 p3, 0xa

    if-eq p1, p3, :cond_1

    if-eq p1, p4, :cond_0

    goto/16 :goto_1

    .line 276
    :cond_0
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p4, :cond_8

    .line 277
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->z()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->B()V

    return-object p1

    .line 271
    :cond_1
    :try_start_1
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p3, :cond_8

    .line 272
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_2
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p4, :cond_8

    .line 282
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->A()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_3
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p3, :cond_8

    .line 267
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 261
    :cond_4
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p3, :cond_8

    .line 262
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_5
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p3, :cond_8

    .line 257
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 251
    :cond_6
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p3, :cond_8

    .line 252
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_7
    iget-byte p1, p2, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne p1, p3, :cond_8

    .line 247
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 289
    :try_start_2
    new-instance p2, Lcom/umeng/analytics/pro/bo;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/bo;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    :goto_2
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->B()V

    throw p1
.end method

.method private varargs j([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Lcom/umeng/analytics/pro/cc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/cu;->a([B)V

    .line 299
    array-length p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Lcom/umeng/analytics/pro/bp;

    const/4 v1, 0x0

    .line 300
    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 301
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    .line 302
    aget-object p2, p3, p2

    aput-object p2, v0, v2

    move p2, v2

    goto :goto_0

    .line 311
    :cond_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    const/4 p2, 0x0

    move-object p3, p2

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_5

    .line 314
    iget-object p3, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p3}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    move-result-object p3

    .line 318
    iget-byte v2, p3, Lcom/umeng/analytics/pro/cc;->b:B

    if-eqz v2, :cond_4

    iget-short v2, p3, Lcom/umeng/analytics/pro/cc;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/bp;->a()S

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_2

    .line 322
    :cond_2
    iget-short v2, p3, Lcom/umeng/analytics/pro/cc;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/bp;->a()S

    move-result v3

    if-eq v2, v3, :cond_3

    .line 324
    iget-object v2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    iget-byte v3, p3, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    .line 325
    iget-object v2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/ch;->m()V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_1

    .line 330
    iget-object v2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    goto :goto_1

    :cond_4
    :goto_2
    return-object p2

    :cond_5
    return-object p3
.end method


# virtual methods
.method public varargs a([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/4 v0, 0x2

    .line 127
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lcom/umeng/analytics/pro/bi;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bl;->a(Lcom/umeng/analytics/pro/bi;[B)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bl;->a(Lcom/umeng/analytics/pro/bi;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->B()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 89
    :catch_0
    :try_start_1
    new-instance p1, Lcom/umeng/analytics/pro/bo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bo;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->B()V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/bi;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/pro/cu;->a([B)V

    .line 70
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/bi;->read(Lcom/umeng/analytics/pro/ch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 73
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->B()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 73
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->B()V

    throw p1
.end method

.method public varargs a(Lcom/umeng/analytics/pro/bi;[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/bl;->j([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Lcom/umeng/analytics/pro/cc;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 108
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/bi;->read(Lcom/umeng/analytics/pro/ch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 114
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->B()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    :try_start_1
    new-instance p2, Lcom/umeng/analytics/pro/bo;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/bo;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 114
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->B()V

    throw p1
.end method

.method public varargs b([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/4 v0, 0x3

    .line 139
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs c([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/4 v0, 0x4

    .line 151
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs d([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/4 v0, 0x6

    .line 163
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs e([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/16 v0, 0x8

    .line 175
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs f([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/16 v0, 0xa

    .line 187
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs g([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/16 v0, 0xb

    .line 199
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs h([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/16 v0, 0x64

    .line 212
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->a(B[BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public varargs i([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 225
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/bl;->j([BLcom/umeng/analytics/pro/bp;[Lcom/umeng/analytics/pro/bp;)Lcom/umeng/analytics/pro/cc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    .line 228
    iget-object p1, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    move-result-object p1

    iget-short p1, p1, Lcom/umeng/analytics/pro/cc;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->B()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 232
    :try_start_1
    new-instance p2, Lcom/umeng/analytics/pro/bo;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/bo;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_1
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->b:Lcom/umeng/analytics/pro/cu;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cu;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/analytics/pro/bl;->a:Lcom/umeng/analytics/pro/ch;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ch;->B()V

    throw p1
.end method
