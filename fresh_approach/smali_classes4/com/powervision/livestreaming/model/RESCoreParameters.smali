.class public Lcom/powervision/livestreaming/model/RESCoreParameters;
.super Ljava/lang/Object;
.source "RESCoreParameters.java"


# static fields
.field public static final FILTER_MODE_HARD:I = 0x1

.field public static final FILTER_MODE_SOFT:I = 0x2

.field public static final FLAG_DIRECTION_FLIP_HORIZONTAL:I = 0x1

.field public static final FLAG_DIRECTION_FLIP_VERTICAL:I = 0x2

.field public static final FLAG_DIRECTION_ROATATION_0:I = 0x10

.field public static final FLAG_DIRECTION_ROATATION_180:I = 0x40

.field public static final FLAG_DIRECTION_ROATATION_270:I = 0x80

.field public static final FLAG_DIRECTION_ROATATION_90:I = 0x20

.field public static final RENDERING_MODE_NATIVE_WINDOW:I = 0x1

.field public static final RENDERING_MODE_OPENGLES:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioBufferQueueNum:I

.field private audioRecoderBufferSize:I

.field private audioRecoderChannelConfig:I

.field private audioRecoderFormat:I

.field private audioRecoderSliceSize:I

.field private audioRecoderSource:I

.field private backCameraDirectionMode:I

.field private cropRatio:F

.field private done:Z

.field private filterMode:I

.field private frontCameraDirectionMode:I

.field private isPortrait:Z

.field private mediacdoecAVCBitRate:I

.field private mediacodecAACBitRate:I

.field private mediacodecAACChannelCount:I

.field private mediacodecAACMaxInputSize:I

.field private mediacodecAACProfile:I

.field private mediacodecAACSampleRate:I

.field private mediacodecAVCColorFormat:I

.field private mediacodecAVCFrameRate:I

.field private mediacodecAVCIFrameInterval:I

.field private mediacodecAVCProfile:I

.field private mediacodecAVClevel:I

.field private mediacodecVideoHeight:I

.field private mediacodecVideoWidth:I

.field private previewBufferSize:I

.field private previewColorFormat:I

.field private previewMaxFps:I

.field private previewMinFps:I

.field private previewVideoHeight:I

.field private previewVideoWidth:I

.field private printDetailMsg:Z

.field private renderingMode:I

.field private rtmpAddr:Ljava/lang/String;

.field private senderQueueLength:I

.field private videoBufferQueueNum:I

.field private videoFPS:I

.field private videoGOP:I

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/livestreaming/model/RESCoreParameters;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->done:Z

    .line 75
    iput-boolean v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->printDetailMsg:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->filterMode:I

    .line 77
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoWidth:I

    .line 78
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoHeight:I

    .line 79
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoFPS:I

    const/4 v1, 0x1

    .line 80
    iput v1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoGOP:I

    .line 81
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewColorFormat:I

    .line 82
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCColorFormat:I

    .line 83
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacdoecAVCBitRate:I

    .line 84
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoBufferQueueNum:I

    .line 85
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioBufferQueueNum:I

    .line 86
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCFrameRate:I

    .line 87
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCIFrameInterval:I

    .line 88
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCProfile:I

    .line 89
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVClevel:I

    .line 90
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACProfile:I

    .line 91
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACSampleRate:I

    .line 92
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACChannelCount:I

    .line 93
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACBitRate:I

    .line 94
    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACMaxInputSize:I

    return-void
.end method


# virtual methods
.method public copy(Lcom/powervision/livestreaming/model/RESCoreParameters;)V
    .locals 1

    .line 445
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoWidth:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoWidth:I

    .line 446
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoHeight:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoHeight:I

    .line 447
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacdoecAVCBitRate:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacdoecAVCBitRate:I

    .line 448
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCFrameRate:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCFrameRate:I

    .line 449
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCIFrameInterval:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCIFrameInterval:I

    .line 450
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->senderQueueLength:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->senderQueueLength:I

    .line 451
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACBitRate:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACBitRate:I

    .line 452
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACChannelCount:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACChannelCount:I

    .line 453
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACSampleRate:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACSampleRate:I

    .line 454
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->cropRatio:F

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->cropRatio:F

    .line 455
    iget v0, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoWidth:I

    iput v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoWidth:I

    .line 456
    iget p1, p1, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoHeight:I

    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoHeight:I

    return-void
.end method

.method public dump()V
    .locals 2

    .line 98
    sget-object v0, Lcom/powervision/livestreaming/model/RESCoreParameters;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAudioBufferQueueNum()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioBufferQueueNum:I

    return v0
.end method

.method public getAudioRecoderBufferSize()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderBufferSize:I

    return v0
.end method

.method public getAudioRecoderChannelConfig()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderChannelConfig:I

    return v0
.end method

.method public getAudioRecoderFormat()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderFormat:I

    return v0
.end method

.method public getAudioRecoderSliceSize()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderSliceSize:I

    return v0
.end method

.method public getAudioRecoderSource()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderSource:I

    return v0
.end method

.method public getBackCameraDirectionMode()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->backCameraDirectionMode:I

    return v0
.end method

.method public getCropRatio()F
    .locals 1

    .line 236
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->cropRatio:F

    return v0
.end method

.method public getFilterMode()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->filterMode:I

    return v0
.end method

.method public getFrontCameraDirectionMode()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->frontCameraDirectionMode:I

    return v0
.end method

.method public getMediacdoecAVCBitRate()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacdoecAVCBitRate:I

    return v0
.end method

.method public getMediacodecAACBitRate()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACBitRate:I

    return v0
.end method

.method public getMediacodecAACChannelCount()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACChannelCount:I

    return v0
.end method

.method public getMediacodecAACMaxInputSize()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACMaxInputSize:I

    return v0
