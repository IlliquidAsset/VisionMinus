.class Lcom/powervision/sdk/Ap03Manager$4;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGpsRawIntListener;


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

    .line 437
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$4;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGpsRawIntData(IIIIIIIIIIIIII)V
    .locals 0

    int-to-float p1, p1

    .line 442
    sput p1, Lcom/powervision/base/utils/UtMissUtils;->UM_ALTITUDE:F

    int-to-double p5, p3

    .line 443
    sput-wide p5, Lcom/powervision/base/utils/UtMissUtils;->UM_GPS_LONGITUDE:D

    int-to-double p5, p2

    .line 444
    sput-wide p5, Lcom/powervision/base/utils/UtMissUtils;->UM_GPS_LATITUDE:D

    .line 445
    sput p4, Lcom/powervision/base/utils/UtMissUtils;->UM_SATELLITE:I

    .line 446
    iget-object p1, p0, Lcom/powervision/sdk/Ap03Manager$4;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p1}, Lcom/powervision/sdk/Ap03Manager;->access$300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SatellitesListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 447
    iget-object p1, p0, Lcom/powervision/sdk/Ap03Manager$4;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p1}, Lcom/powervision/sdk/Ap03Manager;->access$300(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03SatellitesListener;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/powervision/sdk/callback/Ap03SatellitesListener;->getSatellitesNum(I)V

    .line 449
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/powervision/base/utils/FlightLogUtil;->setSatellitesNumbers(I)V

    .line 450
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/powervision/base/utils/FlightLogUtil;->setGpsSpeed(I)V

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ap03.........callback .........lat="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " lon ="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "get_lat_lon"

    invoke-static {p5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p1, p0, Lcom/powervision/sdk/Ap03Manager$4;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p1}, Lcom/powervision/sdk/Ap03Manager;->access$400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/powervision/sdk/Ap03Manager$4;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p1}, Lcom/powervision/sdk/Ap03Manager;->access$400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 458
    :goto_0
    iget-object p5, p0, Lcom/powervision/sdk/Ap03Manager$4;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p5}, Lcom/powervision/sdk/Ap03Manager;->access$400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_1

    .line 459
    iget-object p5, p0, Lcom/powervision/sdk/Ap03Manager$4;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {p5}, Lcom/powervision/sdk/Ap03Manager;->access$400(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/powervision/sdk/callback/Ap03LocationListener;

    invoke-interface {p5, p2, p3, p4}, Lcom/powervision/sdk/callback/Ap03LocationListener;->getGpsLocation(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
