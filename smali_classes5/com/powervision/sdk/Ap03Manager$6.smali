.class Lcom/powervision/sdk/Ap03Manager$6;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnLocalPositionNedListener;


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

    .line 521
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$6;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalPositionNed(FFFFFF)V
    .locals 9

    .line 525
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 526
    sput v0, Lcom/powervision/base/utils/UtMissUtils;->UM_HEIGHT:F

    .line 527
    sput p6, Lcom/powervision/base/utils/UtMissUtils;->UM_GS:F

    const/4 v0, 0x0

    .line 529
    :goto_0
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$6;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$600(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$6;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$600(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;

    neg-float v2, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-interface {v1, v2, p6, v3, p5}, Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;->ap03LocalPositionInfo(FFFF)V

    .line 536
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$6;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$600(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;->ap03LocalNedPositionInfo(FFFFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setAircraftHeight(F)V

    .line 540
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/FlightLogUtil;->setHorizontalSpeed(F)V

    .line 541
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/powervision/base/utils/FlightLogUtil;->setVerticalSpeed(F)V

    return-void
.end method
