.class public final synthetic Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dg-xckM21LeeEpSjrtvsDdGsgNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/presenter/impl/AVEditPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dg-xckM21LeeEpSjrtvsDdGsgNY;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/presenter/impl/-$$Lambda$AVEditPresenter$dg-xckM21LeeEpSjrtvsDdGsgNY;->f$0:Lcom/lewis/edit/presenter/impl/AVEditPresenter;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/presenter/impl/AVEditPresenter;->lambda$deleteEditFileData$15$AVEditPresenter(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
