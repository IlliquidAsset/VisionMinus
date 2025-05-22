.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/model/impl/AVEditModel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/model/impl/AVEditModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$0:Lcom/lewis/edit/model/impl/AVEditModel;

    iput-object p2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$0:Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$dRdP0AaIPAjauDcmMO03tZYftB8;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$workLogoMerge$7$AVEditModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
