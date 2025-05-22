.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;->f$1:I

    iput p3, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;->f$2:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;->f$1:I

    iget v2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$mfKoIro_HDW7Im21DOGoTe4xN4Q;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$workClipVideo$4(Ljava/lang/String;IILio/reactivex/ObservableEmitter;)V

    return-void
.end method
