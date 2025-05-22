.class public Lcom/powervision/powersdk/param/mount/MountApiGpioParam;
.super Ljava/lang/Object;
.source "MountApiGpioParam.java"


# instance fields
.field public deviceNumber:I

.field public periodHigh:I

.field public periodLow:I

.field public periodRatio:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiGpioParam;->deviceNumber:I

    .line 16
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiGpioParam;->periodRatio:I

    .line 17
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiGpioParam;->periodLow:I

    .line 18
    iput p4, p0, Lcom/powervision/powersdk/param/mount/MountApiGpioParam;->periodHigh:I

    .line 19
    iput p5, p0, Lcom/powervision/powersdk/param/mount/MountApiGpioParam;->state:I

    return-void
.end method
