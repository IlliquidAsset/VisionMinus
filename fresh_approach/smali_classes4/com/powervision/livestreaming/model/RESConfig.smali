.class public Lcom/powervision/livestreaming/model/RESConfig;
.super Ljava/lang/Object;
.source "RESConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/livestreaming/model/RESConfig$DirectionMode;,
        Lcom/powervision/livestreaming/model/RESConfig$RenderingMode;,
        Lcom/powervision/livestreaming/model/RESConfig$FilterMode;
    }
.end annotation


# instance fields
.field private backCameraDirectionMode:I

.field private bitRate:I

.field private defaultCamera:I

.field private filterMode:I

.field private frontCameraDirectionMode:I

.field private printDetailMsg:Z

.field private renderingMode:I

.field private rtmpAddr:Ljava/lang/String;

.field private targetVideoSize:Landroid/util/Size;

.field private videoBufferQueueNum:I

.field private videoFPS:I

.field private videoGOP:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/powervision/livestreaming/model/RESConfig;
    .locals 5

    .line 47
    new-instance v0, Lcom/powervision/livestreaming/model/RESConfig;

    invoke-direct {v0}, Lcom/powervision/livestreaming/model/RESConfig;-><init>()V

    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setFilterMode(I)V

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setRenderingMode(I)V

    .line 50
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/powervision/livestreaming/model/RESConfig;->setTargetVideoSize(Landroid/util/Size;)V

    const/16 v2, 0xf

    .line 51
    invoke-virtual {v0, v2}, Lcom/powervision/livestreaming/model/RESConfig;->setVideoFPS(I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setVideoGOP(I)V

    const/4 v1, 0x5

    .line 53
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setVideoBufferQueueNum(I)V

    const v1, 0x1e8480

    .line 54
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setBitRate(I)V

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setPrintDetailMsg(Z)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setDefaultCamera(I)V

    const/16 v1, 0x10

    .line 57
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setBackCameraDirectionMode(I)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/model/RESConfig;->setFrontCameraDirectionMode(I)V

    return-object v0
.end method


# virtual methods
.method public getBackCameraDirectionMode()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->backCameraDirectionMode:I

    return v0
.end method

.method public getBitRate()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->bitRate:I

    return v0
.end method

.method public getDefaultCamera()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->defaultCamera:I

    return v0
.end method

.method public getFilterMode()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->filterMode:I

    return v0
.end method

.method public getFrontCameraDirectionMode()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->frontCameraDirectionMode:I

    return v0
.end method

.method public getRenderingMode()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->renderingMode:I

    return v0
.end method

.method public getRtmpAddr()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->rtmpAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetVideoSize()Landroid/util/Size;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->targetVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method public getVideoBufferQueueNum()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->videoBufferQueueNum:I

    return v0
.end method

.method public getVideoFPS()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->videoFPS:I

    return v0
.end method

.method public getVideoGOP()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->videoGOP:I

    return v0
.end method

.method public isPrintDetailMsg()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/powervision/livestreaming/model/RESConfig;->printDetailMsg:Z

    return v0
.end method

.method public setBackCameraDirectionMode(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->backCameraDirectionMode:I

    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->bitRate:I

    return-void
.end method

.method public setDefaultCamera(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->defaultCamera:I

    return-void
.end method

.method public setFilterMode(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->filterMode:I

    return-void
.end method

.method public setFrontCameraDirectionMode(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->frontCameraDirectionMode:I

    return-void
.end method

.method public setPrintDetailMsg(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->printDetailMsg:Z

    return-void
.end method

.method public setRenderingMode(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->renderingMode:I

    return-void
.end method

.method public setRtmpAddr(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->rtmpAddr:Ljava/lang/String;

    return-void
.end method

.method public setTargetVideoSize(Landroid/util/Size;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->targetVideoSize:Landroid/util/Size;

    return-void
.end method

.method public setVideoBufferQueueNum(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->videoBufferQueueNum:I

    return-void
.end method

.method public setVideoFPS(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->videoFPS:I

    return-void
.end method

.method public setVideoGOP(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/powervision/livestreaming/model/RESConfig;->videoGOP:I

    return-void
.end method
