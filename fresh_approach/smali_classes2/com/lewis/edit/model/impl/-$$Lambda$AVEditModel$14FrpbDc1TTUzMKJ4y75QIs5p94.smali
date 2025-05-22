.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$14FrpbDc1TTUzMKJ4y75QIs5p94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$14FrpbDc1TTUzMKJ4y75QIs5p94;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$14FrpbDc1TTUzMKJ4y75QIs5p94;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$getWorkPicFilePath$2(Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V

    return-void
.end method
