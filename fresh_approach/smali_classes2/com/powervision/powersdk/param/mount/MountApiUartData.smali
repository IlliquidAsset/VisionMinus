.class public Lcom/powervision/powersdk/param/mount/MountApiUartData;
.super Ljava/lang/Object;
.source "MountApiUartData.java"


# instance fields
.field public data:[B

.field public encryption:I

.field public len:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/powervision/powersdk/param/mount/MountApiUartData;->data:[B

    .line 10
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiUartData;->len:I

    .line 11
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiUartData;->encryption:I

    return-void
.end method
