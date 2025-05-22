.class public Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;
.super Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.source "CameraRecordingVideoBasicGroup.java"

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
.field private itemContentBg:I

.field private layoutType:I

.field private littileFPS:Ljava/lang/String;

.field private littileResolution:Ljava/lang/String;

.field private mArrowResId:I

.field private mItemContent:Ljava/lang/String;

.field private mItemTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    .line 70
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->mItemTitle:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->itemContentBg:I

    .line 72
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    .line 64
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->mItemTitle:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->mItemContent:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    .line 77
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->mItemTitle:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->littileResolution:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->littileFPS:Ljava/lang/String;

    .line 80
    iput p4, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    return-void
.end method


# virtual methods
.method public getItemContent()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->mItemContent:Ljava/lang/String;

    return-object v0
.end method

.method public getItemContentBg()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->itemContentBg:I

    return v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->mItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLittileFPS()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->littileFPS:Ljava/lang/String;

    return-object v0
.end method

.method public getLittileResolution()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->littileResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFormatString()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraMuxerFormatType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MP4"

    goto :goto_0

    :cond_0
    const-string v0, "MOV"

    :goto_0
    return-object v0
.end method

.method public setItemContent(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->mItemContent:Ljava/lang/String;

    return-void
.end method

.method public setItemContentBg(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->itemContentBg:I

    return-void
.end method

.method public setLayoutType(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->layoutType:I

    return-void
.end method

.method public setLittileFPS(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->littileFPS:Ljava/lang/String;

    return-void
.end method

.method public setLittileResolution(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->littileResolution:Ljava/lang/String;

    return-void
.end method
