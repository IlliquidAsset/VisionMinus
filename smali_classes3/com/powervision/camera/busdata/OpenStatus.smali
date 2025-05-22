.class public Lcom/powervision/camera/busdata/OpenStatus;
.super Ljava/lang/Object;
.source "OpenStatus.java"


# instance fields
.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/powervision/camera/busdata/OpenStatus;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/powervision/camera/busdata/OpenStatus;->status:I

    return-void
.end method
