.class Lcom/umeng/commonsdk/statistics/proto/e$a;
.super Lcom/umeng/analytics/pro/cr;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cr<",
        "Lcom/umeng/commonsdk/statistics/proto/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/e$a;-><init>()V

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

    .line 355
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    .line 362
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    .line 363
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    if-nez v1, :cond_1

    .line 396
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->k()V

    .line 400
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    return-void

    .line 401
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/ci;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ci;-><init>(Ljava/lang/String;)V

    throw p1

    .line 366
    :cond_1
    iget-short v1, v0, Lcom/umeng/analytics/pro/cc;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 392
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 384
    :cond_2
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne v1, v2, :cond_3

    .line 385
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 386
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->c(Z)V

    goto :goto_1

    .line 388
    :cond_3
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 376
    :cond_4
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 377
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    .line 378
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b(Z)V

    goto :goto_1

    .line 380
    :cond_5
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 368
    :cond_6
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    if-ne v1, v2, :cond_7

    .line 369
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 370
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/e;->a(Z)V

    goto :goto_1

    .line 372
    :cond_7
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    .line 394
    :goto_1
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

    .line 355
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/e$a;->a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 409
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->k()V

    .line 411
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->l()Lcom/umeng/analytics/pro/cm;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cm;)V

    .line 412
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->m()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 415
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 419
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->n()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 420
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/ch;->a(J)V

    .line 421
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 422
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 423
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/e;->o()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 424
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/ch;->a(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 427
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->d()V

    .line 428
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->b()V

    return-void
.end method
