.class public Lcom/powervision/powersdk/param/mount/MountApiMotorParam;
.super Ljava/lang/Object;
.source "MountApiMotorParam.java"


# instance fields
.field public direction:I

.field public speed:I

.field public state:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiMotorParam;->direction:I

    .line 14
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiMotorParam;->speed:I

    .line 15
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiMotorParam;->state:I

    return-void
.end method
