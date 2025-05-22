.class public Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;
.super Ljava/lang/Object;
.source "MountApiCanFilterParam.java"


# instance fields
.field public Enable:I

.field public format:I

.field public maskId:I

.field public matchId:I

.field public mode:I

.field public number:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;->number:I

    .line 14
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;->mode:I

    .line 15
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;->matchId:I

    .line 16
    iput p4, p0, Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;->maskId:I

    .line 17
    iput p5, p0, Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;->type:I

    .line 18
    iput p6, p0, Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;->format:I

    .line 19
    iput p7, p0, Lcom/powervision/powersdk/param/mount/MountApiCanFilterParam;->Enable:I

    return-void
.end method
