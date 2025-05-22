.class public Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraRecordingVideoStyleChild.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/entity/AbstractExpandableItem<",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        ">;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;"
    }
.end annotation


# instance fields
.field private checkIndex:I

.field private contrast:Ljava/lang/String;

.field private contrastResId:I

.field private isCustomItem:Z

.field private isIconItem:Z

.field private isSelect:Z

.field private saturation:Ljava/lang/String;

.field private saturationResId:I

.field private sharpness:Ljava/lang/String;

.field private sharpnessResId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->title:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->sharpnessResId:I

    .line 72
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->contrastResId:I

    .line 73
    iput p4, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->saturationResId:I

    .line 74
    iput-boolean p5, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isIconItem:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->title:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->sharpness:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->contrast:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->saturation:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isIconItem:Z

    return-void
.end method


# virtual methods
.method public getCheckIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->checkIndex:I

    return v0
.end method

.method public getContrast()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->contrast:Ljava/lang/String;

    return-object v0
.end method

.method public getContrastResId()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->contrastResId:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSaturation()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->saturation:Ljava/lang/String;

    return-object v0
.end method

.method public getSaturationResId()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->saturationResId:I

    return v0
.end method

.method public getSharpness()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->sharpness:Ljava/lang/String;

    return-object v0
.end method

.method public getSharpnessResId()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->sharpnessResId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomItem()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isCustomItem:Z

    return v0
.end method

.method public isIconItem()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isIconItem:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isSelect:Z

    return v0
.end method

.method public setCheckIndex(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->checkIndex:I

    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->contrast:Ljava/lang/String;

    return-void
.end method

.method public setContrastResId(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->contrastResId:I

    return-void
.end method

.method public setCustomItem(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isCustomItem:Z

    return-void
.end method

.method public setIconItem(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isIconItem:Z

    return-void
.end method

.method public setSaturation(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->saturation:Ljava/lang/String;

    return-void
.end method

.method public setSaturationResId(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->saturationResId:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->isSelect:Z

    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->sharpness:Ljava/lang/String;

    return-void
.end method

.method public setSharpnessResId(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->sharpnessResId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoStyleChild;->title:Ljava/lang/String;

    return-void
.end method
