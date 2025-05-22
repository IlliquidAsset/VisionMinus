.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;->f$1:I

    iput p3, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;->f$2:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;->f$1:I

    iget v2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$BV-SdIfV2LRo1NBLQiZ_06B-CDk;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$getVideoAllTime$3(Ljava/util/List;IILio/reactivex/FlowableEmitter;)V

    return-void
.end method