.end method

.method public getMediacodecAACProfile()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACProfile:I

    return v0
.end method

.method public getMediacodecAACSampleRate()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACSampleRate:I

    return v0
.end method

.method public getMediacodecAVCColorFormat()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCColorFormat:I

    return v0
.end method

.method public getMediacodecAVCFrameRate()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCFrameRate:I

    return v0
.end method

.method public getMediacodecAVCIFrameInterval()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCIFrameInterval:I

    return v0
.end method

.method public getMediacodecAVCProfile()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCProfile:I

    return v0
.end method

.method public getMediacodecAVClevel()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVClevel:I

    return v0
.end method

.method public getMediacodecVideoHeight()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoHeight:I

    return v0
.end method

.method public getMediacodecVideoWidth()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoWidth:I

    return v0
.end method

.method public getPreviewBufferSize()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewBufferSize:I

    return v0
.end method

.method public getPreviewColorFormat()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewColorFormat:I

    return v0
.end method

.method public getPreviewMaxFps()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewMaxFps:I

    return v0
.end method

.method public getPreviewMinFps()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewMinFps:I

    return v0
.end method

.method public getPreviewVideoHeight()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewVideoHeight:I

    return v0
.end method

.method public getPreviewVideoWidth()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewVideoWidth:I

    return v0
.end method

.method public getRenderingMode()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->renderingMode:I

    return v0
.end method

.method public getRtmpAddr()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->rtmpAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderQueueLength()I
    .locals 1

    .line 420
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->senderQueueLength:I

    return v0
.end method

.method public getVideoBufferQueueNum()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoBufferQueueNum:I

    return v0
.end method

.method public getVideoFPS()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoFPS:I

    return v0
.end method

.method public getVideoGOP()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoGOP:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoWidth:I

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->done:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->isPortrait:Z

    return v0
.end method

.method public isPrintDetailMsg()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->printDetailMsg:Z

    return v0
.end method

.method public setAudioBufferQueueNum(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioBufferQueueNum:I

    return-void
.end method

.method public setAudioRecoderBufferSize(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderBufferSize:I

    return-void
.end method

.method public setAudioRecoderChannelConfig(I)V
    .locals 0

    .line 304
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderChannelConfig:I

    return-void
.end method

.method public setAudioRecoderFormat(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderFormat:I

    return-void
.end method

.method public setAudioRecoderSliceSize(I)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderSliceSize:I

    return-void
.end method

.method public setAudioRecoderSource(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->audioRecoderSource:I

    return-void
.end method

.method public setBackCameraDirectionMode(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->backCameraDirectionMode:I

    return-void
.end method

.method public setCropRatio(F)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->cropRatio:F

    return-void
.end method

.method public setDone(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->done:Z

    return-void
.end method

.method public setFilterMode(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->filterMode:I

    return-void
.end method

.method public setFrontCameraDirectionMode(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->frontCameraDirectionMode:I

    return-void
.end method

.method public setMediacdoecAVCBitRate(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacdoecAVCBitRate:I

    return-void
.end method

.method public setMediacodecAACBitRate(I)V
    .locals 0

    .line 408
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACBitRate:I

    return-void
.end method

.method public setMediacodecAACChannelCount(I)V
    .locals 0

    .line 400
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACChannelCount:I

    return-void
.end method

.method public setMediacodecAACMaxInputSize(I)V
    .locals 0

    .line 416
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACMaxInputSize:I

    return-void
.end method

.method public setMediacodecAACProfile(I)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACProfile:I

    return-void
.end method

.method public setMediacodecAACSampleRate(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAACSampleRate:I

    return-void
.end method

.method public setMediacodecAVCColorFormat(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCColorFormat:I

    return-void
.end method

.method public setMediacodecAVCFrameRate(I)V
    .locals 0

    .line 352
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCFrameRate:I

    return-void
.end method

.method public setMediacodecAVCIFrameInterval(I)V
    .locals 0

    .line 360
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCIFrameInterval:I

    return-void
.end method

.method public setMediacodecAVCProfile(I)V
    .locals 0

    .line 368
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVCProfile:I

    return-void
.end method

.method public setMediacodecAVClevel(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecAVClevel:I

    return-void
.end method

.method public setMediacodecVideoHeight(I)V
    .locals 0

    .line 441
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoHeight:I

    return-void
.end method

.method public setMediacodecVideoWidth(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->mediacodecVideoWidth:I

    return-void
.end method

.method public setPortrait(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->isPortrait:Z

    return-void
.end method

.method public setPreviewBufferSize(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewBufferSize:I

    return-void
.end method

.method public setPreviewColorFormat(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewColorFormat:I

    return-void
.end method

.method public setPreviewMaxFps(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewMaxFps:I

    return-void
.end method

.method public setPreviewMinFps(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewMinFps:I

    return-void
.end method

.method public setPreviewVideoHeight(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewVideoHeight:I

    return-void
.end method

.method public setPreviewVideoWidth(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->previewVideoWidth:I

    return-void
.end method

.method public setPrintDetailMsg(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->printDetailMsg:Z

    return-void
.end method

.method public setRenderingMode(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->renderingMode:I

    return-void
.end method

.method public setRtmpAddr(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->rtmpAddr:Ljava/lang/String;

    return-void
.end method

.method public setSenderQueueLength(I)V
    .locals 0

    .line 424
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->senderQueueLength:I

    return-void
.end method

.method public setVideoBufferQueueNum(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoBufferQueueNum:I

    return-void
.end method

.method public setVideoFPS(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoFPS:I

    return-void
.end method

.method public setVideoGOP(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoGOP:I

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoHeight:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/powervision/livestreaming/model/RESCoreParameters;->videoWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResParameter:"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 106
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 107
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
