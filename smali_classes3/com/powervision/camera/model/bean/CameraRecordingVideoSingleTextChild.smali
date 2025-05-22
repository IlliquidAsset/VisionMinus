.class public Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;
.super Ljava/lang/Object;
.source "CameraRecordingVideoSingleTextChild.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# instance fields
.field private formatType:I

.field private isSelect:Z

.field private isVideoForamt:Z

.field private itemContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->formatType:I

    .line 42
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->itemContent:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->isVideoForamt:Z

    .line 44
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->formatType:I

    return-void
.end method


# virtual methods
.method public getFormatType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->formatType:I

    return v0
.end method

.method public getItemContent()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->itemContent:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->isSelect:Z

    return v0
.end method

.method public isVideoForamt()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->isVideoForamt:Z

    return v0
.end method

.method public setSelect(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->isSelect:Z

    return-void
.end method

.method public setVideoForamt(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->isVideoForamt:Z

    return-void
.end method
