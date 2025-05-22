.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$Qa0UHnpVpOX286eY5uZHnFRwnQw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$Qa0UHnpVpOX286eY5uZHnFRwnQw;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$Qa0UHnpVpOX286eY5uZHnFRwnQw;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$Qa0UHnpVpOX286eY5uZHnFRwnQw;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$Qa0UHnpVpOX286eY5uZHnFRwnQw;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$workVideoSeparate$9(Ljava/lang/String;Ljava/util/List;Lio/reactivex/FlowableEmitter;)V

    return-void
.end method
