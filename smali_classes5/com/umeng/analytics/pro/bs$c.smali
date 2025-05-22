.class Lcom/umeng/analytics/pro/bs$c;
.super Lcom/umeng/analytics/pro/cs;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cs<",
        "Lcom/umeng/analytics/pro/bs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cs;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/bs$1;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bs$c;-><init>()V

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

    .line 259
    check-cast p2, Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bs$c;->b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    iput-object v0, p2, Lcom/umeng/analytics/pro/bs;->b:Lcom/umeng/analytics/pro/bp;

    .line 264
    iput-object v0, p2, Lcom/umeng/analytics/pro/bs;->a:Ljava/lang/Object;

    .line 265
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->v()S

    move-result v0

    .line 266
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/ch;S)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/bs;->a:Ljava/lang/Object;

    .line 267
    iget-object p1, p2, Lcom/umeng/analytics/pro/bs;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bs;->a(S)Lcom/umeng/analytics/pro/bp;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/bs;->b:Lcom/umeng/analytics/pro/bp;

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 259
    check-cast p2, Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bs$c;->a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 274
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->a()Lcom/umeng/analytics/pro/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p2, Lcom/umeng/analytics/pro/bs;->b:Lcom/umeng/analytics/pro/bp;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/bp;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(S)V

    .line 278
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/bs;->b(Lcom/umeng/analytics/pro/ch;)V

    return-void

    .line 275
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/ci;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ci;-><init>(Ljava/lang/String;)V

    throw p1
.end method
