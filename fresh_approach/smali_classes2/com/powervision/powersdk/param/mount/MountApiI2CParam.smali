.class public Lcom/powervision/powersdk/param/mount/MountApiI2CParam;
.super Ljava/lang/Object;
.source "MountApiI2CParam.java"


# instance fields
.field public bps:I

.field public deviceAddr:I

.field public mode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CParam;->mode:I

    .line 11
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CParam;->bps:I

    .line 12
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CParam;->deviceAddr:I

    .line 13
    iput p4, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CParam;->state:I

    return-void
.end method
