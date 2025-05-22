.class public Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;
.super Ljava/lang/Object;
.source "CameraRecordingVideoSizeAtom.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private atomSizeLeft:I

.field private atomSizeLeftBottom:I

.field private atomSizeMiddle:I

.field private atomSizeMiddleBottom:I

.field private atomSizeRight:I

.field private atomSizeRightBottom:I

.field private atomType:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomType:I

    .line 88
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeMiddle:I

    .line 89
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeLeft:I

    .line 90
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeRight:I

    .line 92
    iput p5, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeMiddleBottom:I

    .line 93
    iput p4, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeLeftBottom:I

    .line 94
    iput p6, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeRightBottom:I

    .line 95
    iput p7, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomType:I

    return-void
.end method


# virtual methods
.method public getAtomSizeLeft()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeLeft:I

    return v0
.end method

.method public getAtomSizeLeftBottom()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeLeftBottom:I

    return v0
.end method

.method public getAtomSizeMiddle()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeMiddle:I

    return v0
.end method

.method public getAtomSizeMiddleBottom()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeMiddleBottom:I

    return v0
.end method

.method public getAtomSizeRight()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeRight:I

    return v0
.end method

.method public getAtomSizeRightBottom()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeRightBottom:I

    return v0
.end method

.method public getAtomType()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomType:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public setAtomSizeLeft(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeLeft:I

    return-void
.end method

.method public setAtomSizeLeftBottom(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeLeftBottom:I

    return-void
.end method

.method public setAtomSizeMiddle(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeMiddle:I

    return-void
.end method

.method public setAtomSizeMiddleBottom(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeMiddleBottom:I

    return-void
.end method

.method public setAtomSizeRight(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeRight:I

    return-void
.end method

.method public setAtomSizeRightBottom(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomSizeRightBottom:I

    return-void
.end method

.method public setAtomType(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->atomType:I

    return-void
.end method
