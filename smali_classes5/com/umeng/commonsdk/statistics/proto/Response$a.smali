.class Lcom/umeng/commonsdk/statistics/proto/Response$a;
.super Lcom/umeng/analytics/pro/cr;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cr<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$a;-><init>()V

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

    .line 358
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    .line 365
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    .line 366
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    if-nez v1, :cond_1

    .line 400
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->k()V

    .line 404
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetResp_code()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    return-void

    .line 405
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/ci;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ci;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_1
    iget-short v1, v0, Lcom/umeng/analytics/pro/cc;->c:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 396
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 387
    :cond_2
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v3, 0xc

    if-ne v1, v3, :cond_3

    .line 388
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 389
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->read(Lcom/umeng/analytics/pro/ch;)V

    .line 390
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setImprintIsSet(Z)V

    goto :goto_1

    .line 392
    :cond_3
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 379
    :cond_4
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_5

    .line 380
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 381
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setMsgIsSet(Z)V

    goto :goto_1

    .line 383
    :cond_5
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    goto :goto_1

    .line 371
    :cond_6
    iget-byte v1, v0, Lcom/umeng/analytics/pro/cc;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 372
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 373
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    goto :goto_1

    .line 375
    :cond_7
    iget-byte v0, v0, Lcom/umeng/analytics/pro/cc;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ck;->a(Lcom/umeng/analytics/pro/ch;B)V

    .line 398
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

    .line 358
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 413
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    .line 415
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$300()Lcom/umeng/analytics/pro/cm;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cm;)V

    .line 416
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$400()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 417
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(I)V

    .line 418
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 419
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$500()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 422
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 426
    :cond_0
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$600()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 429
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->write(Lcom/umeng/analytics/pro/ch;)V

    .line 430
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->d()V

    .line 434
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->b()V

    return-void
.end method
