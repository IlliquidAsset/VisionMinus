.class public Lcom/umeng/commonsdk/statistics/proto/d;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Lcom/umeng/analytics/pro/bi;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/d$c;,
        Lcom/umeng/commonsdk/statistics/proto/d$d;,
        Lcom/umeng/commonsdk/statistics/proto/d$a;,
        Lcom/umeng/commonsdk/statistics/proto/d$b;,
        Lcom/umeng/commonsdk/statistics/proto/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/bi<",
        "Lcom/umeng/commonsdk/statistics/proto/d;",
        "Lcom/umeng/commonsdk/statistics/proto/d$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/d$e;",
            "Lcom/umeng/analytics/pro/bu;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = 0x2780a889f75f91feL

.field private static final f:Lcom/umeng/analytics/pro/cm;

.field private static final g:Lcom/umeng/analytics/pro/cc;

.field private static final h:Lcom/umeng/analytics/pro/cc;

.field private static final i:Lcom/umeng/analytics/pro/cc;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/cp;",
            ">;",
            "Lcom/umeng/analytics/pro/cq;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:I


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 42
    new-instance v0, Lcom/umeng/analytics/pro/cm;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/cm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->f:Lcom/umeng/analytics/pro/cm;

    .line 45
    new-instance v0, Lcom/umeng/analytics/pro/cc;

    const-string v1, "property"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->g:Lcom/umeng/analytics/pro/cc;

    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/cc;

    const-string v4, "version"

    const/16 v5, 0x8

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->h:Lcom/umeng/analytics/pro/cc;

    .line 49
    new-instance v0, Lcom/umeng/analytics/pro/cc;

    const-string v6, "checksum"

    const/16 v7, 0xb

    const/4 v8, 0x3

    invoke-direct {v0, v6, v7, v8}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->i:Lcom/umeng/analytics/pro/cc;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

    .line 56
    const-class v8, Lcom/umeng/analytics/pro/cr;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/d$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/d$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

    const-class v8, Lcom/umeng/analytics/pro/cs;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/d$d;

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/d$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/d$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 140
    sget-object v8, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v9, Lcom/umeng/analytics/pro/bu;

    new-instance v10, Lcom/umeng/analytics/pro/bx;

    new-instance v11, Lcom/umeng/analytics/pro/bv;

    invoke-direct {v11, v7}, Lcom/umeng/analytics/pro/bv;-><init>(B)V

    new-instance v12, Lcom/umeng/analytics/pro/bz;

    const-class v13, Lcom/umeng/commonsdk/statistics/proto/e;

    const/16 v14, 0xc

    invoke-direct {v12, v14, v13}, Lcom/umeng/analytics/pro/bz;-><init>(BLjava/lang/Class;)V

    invoke-direct {v10, v2, v11, v12}, Lcom/umeng/analytics/pro/bx;-><init>(BLcom/umeng/analytics/pro/bv;Lcom/umeng/analytics/pro/bv;)V

    invoke-direct {v9, v1, v3, v10}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bv;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v2, Lcom/umeng/analytics/pro/bu;

    new-instance v8, Lcom/umeng/analytics/pro/bv;

    invoke-direct {v8, v5}, Lcom/umeng/analytics/pro/bv;-><init>(B)V

    invoke-direct {v2, v4, v3, v8}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bv;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->c:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v2, Lcom/umeng/analytics/pro/bu;

    new-instance v4, Lcom/umeng/analytics/pro/bv;

    invoke-direct {v4, v7}, Lcom/umeng/analytics/pro/bv;-><init>(B)V

    invoke-direct {v2, v6, v3, v4}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bv;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->d:Ljava/util/Map;

    .line 157
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bu;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/d;)V
    .locals 5

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    .line 175
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    .line 176
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    iget-object v1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/e;

    .line 185
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v4, v2}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>(Lcom/umeng/commonsdk/statistics/proto/e;)V

    .line 187
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_0
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 191
    :cond_1
    iget v0, p1, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 192
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 166
    iput p2, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    const/4 p1, 0x1

    .line 167
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    .line 168
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    .line 373
    new-instance v0, Lcom/umeng/analytics/pro/cb;

    new-instance v1, Lcom/umeng/analytics/pro/ct;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ct;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/cb;-><init>(Lcom/umeng/analytics/pro/cv;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->read(Lcom/umeng/analytics/pro/ch;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/bo; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 376
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/cb;

    new-instance v1, Lcom/umeng/analytics/pro/ct;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ct;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/cb;-><init>(Lcom/umeng/analytics/pro/cv;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->write(Lcom/umeng/analytics/pro/ch;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/bo; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 364
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic m()Lcom/umeng/analytics/pro/cm;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->f:Lcom/umeng/analytics/pro/cm;

    return-object v0
.end method

.method static synthetic n()Lcom/umeng/analytics/pro/cc;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->g:Lcom/umeng/analytics/pro/cc;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/analytics/pro/cc;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->h:Lcom/umeng/analytics/pro/cc;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/analytics/pro/cc;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->i:Lcom/umeng/analytics/pro/cc;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 1

    .line 198
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>(Lcom/umeng/commonsdk/statistics/proto/d;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 0

    .line 252
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    const/4 p1, 0x1

    .line 253
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/d;"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(I)Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 0

    .line 301
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/d$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/d$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)V
    .locals 2

    .line 270
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/bf;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(Z)V

    .line 205
    iput v1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    .line 206
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic deepCopy()Lcom/umeng/analytics/pro/bi;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->a()Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    return v0
.end method

.method public synthetic fieldForId(I)Lcom/umeng/analytics/pro/bp;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->b(I)Lcom/umeng/commonsdk/statistics/proto/d$e;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 2

    .line 258
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bf;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method

.method public h()Z
    .locals 2

    .line 266
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bf;->a(BI)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    return-void
.end method

.method public k()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/umeng/analytics/pro/ci;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ci;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    new-instance v0, Lcom/umeng/analytics/pro/ci;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/ci;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/umeng/analytics/pro/ch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cq;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cq;->b()Lcom/umeng/analytics/pro/cp;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/cp;->b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bi;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "property:"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "version:"

    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v3, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/analytics/pro/ch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cq;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cq;->b()Lcom/umeng/analytics/pro/cp;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/cp;->a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bi;)V

    return-void
.end method
