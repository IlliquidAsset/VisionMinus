.class public Lcom/powervision/gcs/model/ship/ShipSeekerGetWifiIpModel;
.super Ljava/lang/Object;
.source "ShipSeekerGetWifiIpModel.java"


# instance fields
.field public LinkStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAndroidUsbIp()Z
    .locals 2

    .line 19
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipSeekerGetWifiIpModel;->LinkStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWifiIp()Z
    .locals 1

    .line 15
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipSeekerGetWifiIpModel;->LinkStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isiOSUsbIp()Z
    .locals 2

    .line 23
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipSeekerGetWifiIpModel;->LinkStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
