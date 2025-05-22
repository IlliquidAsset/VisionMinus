.class public Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraRecordingVideoSizeChild.java"

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
.field private isSelect:Z

.field private itemContent:Ljava/lang/String;

.field private itemSelectFPS:I

.field private itemTitle:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemTitle:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemContent:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemSelectFPS:I

    .line 50
    iput-object p4, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->nickName:Ljava/lang/String;

    .line 51
    iput p5, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->type:I

    return-void
.end method


# virtual methods
.method public getItemContent()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemContent:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSelectFPS()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemSelectFPS:I

    return v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->type:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->isSelect:Z

    return v0
.end method

.method public setItemContent(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemContent:Ljava/lang/String;

    return-void
.end method

.method public setItemSelectFPS(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemSelectFPS:I

    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->itemTitle:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->isSelect:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->type:I

    return-void
.end method
