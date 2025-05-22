.class Lcom/umeng/analytics/pro/bs$a;
.super Lcom/umeng/analytics/pro/cr;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cr<",
        "Lcom/umeng/analytics/pro/bs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/bs$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bs$a;-><init>()V

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

    .line 215
    check-cast p2, Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bs$a;->b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    iput-object v0, p2, Lcom/umeng/analytics/pro/bs;->b:Lcom/umeng/analytics/pro/bp;

    .line 220
    iput-object v0, p2, Lcom/umeng/analytics/pro/bs;->a:Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->j()Lcom/umeng/analytics/pro/cm;

    .line 224
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    .line 226
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/cc;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/bs;->a:Ljava/lang/Object;

    .line 227
    iget-object v1, p2, Lcom/umeng/analytics/pro/bs;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 228
    iget-short v0, v0, Lcom/umeng/analytics/pro/cc;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bs;->a(S)Lcom/umeng/analytics/pro/bp;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bs;->b:Lcom/umeng/analytics/pro/bp;

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->m()V

    .line 235
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->l()Lcom/umeng/analytics/pro/cc;

    .line 236
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->k()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bs$a;->a(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/ch;Lcom/umeng/analytics/pro/bs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bo;
        }
    .end annotation

    .line 241
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->a()Lcom/umeng/analytics/pro/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->d()Lcom/umeng/analytics/pro/cm;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cm;)V

    .line 245
    iget-object v0, p2, Lcom/umeng/analytics/pro/bs;->b:Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bs;->c(Lcom/umeng/analytics/pro/bp;)Lcom/umeng/analytics/pro/cc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ch;->a(Lcom/umeng/analytics/pro/cc;)V

    .line 246
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/ch;)V

    .line 247
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->c()V

    .line 248
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->d()V

    .line 249
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ch;->b()V

    return-void

    .line 242
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/ci;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ci;-><init>(Ljava/lang/String;)V

    throw p1
.end method
