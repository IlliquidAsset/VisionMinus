.class public Lcom/powervision/powersdk/param/mount/MountApiI2CData;
.super Ljava/lang/Object;
.source "MountApiI2CData.java"


# instance fields
.field public addrType:I

.field public data:[B

.field public encryption:I

.field public len:I

.field public ramAddr:I


# direct methods
.method public constructor <init>(II[BII)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CData;->ramAddr:I

    .line 12
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CData;->addrType:I

    .line 13
    iput-object p3, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CData;->data:[B

    .line 14
    iput p4, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CData;->len:I

    .line 15
    iput p5, p0, Lcom/powervision/powersdk/param/mount/MountApiI2CData;->encryption:I

    return-void
.end method
