.class public final synthetic Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iput p2, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$1:I

    iput p3, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$2:I

    iput p4, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget v1, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$1:I

    iget v2, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$2:I

    iget v3, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$tufudlibSkVp3ne291SgncFrA48;->f$3:I

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->lambda$controlWatermarkShow$8$AVEditPresenter(IIILjava/lang/Long;)V

    return-void
.end method
