.class Lcom/umeng/commonsdk/statistics/proto/c$a;
.super Lcom/umeng/analytics/pro/cr;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cr<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 410
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 415
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    .line 417
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    .line 418
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    if-nez v1, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->k()V

    .line 477
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    return-void

    .line 421
    :cond_0
    iget-short v1, v0, Lcom/umeng/analytics/pro/cc;->c:S

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 469
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto/16 :goto_3

    .line 461
    :cond_1
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 462
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/statistics/proto/c;->c(Z)V

    goto/16 :goto_3

    .line 465
    :cond_2
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_3

    .line 443
    :cond_3
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v3, 0xf

    if-ne v1, v3, :cond_5

    .line 445
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->p()Lcom/umeng/analytics/pro/cd;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lcom/umeng/analytics/pro/cd;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 447
    :goto_1
    iget v1, v0, Lcom/umeng/analytics/pro/cd;->b:I

    if-ge v2, v1, :cond_4

    .line 449
    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    .line 450
    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/analytics/pro/ch;)V

    .line 451
    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->q()V

    .line 455
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    goto :goto_3

    .line 457
    :cond_5
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_3

    .line 423
    :cond_6
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v5, 0xd

    if-ne v1, v5, :cond_8

    .line 425
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->n()Lcom/umeng/analytics/pro/ce;

    move-result-object v0

    .line 426
    new-instance v1, Ljava/util/HashMap;

    iget v5, v0, Lcom/umeng/analytics/pro/ce;->c:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 427
    :goto_2
    iget v1, v0, Lcom/umeng/analytics/pro/ce;->c:I

    if-ge v2, v1, :cond_7

    .line 430
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->z()Ljava/lang/String;

    move-result-object v1

    .line 431
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v3}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    .line 432
    invoke-virtual {v3, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/analytics/pro/ch;)V

    .line 433
    iget-object v5, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 435
    :cond_7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->o()V

    .line 437
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Z)V

    goto :goto_3

    .line 439
    :cond_8
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    .line 471
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->m()V

    goto/16 :goto_0
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 410
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/c$a;->a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 482
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->n()V

    .line 484
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->o()Lcom/umeng/analytics/pro/cm;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cm;)V

    .line 485
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    .line 486
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->p()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 488
    new-instance v0, Lcom/umeng/analytics/pro/ce;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 489
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/umeng/analytics/pro/ce;-><init>(BBI)V

    .line 488
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/ce;)V

    .line 490
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/umeng/analytics/pro/ch;->a(Ljava/lang/String;)V

    .line 492
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/analytics/pro/ch;)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->e()V

    .line 496
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 498
    :cond_1
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->q()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 502
    new-instance v0, Lcom/umeng/analytics/pro/cd;

    iget-object v2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 503
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/cd;-><init>(BI)V

    .line 502
    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cd;)V

    .line 504
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/a;

    .line 505
    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/analytics/pro/ch;)V

    goto :goto_1

    .line 507
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->f()V

    .line 509
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 512
    :cond_3
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 513
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/c;->r()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 515
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/ch;->a(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 519
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->d()V

    .line 520
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->b()V

    return-void
.end method
