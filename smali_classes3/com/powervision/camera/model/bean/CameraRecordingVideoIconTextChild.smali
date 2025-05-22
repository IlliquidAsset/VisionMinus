.class public Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraRecordingVideoIconTextChild.java"

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
.field private iconResId:I

.field private iconSelectResId:I

.field private isSelect:Z

.field private itemContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->itemContent:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->iconResId:I

    .line 53
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->iconSelectResId:I

    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->iconResId:I

    return v0
.end method

.method public getIconSelectResId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->iconSelectResId:I

    return v0
.end method

.method public getItemContent()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->itemContent:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->isSelect:Z

    return v0
.end method

.method public setIconResId(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->iconResId:I

    return-void
.end method

.method public setIconSelectResId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->iconSelectResId:I

    return-void
.end method

.method public setItemContent(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->itemContent:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoIconTextChild;->isSelect:Z

    return-void
.end method
