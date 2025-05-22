.class Lcom/powervision/sdk/Ap03Manager$1;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionDetectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/sdk/Ap03Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/sdk/Ap03Manager;


# direct methods
.method constructor <init>(Lcom/powervision/sdk/Ap03Manager;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$1;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisionDetect(J[F[F[F[F[F[SI)V
    .locals 13

    move-object v0, p0

    const/4 v1, 0x0

    .line 214
    :goto_0
    iget-object v2, v0, Lcom/powervision/sdk/Ap03Manager$1;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v2}, Lcom/powervision/sdk/Ap03Manager;->access$000(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 215
    iget-object v2, v0, Lcom/powervision/sdk/Ap03Manager$1;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v2}, Lcom/powervision/sdk/Ap03Manager;->access$000(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/powervision/sdk/callback/Ap03VisionDetectListener;

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/powervision/sdk/callback/Ap03VisionDetectListener;->getFollowDetectInfo(J[F[F[F[F[F[SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
