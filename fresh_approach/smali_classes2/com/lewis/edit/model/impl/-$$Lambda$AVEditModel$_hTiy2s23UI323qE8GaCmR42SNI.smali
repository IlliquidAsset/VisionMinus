.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$_hTiy2s23UI323qE8GaCmR42SNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$_hTiy2s23UI323qE8GaCmR42SNI;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$_hTiy2s23UI323qE8GaCmR42SNI;->f$1:F

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$_hTiy2s23UI323qE8GaCmR42SNI;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$_hTiy2s23UI323qE8GaCmR42SNI;->f$1:F

    invoke-static {v0, v1, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$workVideoSpeed$12(Ljava/lang/String;FLio/reactivex/FlowableEmitter;)V

    return-void
.end method
