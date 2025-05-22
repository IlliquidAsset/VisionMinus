.class Lcom/powervision/sdk/Ap03Manager$5;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnBatteryStatusListener;


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

    .line 489
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$5;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryStatus(III[IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x5

    .line 496
    aget v2, p4, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 497
    :goto_0
    iget-object v4, v0, Lcom/powervision/sdk/Ap03Manager$5;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v4}, Lcom/powervision/sdk/Ap03Manager;->access$500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x6

    if-ge v3, v4, :cond_0

    .line 498
    iget-object v4, v0, Lcom/powervision/sdk/Ap03Manager$5;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v4}, Lcom/powervision/sdk/Ap03Manager;->access$500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;

    aget v4, p4, v8

    int-to-double v10, v4

    aget v4, p4, v1

    int-to-double v12, v4

    const-wide v14, 0x3fa999999999999aL    # 0.05

    mul-double v12, v12, v14

    sub-double/2addr v10, v12

    double-to-float v4, v10

    float-to-double v10, v4

    aget v4, p4, v1

    int-to-double v12, v4

    aget v4, p4, v1

    int-to-double v5, v4

    mul-double v5, v5, v14

    sub-double/2addr v12, v5

    div-double/2addr v10, v12

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v10, v10, v4

    double-to-float v10, v10

    aget v11, p4, v2

    const/4 v6, 0x1

    aget v12, p4, v6

    const/4 v6, 0x2

    aget v13, p4, v6

    aget v15, p4, v7

    const/4 v6, 0x4

    aget v17, p4, v6

    aget v20, p4, v1

    aget v21, p4, v8

    move/from16 v14, p3

    move/from16 v16, p6

    move/from16 v18, p2

    move/from16 v19, p10

    invoke-interface/range {v9 .. v21}, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;->getBatteryElectric(FIIIIIIIIIII)V

    .line 502
    iget-object v6, v0, Lcom/powervision/sdk/Ap03Manager$5;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v6}, Lcom/powervision/sdk/Ap03Manager;->access$500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;

    aget v7, p4, v7

    invoke-interface {v6, v7}, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;->getBatteryTime(I)V

    .line 503
    iget-object v6, v0, Lcom/powervision/sdk/Ap03Manager$5;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v6}, Lcom/powervision/sdk/Ap03Manager;->access$500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;

    const/16 v7, 0x8

    aget v7, p4, v7

    const/16 v9, 0x9

    aget v9, p4, v9

    invoke-interface {v6, v7, v9}, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;->getFlyBatteryElectric(II)V

    .line 504
    iget-object v6, v0, Lcom/powervision/sdk/Ap03Manager$5;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v6}, Lcom/powervision/sdk/Ap03Manager;->access$500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;

    move/from16 v9, p12

    move-object/from16 v10, p15

    move-object/from16 v11, p16

    invoke-interface {v6, v10, v11, v9}, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;->getBatterInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 505
    iget-object v6, v0, Lcom/powervision/sdk/Ap03Manager$5;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v6}, Lcom/powervision/sdk/Ap03Manager;->access$500(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;

    aget v7, p4, v8

    int-to-double v7, v7

    aget v12, p4, v1

    int-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double v12, v12, v14

    sub-double/2addr v7, v12

    double-to-float v7, v7

    float-to-double v7, v7

    aget v12, p4, v1

    int-to-double v12, v12

    aget v2, p4, v1

    int-to-double v1, v2

    mul-double v1, v1, v14

    sub-double/2addr v12, v1

    div-double/2addr v7, v12

    mul-double v7, v7, v4

    double-to-float v1, v7

    invoke-interface {v6, v1}, Lcom/powervision/sdk/callback/Ap03BatteryStatusListener;->getHandhledBatteryValue(F)V

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 507
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    const/4 v2, 0x5

    aget v2, p4, v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/FlightLogUtil;->setTotalElectricity(I)V

    .line 508
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    aget v2, p4, v8

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/FlightLogUtil;->setLastFlyElectricity(I)V

    .line 510
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    const/16 v2, 0x8

    aget v2, p4, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/FlightLogUtil;->setReturnElectricity(F)V

    .line 511
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    const/16 v2, 0x9

    aget v2, p4, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/powervision/base/utils/FlightLogUtil;->setLandingElectricity(F)V

    .line 513
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v1

    aget v2, p4, v7

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/powervision/base/utils/FlightLogUtil;->setRemainingFlightTime(J)V

    :cond_1
    return-void
.end method
