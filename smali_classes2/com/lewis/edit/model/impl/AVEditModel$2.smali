.class Lcom/lewis/edit/model/impl/AVEditModel$2;
.super Lcom/lewis/edit/model/impl/AVEditModel$VideoEditProgressListener;
.source "AVEditModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/model/impl/AVEditModel;->runAwCmdFun(Ljava/lang/String;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastProgress:I

.field final synthetic this$0:Lcom/lewis/edit/model/impl/AVEditModel;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;

.field final synthetic val$isHadWatermark:Z

.field final synthetic val$progressArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lewis/edit/model/impl/AVEditModel;Z[Ljava/lang/String;Lio/reactivex/FlowableEmitter;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->this$0:Lcom/lewis/edit/model/impl/AVEditModel;

    iput-boolean p2, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$isHadWatermark:Z

    iput-object p3, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$progressArray:[Ljava/lang/String;

    iput-object p4, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$emitter:Lio/reactivex/FlowableEmitter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/lewis/edit/model/impl/AVEditModel$VideoEditProgressListener;-><init>(Lcom/lewis/edit/model/impl/AVEditModel$1;)V

    const/4 p1, -0x1

    .line 567
    iput p1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->lastProgress:I

    return-void
.end method


# virtual methods
.method onProgress(I)V
    .locals 4

    .line 571
    iget-boolean v0, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$isHadWatermark:Z

    if-eqz v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x32

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->this$0:Lcom/lewis/edit/model/impl/AVEditModel;

    .line 572
    invoke-static {v0}, Lcom/lewis/edit/model/impl/AVEditModel;->access$100(Lcom/lewis/edit/model/impl/AVEditModel;)I

    move-result v0

    iget-object v1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->this$0:Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-static {v1}, Lcom/lewis/edit/model/impl/AVEditModel;->access$200(Lcom/lewis/edit/model/impl/AVEditModel;)I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->this$0:Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-static {v1}, Lcom/lewis/edit/model/impl/AVEditModel;->access$300(Lcom/lewis/edit/model/impl/AVEditModel;)I

    move-result v1

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 573
    :goto_0
    iget v1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->lastProgress:I

    if-le v0, v1, :cond_1

    .line 574
    iput v0, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->lastProgress:I

    .line 575
    iget-object v1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$progressArray:[Ljava/lang/String;

    const-string v2, "0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 576
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit-progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->this$0:Lcom/lewis/edit/model/impl/AVEditModel;

    invoke-static {p1}, Lcom/lewis/edit/model/impl/AVEditModel;->access$200(Lcom/lewis/edit/model/impl/AVEditModel;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " splice = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->this$0:Lcom/lewis/edit/model/impl/AVEditModel;

    .line 578
    invoke-static {p1}, Lcom/lewis/edit/model/impl/AVEditModel;->access$300(Lcom/lewis/edit/model/impl/AVEditModel;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " final-progress = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$progressArray:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type = water-aMix"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 577
    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iget-object p1, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$emitter:Lio/reactivex/FlowableEmitter;

    iget-object v0, p0, Lcom/lewis/edit/model/impl/AVEditModel$2;->val$progressArray:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
