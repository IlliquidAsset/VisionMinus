.class public Lcom/powervision/powersdk/param/mount/MountApiCanParam;
.super Ljava/lang/Object;
.source "MountApiCanParam.java"


# instance fields
.field bps:I

.field mode:I

.field state:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanParam;->mode:I

    .line 10
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiCanParam;->bps:I

    .line 11
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiCanParam;->state:I

    return-void
.end method
