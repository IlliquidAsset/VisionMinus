.class public final synthetic Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/model/impl/AVEditModel;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/lewis/edit/model/entries/VideoEditInfo;

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/model/impl/AVEditModel;Ljava/util/List;ZLjava/lang/String;Lcom/lewis/edit/model/entries/VideoEditInfo;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$0:Lcom/lewis/edit/model/impl/AVEditModel;

    iput-object p2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$2:Z

    iput-object p4, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$4:Lcom/lewis/edit/model/entries/VideoEditInfo;

    iput p6, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$5:F

    iput p7, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$6:F

    iput-object p8, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$8:Ljava/lang/String;

    iput p10, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$9:I

    iput-object p11, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$10:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 12

    iget-object v0, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$0:Lcom/lewis/edit/model/impl/AVEditModel;

    iget-object v1, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$1:Ljava/util/List;

    iget-boolean v2, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$2:Z

    iget-object v3, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$4:Lcom/lewis/edit/model/entries/VideoEditInfo;

    iget v5, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$5:F

    iget v6, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$6:F

    iget-object v7, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$7:Ljava/lang/String;

    iget-object v8, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$8:Ljava/lang/String;

    iget v9, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$9:I

    iget-object v10, p0, Lcom/lewis/edit/model/impl/-$$Lambda$AVEditModel$bv1BhtpJ_pDzhqa79rxNd7rKxMU;->f$10:Ljava/lang/String;

    move-object v11, p1

    invoke-virtual/range {v0 .. v11}, Lcom/lewis/edit/model/impl/AVEditModel;->lambda$workAllVideoEdit$6$AVEditModel(Ljava/util/List;ZLjava/lang/String;Lcom/lewis/edit/model/entries/VideoEditInfo;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lio/reactivex/FlowableEmitter;)V

    return-void
.end method
