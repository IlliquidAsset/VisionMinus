.class public Lcom/powervision/powersdk/param/MountUartParams;
.super Ljava/lang/Object;
.source "MountUartParams.java"


# instance fields
.field public bps:I

.field public dataBits:I

.field public flowCtrl:I

.field public parity:I

.field public state:I

.field public stopBits:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/powervision/powersdk/param/MountUartParams;->bps:I

    .line 13
    iput p2, p0, Lcom/powervision/powersdk/param/MountUartParams;->dataBits:I

    .line 14
    iput p3, p0, Lcom/powervision/powersdk/param/MountUartParams;->stopBits:I

    .line 15
    iput p4, p0, Lcom/powervision/powersdk/param/MountUartParams;->parity:I

    .line 16
    iput p5, p0, Lcom/powervision/powersdk/param/MountUartParams;->flowCtrl:I

    .line 17
    iput p6, p0, Lcom/powervision/powersdk/param/MountUartParams;->state:I

    return-void
.end method
