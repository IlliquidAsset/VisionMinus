.class public Lcom/powervision/powersdk/param/mount/MountApiReadI2cData;
.super Ljava/lang/Object;
.source "MountApiReadI2cData.java"


# instance fields
.field public addrType:I

.field public dataNumber:I

.field public ramAddr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiReadI2cData;->ramAddr:I

    .line 10
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiReadI2cData;->addrType:I

    .line 11
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiReadI2cData;->dataNumber:I

    return-void
.end method
