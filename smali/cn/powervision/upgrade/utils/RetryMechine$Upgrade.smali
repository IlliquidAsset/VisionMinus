.class public Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;
.super Ljava/lang/Object;
.source "RetryMechine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/upgrade/utils/RetryMechine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Upgrade"
.end annotation


# instance fields
.field deviceType:I

.field remoteID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    .line 157
    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    .line 157
    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    .line 164
    iput p1, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    .line 165
    iput p2, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    return-void
.end method

.method public constructor <init>(Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    .line 157
    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    .line 160
    iget v0, p1, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    iput v0, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->deviceType:I

    .line 161
    iget p1, p1, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    iput p1, p0, Lcn/powervision/upgrade/utils/RetryMechine$Upgrade;->remoteID:I

    return-void
.end method
