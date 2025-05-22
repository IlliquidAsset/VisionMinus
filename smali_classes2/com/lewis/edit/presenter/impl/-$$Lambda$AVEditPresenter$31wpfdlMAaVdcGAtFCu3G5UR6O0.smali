.class public final synthetic Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$31wpfdlMAaVdcGAtFCu3G5UR6O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$31wpfdlMAaVdcGAtFCu3G5UR6O0;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iput-object p2, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$31wpfdlMAaVdcGAtFCu3G5UR6O0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$31wpfdlMAaVdcGAtFCu3G5UR6O0;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    iget-object v1, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$31wpfdlMAaVdcGAtFCu3G5UR6O0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->lambda$delayShowSeparate$12$AVEditPresenter(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
