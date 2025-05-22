.class public final synthetic Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dXGS5xZgf2t08T39G84g-XonAwg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dXGS5xZgf2t08T39G84g-XonAwg;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dXGS5xZgf2t08T39G84g-XonAwg;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    check-cast p1, Lcom/lewis/edit/model/entries/VideoThumb;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->lambda$getCropVideoThumb$0$AVEditPresenter(Lcom/lewis/edit/model/entries/VideoThumb;)V

    return-void
.end method
