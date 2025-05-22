.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$G3Yp2LaLwwrlwHQia0UnZJMZ51o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$G3Yp2LaLwwrlwHQia0UnZJMZ51o;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$G3Yp2LaLwwrlwHQia0UnZJMZ51o;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$workEditVideo$14(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
