.class Lcom/powervision/sdk/Ap03Manager$39;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGetHomePositionResultListener;


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

    .line 1506
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$39;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHomePositionResult(IIII)V
    .locals 4

    .line 1509
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$39;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$3900(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03ReturnPointListener;

    if-nez p1, :cond_0

    .line 1511
    invoke-interface {v1, p2, p3, p4}, Lcom/powervision/sdk/callback/Ap03ReturnPointListener;->getReturnPotinInfo(III)V

    goto :goto_0

    :cond_1
    int-to-double v0, p2

    .line 1515
    invoke-static {v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->getPositionByOriginalData(D)D

    move-result-wide v0

    int-to-double v2, p3

    .line 1516
    invoke-static {v2, v3}, Lcom/powervision/base/utils/FlightLogUtil;->getPositionByOriginalData(D)D

    move-result-wide v2

    .line 1518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " \u539f\u59cb  lat="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " lon="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "    "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " formatLat="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "   formatLon="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "flight_return"

    invoke-static {p2, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/FlightLogUtil;->setReturnPointLatitude(D)V

    .line 1522
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/powervision/base/utils/FlightLogUtil;->setReturnPointLongitude(D)V

    return-void
.end method
