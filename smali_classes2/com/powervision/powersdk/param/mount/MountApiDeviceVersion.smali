.class public Lcom/powervision/powersdk/param/mount/MountApiDeviceVersion;
.super Ljava/lang/Object;
.source "MountApiDeviceVersion.java"


# instance fields
.field public date:I

.field public ver:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiDeviceVersion;->ver:I

    .line 13
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiDeviceVersion;->date:I

    return-void
.end method
