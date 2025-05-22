.class public Lcom/powervision/powersdk/param/mount/MountApiCanData;
.super Ljava/lang/Object;
.source "MountApiCanData.java"


# instance fields
.field public data:[B

.field public encryption:I

.field public format:I

.field public id:I

.field public len:I

.field public type:I


# direct methods
.method public constructor <init>(III[BII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->type:I

    .line 15
    iput p2, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->format:I

    .line 16
    iput p3, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->id:I

    .line 17
    iput-object p4, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->data:[B

    .line 18
    iput p5, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->len:I

    .line 19
    iput p6, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->encryption:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MountApiCanData{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->data:[B

    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/powersdk/param/mount/MountApiCanData;->encryption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
