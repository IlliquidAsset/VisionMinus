.class public Lcn/sharesdk/twitter/c;
.super Lcn/sharesdk/framework/e;
.source "TwitterHelper.java"


# static fields
.field private static b:Lcn/sharesdk/twitter/c;


# instance fields
.field private c:Lcn/sharesdk/framework/utils/a;

.field private d:Lcn/sharesdk/framework/a/b;

.field private e:Lcn/sharesdk/twitter/MappedFileReader;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/e;-><init>(Lcn/sharesdk/framework/Platform;)V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcn/sharesdk/twitter/c;->f:I

    .line 51
    new-instance p1, Lcn/sharesdk/framework/utils/a;

    invoke-direct {p1}, Lcn/sharesdk/framework/utils/a;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    .line 52
    invoke-static {}, Lcn/sharesdk/framework/a/b;->a()Lcn/sharesdk/framework/a/b;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/twitter/c;)Lcn/sharesdk/twitter/MappedFileReader;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/sharesdk/twitter/c;->e:Lcn/sharesdk/twitter/MappedFileReader;

    return-object p0
.end method

.method public static a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/twitter/c;
    .locals 1

    .line 43
    sget-object v0, Lcn/sharesdk/twitter/c;->b:Lcn/sharesdk/twitter/c;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcn/sharesdk/twitter/c;

    invoke-direct {v0, p0}, Lcn/sharesdk/twitter/c;-><init>(Lcn/sharesdk/framework/Platform;)V

    sput-object v0, Lcn/sharesdk/twitter/c;->b:Lcn/sharesdk/twitter/c;

    .line 46
    :cond_0
    sget-object p0, Lcn/sharesdk/twitter/c;->b:Lcn/sharesdk/twitter/c;

    return-object p0
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
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

    .line 389
    invoke-direct {p0, p1}, Lcn/sharesdk/twitter/c;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "media_id_string"

    .line 391
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 392
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p0, p4, p1}, Lcn/sharesdk/twitter/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
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

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "command"

    const-string v0, "INIT"

    invoke-direct {p1, p2, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "media_type"

    const-string v0, "video/mp4"

    invoke-direct {p1, p2, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 405
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string p3, "total_bytes"

    invoke-direct {p2, p3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://upload.twitter.com/1.1/media/upload.json"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 407
    iget-object p2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 p1, 0x1

    .line 408
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const/4 v3, 0x0

    const-string v5, "/1.1/media/upload.json"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 411
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/twitter/c;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/c;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/twitter/c;Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-direct/range {p0 .. p6}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 444
    new-instance p5, Lcom/mob/tools/network/KVPair;

    const-string p6, "command"

    const-string v0, "APPEND"

    invoke-direct {p5, p6, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance p5, Lcom/mob/tools/network/KVPair;

    const-string p6, "media_id"

    invoke-direct {p5, p6, p4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 447
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string p4, "media_data"

    invoke-direct {p2, p4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_0
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string p4, "media"

    invoke-direct {p2, p4, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :goto_0
    new-instance p1, Lcom/mob/tools/network/KVPair;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p4, p0, Lcn/sharesdk/twitter/c;->f:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "segment_index"

    invoke-direct {p1, p4, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget p1, p0, Lcn/sharesdk/twitter/c;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/sharesdk/twitter/c;->f:I

    .line 453
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://upload.twitter.com/1.1/media/upload.json"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 454
    iget-object p2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 455
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const-string v5, "/1.1/media/upload.json"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 457
    invoke-interface {p3, p1}, Lcn/sharesdk/twitter/UpLoadViewCallBack;->onResule(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lcn/sharesdk/twitter/MappedFileReader;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p1}, Lcn/sharesdk/twitter/MappedFileReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 463
    invoke-virtual {p1}, Lcn/sharesdk/twitter/MappedFileReader;->getArray()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcn/sharesdk/twitter/c;Lcn/sharesdk/twitter/MappedFileReader;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 417
    new-instance v0, Lcn/sharesdk/twitter/MappedFileReader;

    const/high16 v1, 0x80000

    invoke-direct {v0, p1, v1}, Lcn/sharesdk/twitter/MappedFileReader;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/sharesdk/twitter/c;->e:Lcn/sharesdk/twitter/MappedFileReader;

    .line 418
    invoke-direct {p0, v0}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/twitter/MappedFileReader;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 422
    :cond_0
    invoke-static {p1}, Lcn/sharesdk/twitter/MappedFileReader;->byteToBase64([B)Ljava/lang/String;

    move-result-object v1

    .line 423
    new-instance v3, Lcn/sharesdk/twitter/c$2;

    invoke-direct {v3, p0, p2, p3, p4}, Lcn/sharesdk/twitter/c$2;-><init>(Lcn/sharesdk/twitter/c;Ljava/lang/String;J)V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v4, p2

    move-wide v5, p3

    .line 437
    invoke-direct/range {v0 .. v6}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;ZLcn/sharesdk/twitter/UpLoadViewCallBack;Ljava/lang/String;J)V

    const-string p1, "Done"

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
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

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "command"

    const-string v3, "FINALIZE"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "media_id"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://upload.twitter.com/1.1/media/upload.json"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 475
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 p1, 0x1

    .line 476
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const/4 v3, 0x0

    const-string v5, "/1.1/media/upload.json"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 535
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 536
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 537
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 538
    new-instance v2, Lcom/mob/tools/network/KVPair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    .line 543
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 544
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v1, v0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 545
    new-instance v2, Lcom/mob/tools/network/KVPair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v4, v1

    goto :goto_2

    :cond_3
    move-object v4, v0

    .line 551
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    const-string v1, "GET"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 552
    iget-object p2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p2, p1, v3}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 553
    iget-object p3, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p3, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 554
    iget-object p3, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p3, p1, v3, p2, v0}, Lcn/sharesdk/framework/a/b;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 555
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "POST"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p4, :cond_6

    .line 557
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result p2

    if-gtz p2, :cond_5

    goto :goto_3

    .line 561
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object p3, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p3, p1, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 563
    iget-object p3, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p3, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x1

    .line 564
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 558
    :cond_6
    :goto_3
    iget-object p2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p2, p1, v3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 559
    iget-object p3, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p3, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    :goto_4
    move-object v5, p2

    .line 566
    iget-object v1, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcn/sharesdk/framework/a/b;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_8

    .line 569
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    .line 570
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 299
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v2, v0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v10, "https://upload.twitter.com/1.1/media/upload.json"

    invoke-virtual {v2, v10, v9}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 301
    iget-object v3, v0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v2, 0x1

    .line 302
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 304
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 310
    :goto_0
    array-length v2, v1

    if-ge v15, v2, :cond_4

    .line 311
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto/16 :goto_3

    .line 316
    :cond_0
    :try_start_0
    aget-object v2, v1, v15

    const-string v3, "http"

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 319
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 322
    :cond_2
    :goto_1
    new-instance v5, Lcom/mob/tools/network/KVPair;

    const-string v3, "media"

    invoke-direct {v5, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    iget-object v2, v0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const-string v7, "/1.1/media/upload.json"

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v8

    move-object v3, v10

    move-object v4, v9

    move-object v6, v11

    invoke-virtual/range {v2 .. v8}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 326
    aget-object v3, v1, v15

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    .line 327
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 328
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 329
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 332
    :catch_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 336
    :cond_4
    :goto_3
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 337
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_7

    .line 338
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 339
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x2c

    .line 340
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_5
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "media_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 346
    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/twitter/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/c;->b(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void

    .line 141
    :cond_0
    new-instance p2, Lcn/sharesdk/twitter/c$1;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/twitter/c$1;-><init>(Lcn/sharesdk/twitter/c;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    invoke-virtual {p0, p2}, Lcn/sharesdk/twitter/c;->a(Lcn/sharesdk/framework/authorize/SSOListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/sharesdk/twitter/c;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p2}, Lcn/sharesdk/twitter/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "nextCursor"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 221
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string v0, "user_id"

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    :cond_0
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string v0, "screen_name"

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://api.twitter.com/1.1/friends/list.json"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 227
    iget-object p2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 229
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const-string v5, "/1.1/friends/list.json"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 231
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/sharesdk/twitter/c;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v1, "https://api.twitter.com/oauth/access_token"

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "oauth_verifier"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 174
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v3, 0x0

    const-string v5, "/oauth/access_token"

    .line 175
    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    .line 174
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 177
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "nextCursor"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 254
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string v0, "user_id"

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_0
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string v0, "screen_name"

    invoke-direct {p2, v0, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://api.twitter.com/1.1/followers/list.json"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 262
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const-string v5, "/1.1/followers/list.json"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 264
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
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

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 187
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 v0, 0x0

    move-object p1, v7

    :goto_0
    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->a:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 192
    :goto_1
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "user_id"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://api.twitter.com/1.1/users/show.json"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 196
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const-string v5, "/1.1/users/show.json"

    .line 196
    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v7
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v1, "status"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 278
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v0, "media_ids"

    invoke-direct {p1, v0, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://api.twitter.com/1.1/statuses/update.json"

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 281
    iget-object p2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 283
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const-string v5, "/1.1/statuses/update.json"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 285
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
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

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/twitter/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    const-string v1, "https://api.twitter.com/1.1/statuses/update_with_media.json"

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 361
    iget-object v3, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v0, 0x1

    .line 362
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 363
    new-instance v0, Lcom/mob/tools/network/KVPair;

    const-string v3, "status"

    invoke-direct {v0, v3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string p1, "media[]"

    invoke-direct {v3, p1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v6

    const-string v5, "/1.1/statuses/update_with_media.json"

    invoke-virtual/range {v0 .. v6}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 367
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 373
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 374
    iput v2, p0, Lcn/sharesdk/twitter/c;->f:I

    .line 375
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "media_id_string"

    .line 377
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    invoke-direct {p0, p2, v2, v0, v1}, Lcn/sharesdk/twitter/c;->b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 381
    invoke-direct {p0, v2, v0, v1, p1}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 10

    const-string v0, "oauth_token"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "https://api.twitter.com/oauth/request_token"

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v5, "oauth_callback"

    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->getRedirectUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0, v1, v1}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    iget-object v5, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v5, v2}, Lcn/sharesdk/framework/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 85
    iget-object v2, p0, Lcn/sharesdk/twitter/c;->d:Lcn/sharesdk/framework/a/b;

    const/4 v5, 0x0

    const-string v7, "/oauth/request_token"

    .line 86
    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v8

    .line 85
    invoke-virtual/range {v2 .. v8}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v3, "&"

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 93
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "="

    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 99
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    aget-object v8, v7, v5

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "oauth_token_secret"

    .line 108
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v0, v2}, Lcn/sharesdk/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/oauth/authorize"

    .line 111
    invoke-virtual {p0}, Lcn/sharesdk/twitter/c;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.twitter.com/oauth/authorize?oauth_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 115
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_4
    return-object v1
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/g;)Lcn/sharesdk/framework/authorize/c;
    .locals 1

    .line 132
    new-instance v0, Lcn/sharesdk/twitter/b;

    invoke-direct {v0, p1}, Lcn/sharesdk/twitter/b;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/sharesdk/twitter/c;->c:Lcn/sharesdk/framework/utils/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/a;->a()Lcn/sharesdk/framework/utils/a$b;

    move-result-object v0

    iget-object v0, v0, Lcn/sharesdk/framework/utils/a$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/d;)Lcn/sharesdk/framework/authorize/e;
    .locals 1

    .line 124
    new-instance v0, Lcn/sharesdk/twitter/d;

    invoke-direct {v0, p1}, Lcn/sharesdk/twitter/d;-><init>(Lcn/sharesdk/framework/authorize/d;)V

    .line 125
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/sharesdk/twitter/d;->a(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcn/sharesdk/twitter/c;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/sharesdk/twitter/d;->b(Ljava/lang/String;)V

    return-object v0
.end method
