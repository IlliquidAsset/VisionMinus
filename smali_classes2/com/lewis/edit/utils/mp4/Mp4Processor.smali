.class public Lcom/lewis/edit/utils/mp4/Mp4Processor;
.super Ljava/lang/Object;
.source "Mp4Processor.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/ColorMixingInterface;


# instance fields
.field private mMediaMux:Lcom/lewis/edit/utils/mp4/IHardStore;

.field private mSurfaceEncoder:Lcom/lewis/edit/utils/mp4/SurfaceEncoder;

.field private mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

.field private mTextureProcessor:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lewis/edit/utils/mp4/StrengthenMp4MuxStore;-><init>(Z)V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mMediaMux:Lcom/lewis/edit/utils/mp4/IHardStore;

    .line 17
    new-instance v0, Lcom/lewis/edit/utils/mp4/SurfaceShower;

    invoke-direct {v0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

    .line 20
    new-instance v0, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;

    invoke-direct {v0}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceEncoder:Lcom/lewis/edit/utils/mp4/SurfaceEncoder;

    .line 21
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mMediaMux:Lcom/lewis/edit/utils/mp4/IHardStore;

    invoke-virtual {v0, v1}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->setStore(Lcom/lewis/edit/utils/mp4/IHardStore;)V

    .line 22
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceEncoder:Lcom/lewis/edit/utils/mp4/SurfaceEncoder;

    invoke-static {p1}, Lcom/lewis/edit/utils/mp4/MediaInfoConfig;->getInputMediaConfig(Ljava/lang/String;)Lcom/lewis/edit/utils/mp4/MediaInfoConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->setConfig(Lcom/lewis/edit/utils/mp4/MediaInfoConfig;)V

    .line 25
    new-instance v0, Lcom/lewis/edit/utils/mp4/Mp4Provider;

    invoke-direct {v0, p1}, Lcom/lewis/edit/utils/mp4/Mp4Provider;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mMediaMux:Lcom/lewis/edit/utils/mp4/IHardStore;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/Mp4Provider;->setStore(Lcom/lewis/edit/utils/mp4/IHardStore;)V

    .line 29
    new-instance p1, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;

    invoke-direct {p1}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mTextureProcessor:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;

    .line 30
    invoke-virtual {p1, p2}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->setWorkEncoderListener(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;)V

    .line 31
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mTextureProcessor:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->setTextureProvider(Lcom/lewis/edit/utils/mp4/ITextureProvider;)V

    .line 32
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mTextureProcessor:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;

    iget-object p2, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceEncoder:Lcom/lewis/edit/utils/mp4/SurfaceEncoder;

    invoke-virtual {p1, p2}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->addObserver(Lcom/lewis/edit/utils/mp4/IObserver;)V

    return-void
.end method


# virtual methods
.method public setBrightness(F)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setBrightness(F)V

    return-void
.end method

.method public setColorMixingData(FFFFFF)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setBrightness(F)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setContrast(F)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setSaturation(F)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setColorTem(F)V

    .line 61
    invoke-virtual {p0, p5}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setVignette(F)V

    .line 62
    invoke-virtual {p0, p6}, Lcom/lewis/edit/utils/mp4/Mp4Processor;->setSharpness(F)V

    return-void
.end method

.method public setColorTem(F)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setColorTem(F)V

    return-void
.end method

.method public setContrast(F)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setContrast(F)V

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mMediaMux:Lcom/lewis/edit/utils/mp4/IHardStore;

    invoke-interface {v0, p1}, Lcom/lewis/edit/utils/mp4/IHardStore;->setOutputPath(Ljava/lang/String;)V

    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setSaturation(F)V

    return-void
.end method

.method public setSharpness(F)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setSharpness(F)V

    return-void
.end method

.method public setVignette(F)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceShower:Lcom/lewis/edit/utils/mp4/SurfaceShower;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->setVignette(F)V

    return-void
.end method

.method public startVideoEncoder()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mSurfaceEncoder:Lcom/lewis/edit/utils/mp4/SurfaceEncoder;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/SurfaceEncoder;->open()V

    .line 49
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/Mp4Processor;->mTextureProcessor:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->start()V

    return-void
.end method
