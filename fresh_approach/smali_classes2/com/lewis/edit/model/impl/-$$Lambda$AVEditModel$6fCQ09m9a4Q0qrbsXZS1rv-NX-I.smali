.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$6fCQ09m9a4Q0qrbsXZS1rv-NX-I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$6fCQ09m9a4Q0qrbsXZS1rv-NX-I;->f$0:Landroid/util/SparseArray;

    iput p2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$6fCQ09m9a4Q0qrbsXZS1rv-NX-I;->f$1:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$6fCQ09m9a4Q0qrbsXZS1rv-NX-I;->f$0:Landroid/util/SparseArray;

    iget v1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$6fCQ09m9a4Q0qrbsXZS1rv-NX-I;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$getResourcePath$1(Landroid/util/SparseArray;ILio/reactivex/ObservableEmitter;)V

    return-void
.end method
