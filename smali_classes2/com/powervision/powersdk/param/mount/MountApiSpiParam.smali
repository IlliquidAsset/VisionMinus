.class public Lcom/powervision/powersdk/param/mount/MountApiSpiParam;
.super Ljava/lang/Object;
.source "MountApiSpiParam.java"


# instance fields
.field public bps:I

.field public crcEnable:I

.field public dataSize:I

.field public firstBit:I

.field public mode:I

.field public state:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiSpiParam;->mode:I

    .line 17
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiSpiParam;->bps:I

    .line 18
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiSpiParam;->firstBit:I

    .line 19
    iput p4, p0, Lcom/powervision/powersdk/param/mount/MountApiSpiParam;->dataSize:I

    .line 20
    iput p5, p0, Lcom/powervision/powersdk/param/mount/MountApiSpiParam;->crcEnable:I

    .line 21
    iput p6, p0, Lcom/powervision/powersdk/param/mount/MountApiSpiParam;->state:I

    return-void
.end method
