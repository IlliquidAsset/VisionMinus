.class public Lcom/powervision/gcs/model/ship/ShipUpdateBatteryModel;
.super Ljava/lang/Object;
.source "ShipUpdateBatteryModel.java"


# instance fields
.field public battery:I

.field public lastUpdateTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipUpdateBatteryModel;->battery:I

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/model/ship/ShipUpdateBatteryModel;->lastUpdateTime:J

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/powervision/gcs/model/ship/ShipUpdateBatteryModel;->lastUpdateTime:J

    .line 18
    iput p3, p0, Lcom/powervision/gcs/model/ship/ShipUpdateBatteryModel;->battery:I

    return-void
.end method


# virtual methods
.method public batteryTooLow()Z
    .locals 2

    .line 22
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipUpdateBatteryModel;->battery:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastTimeExpired()Z
    .locals 5

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/powervision/gcs/model/ship/ShipUpdateBatteryModel;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
