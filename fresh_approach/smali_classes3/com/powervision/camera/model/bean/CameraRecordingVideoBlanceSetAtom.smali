.class public Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;
.super Ljava/lang/Object;
.source "CameraRecordingVideoBlanceSetAtom.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private maxValue:I

.field private minValue:I

.field private selectedValue:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->minValue:I

    .line 42
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->maxValue:I

    .line 43
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->selectedValue:I

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->maxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->minValue:I

    return v0
.end method

.method public getSelectedValue()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->selectedValue:I

    return v0
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->maxValue:I

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->minValue:I

    return-void
.end method

.method public setSelectedValue(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBlanceSetAtom;->selectedValue:I

    return-void
.end method
