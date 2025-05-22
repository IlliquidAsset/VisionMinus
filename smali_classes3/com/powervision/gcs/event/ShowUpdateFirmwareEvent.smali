.class public Lcom/powervision/gcs/event/ShowUpdateFirmwareEvent;
.super Ljava/lang/Object;
.source "ShowUpdateFirmwareEvent.java"


# instance fields
.field private force_update:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/powervision/gcs/event/ShowUpdateFirmwareEvent;->force_update:Z

    return-void
.end method


# virtual methods
.method public isForce_update()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/powervision/gcs/event/ShowUpdateFirmwareEvent;->force_update:Z

    return v0
.end method

.method public setForce_update(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/powervision/gcs/event/ShowUpdateFirmwareEvent;->force_update:Z

    return-void
.end method
