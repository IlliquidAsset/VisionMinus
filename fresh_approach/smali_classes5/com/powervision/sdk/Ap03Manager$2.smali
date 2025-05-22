.class Lcom/powervision/sdk/Ap03Manager$2;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnVisionTrackListener;


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

    .line 241
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$2;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisionTrack(FFFFFII)V
    .locals 11

    move-object v0, p0

    const/4 v1, 0x0

    .line 244
    :goto_0
    iget-object v2, v0, Lcom/powervision/sdk/Ap03Manager$2;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v2}, Lcom/powervision/sdk/Ap03Manager;->access$100(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 245
    iget-object v2, v0, Lcom/powervision/sdk/Ap03Manager$2;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v2}, Lcom/powervision/sdk/Ap03Manager;->access$100(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/powervision/sdk/callback/Ap03VisionTrackListener;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/powervision/sdk/callback/Ap03VisionTrackListener;->getFollowTrackInfo(FFFFFII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
