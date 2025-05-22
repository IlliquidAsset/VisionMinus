.class Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;
.super Landroid/os/Handler;
.source "RESVideoCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/core/RESVideoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoGLHandler"
.end annotation


# static fields
.field static final WHAT_DRAW:I = 0x4

.field static final WHAT_FRAME:I = 0x3

.field static final WHAT_INIT:I = 0x1

.field static final WHAT_RESET_BITRATE:I = 0x300

.field static final WHAT_RESET_VIDEO:I = 0x5

.field static final WHAT_START_PLAY:I = 0x10

.field static final WHAT_START_STREAMING:I = 0x100

.field static final WHAT_STOP_PLAY:I = 0x20

.field static final WHAT_STOP_STREAMING:I = 0x200

.field static final WHAT_UNINIT:I = 0x2


# instance fields
.field private camera2dTextureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private cameraTextureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private drawIndecesBuffer:Ljava/nio/ShortBuffer;

.field public dropNextFrame:Z

.field private frameBuffer:I

.field private frameBufferTexture:I

.field private frameNum:I

.field hasNewFrame:Z

.field private mTextureViewSize:Landroid/util/Size;

.field private mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

.field private mediaCodecTextureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

.field private playerSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private sample2DFrameBuffer:I

.field private sample2DFrameBufferTexture:I

.field private screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

.field private screenSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private screenTextureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private shapeVerticesBuffer:Ljava/nio/FloatBuffer;

.field private final syncCameraTextureVerticesBuffer:Ljava/lang/Object;

.field private final syncFrameNum:Ljava/lang/Object;

.field private final syncPlayerSurfaceTex:Ljava/lang/Object;

.field private final syncScreenSurfaceTex:Ljava/lang/Object;

.field final synthetic this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

.field private videoSenderThread:Lcom/powervision/livestreaming/core/VideoSenderThread;


# direct methods
.method public constructor <init>(Lcom/powervision/livestreaming/core/RESVideoCore;Landroid/os/Looper;)V
    .locals 1

    .line 293
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    .line 294
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 262
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x780

    const/16 v0, 0x438

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    .line 263
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncFrameNum:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 264
    iput p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameNum:I

    .line 266
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncPlayerSurfaceTex:Ljava/lang/Object;

    .line 267
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncScreenSurfaceTex:Ljava/lang/Object;

    .line 283
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncCameraTextureVerticesBuffer:Ljava/lang/Object;

    .line 290
    iput-boolean p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->hasNewFrame:Z

    .line 291
    iput-boolean p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->dropNextFrame:Z

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    .line 296
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    .line 297
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->initBuffer()V

    return-void
.end method

.method private doGLDraw()V
    .locals 4

    const/4 v0, 0x0

    .line 542
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 543
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 544
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawIndecesBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawIndecesBuffer:Ljava/nio/ShortBuffer;

    const/4 v2, 0x4

    const/16 v3, 0x1403

    invoke-static {v2, v0, v3, v1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method private drawFrameBuffer()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V

    .line 495
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawOriginFrameBuffer()V

    return-void
.end method

.method private drawMediaCodec(J)V
    .locals 6

    .line 499
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    if-eqz v0, :cond_1

    .line 500
    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/MediaCodecGLWapper;)V

    .line 501
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 502
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 503
    iget v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBufferTexture:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 504
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawTextureLoc:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 505
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawPostionLoc:I

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v3, v3, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawTextureCoordLoc:I

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->shapeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v3, v4, v5}, Lcom/powervision/livestreaming/core/GLHelper;->enableVertex(IILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 507
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->doGLDraw()V

    .line 508
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 509
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawPostionLoc:I

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v3, v3, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawTextureCoordLoc:I

    invoke-static {v0, v3}, Lcom/powervision/livestreaming/core/GLHelper;->disableVertex(II)V

    .line 510
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 511
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 512
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 513
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object p1, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object p2, p2, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglSwapBuffers,failed!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private drawOriginFrameBuffer()V
    .locals 8

    .line 475
    iget v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBuffer:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 476
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 477
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 478
    iget v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBufferTexture:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 479
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camTextureLoc:I

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 480
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncCameraTextureVerticesBuffer:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v4, v4, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camPostionLoc:I

    iget-object v5, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v5, v5, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camTextureCoordLoc:I

    iget-object v6, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->shapeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->cameraTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v5, v6, v7}, Lcom/powervision/livestreaming/core/GLHelper;->enableVertex(IILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 483
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v0, v0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v0

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v4, v4, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v4}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v4

    invoke-static {v3, v3, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 485
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->doGLDraw()V

    .line 486
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 487
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camPostionLoc:I

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v4, v4, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camTextureCoordLoc:I

    invoke-static {v0, v4}, Lcom/powervision/livestreaming/core/GLHelper;->disableVertex(II)V

    .line 488
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 489
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 490
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void

    :catchall_0
    move-exception v1

    .line 483
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private drawSample2DFrameBuffer(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .line 451
    iget v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBuffer:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 452
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 453
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 456
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$1100(Lcom/powervision/livestreaming/core/RESVideoCore;)I

    move-result v0

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 457
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dTextureLoc:I

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 458
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncCameraTextureVerticesBuffer:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v4, v4, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dPostionLoc:I

    iget-object v5, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v5, v5, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dTextureCoordLoc:I

    iget-object v6, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->shapeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->camera2dTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v5, v6, v7}, Lcom/powervision/livestreaming/core/GLHelper;->enableVertex(IILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 463
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 464
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget p1, p1, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dTextureMatrix:I

    const/4 v4, 0x1

    invoke-static {p1, v4, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 465
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object p1, p1, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result p1

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v0, v0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v0}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v0

    invoke-static {v3, v3, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 466
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->doGLDraw()V

    .line 467
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 468
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget p1, p1, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dPostionLoc:I

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dTextureCoordLoc:I

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/core/GLHelper;->disableVertex(II)V

    .line 469
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 470
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 471
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void

    :catchall_0
    move-exception p1

    .line 461
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private drawScreen()V
    .locals 6

    .line 520
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    if-eqz v0, :cond_1

    .line 521
    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/ScreenGLWapper;)V

    .line 522
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 523
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 524
    iget v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBufferTexture:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 525
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawTextureLoc:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 526
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawPostionLoc:I

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v3, v3, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawTextureCoordLoc:I

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->shapeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v3, v4, v5}, Lcom/powervision/livestreaming/core/GLHelper;->enableVertex(IILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 528
    invoke-static {}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawScreen: textureview width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   textureview height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 530
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->doGLDraw()V

    .line 531
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 532
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawPostionLoc:I

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v3, v3, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawTextureCoordLoc:I

    invoke-static {v0, v3}, Lcom/powervision/livestreaming/core/GLHelper;->disableVertex(II)V

    .line 533
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 534
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 535
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglSwapBuffers,failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private initBuffer()V
    .locals 2

    .line 678
    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->getShapeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->shapeVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 679
    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->getMediaCodecTextureVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 680
    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->getScreenTextureVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 681
    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->getDrawIndecesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawIndecesBuffer:Ljava/nio/ShortBuffer;

    .line 682
    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->getCameraTextureVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->cameraTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 684
    invoke-static {v0, v1}, Lcom/powervision/livestreaming/core/GLHelper;->getCamera2DTextureVerticesBuffer(IF)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->camera2dTextureVerticesBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private initMediaCodecGL(Landroid/view/Surface;)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    invoke-direct {v0}, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    .line 634
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, p1}, Lcom/powervision/livestreaming/core/GLHelper;->initMediaCodecGL(Lcom/powervision/livestreaming/model/MediaCodecGLWapper;Landroid/opengl/EGLContext;Landroid/view/Surface;)V

    .line 635
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/MediaCodecGLWapper;)V

    const p1, 0x8d65

    .line 636
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 637
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->createMediaCodecProgram()I

    move-result v0

    iput v0, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawProgram:I

    .line 638
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget p1, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 639
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawProgram:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawTextureLoc:I

    .line 640
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawPostionLoc:I

    .line 641
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawTextureCoordLoc:I

    return-void

    .line 643
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "initMediaCodecGL without uninitMediaCodecGL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initOffScreenGL()V
    .locals 5

    .line 548
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    invoke-direct {v0}, Lcom/powervision/livestreaming/model/OffScreenGLWapper;-><init>()V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    .line 550
    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->initOffScreenGL(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V

    .line 551
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V

    .line 553
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->createCameraProgram()I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camProgram:I

    .line 554
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 555
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camTextureLoc:I

    .line 556
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camProgram:I

    const-string v3, "aPosition"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camPostionLoc:I

    .line 557
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camProgram:I

    const-string v4, "aTextureCoord"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camTextureCoordLoc:I

    .line 559
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->createCamera2DProgram()I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    .line 560
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 561
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dTextureLoc:I

    .line 562
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dPostionLoc:I

    .line 563
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dTextureCoordLoc:I

    .line 564
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    const-string v2, "uTextureMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dTextureMatrix:I

    .line 565
    invoke-static {}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOffScreenGL: videoWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, v2, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   videoHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, v2, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 567
    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, v2, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v3, v3, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v3}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/powervision/livestreaming/core/GLHelper;->createCamFrameBuff([I[III)V

    const/4 v2, 0x0

    .line 568
    aget v3, v1, v2

    iput v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBuffer:I

    .line 569
    aget v3, v0, v2

    iput v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBufferTexture:I

    .line 570
    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v3, v3, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v3}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v3

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v4, v4, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v4}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v4

    invoke-static {v1, v0, v3, v4}, Lcom/powervision/livestreaming/core/GLHelper;->createCamFrameBuff([I[III)V

    .line 571
    aget v1, v1, v2

    iput v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBuffer:I

    .line 572
    aget v0, v0, v2

    iput v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBufferTexture:I

    return-void

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initOffScreenGL without uninitOffScreenGL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initScreenGL(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncScreenSurfaceTex:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    if-nez v1, :cond_0

    .line 602
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 603
    new-instance p1, Lcom/powervision/livestreaming/model/ScreenGLWapper;

    invoke-direct {p1}, Lcom/powervision/livestreaming/model/ScreenGLWapper;-><init>()V

    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    .line 604
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {p1, v1, v2}, Lcom/powervision/livestreaming/core/GLHelper;->initScreenGL(Lcom/powervision/livestreaming/model/ScreenGLWapper;Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V

    .line 605
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/ScreenGLWapper;)V

    .line 606
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    invoke-static {}, Lcom/powervision/livestreaming/core/GLHelper;->createScreenProgram()I

    move-result v1

    iput v1, p1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawProgram:I

    .line 607
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget p1, p1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 608
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v1, v1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawTextureLoc:I

    .line 609
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v1, v1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawPostionLoc:I

    .line 610
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v1, v1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawTextureCoordLoc:I

    .line 614
    monitor-exit v0

    return-void

    .line 612
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "initScreenGL without unInitScreenGL"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 599
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "initScreenGL without screenSurfaceTexture"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 614
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resetFrameBuff()V
    .locals 6

    .line 662
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 663
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBuffer:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    new-array v1, v0, [I

    .line 664
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBufferTexture:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 665
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBuffer:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    new-array v1, v0, [I

    .line 666
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBufferTexture:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 668
    invoke-static {}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetFrameBuff: videoWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v5, v5, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v5}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   videoHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v5, v5, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v5}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, v2, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v2

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v4, v4, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v4}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v4

    invoke-static {v1, v0, v2, v4}, Lcom/powervision/livestreaming/core/GLHelper;->createCamFrameBuff([I[III)V

    .line 670
    aget v2, v1, v3

    iput v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBuffer:I

    .line 671
    aget v2, v0, v3

    iput v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBufferTexture:I

    .line 672
    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, v2, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v2

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v4, v4, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {v4}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v4

    invoke-static {v1, v0, v2, v4}, Lcom/powervision/livestreaming/core/GLHelper;->createCamFrameBuff([I[III)V

    .line 673
    aget v1, v1, v3

    iput v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBuffer:I

    .line 674
    aget v0, v0, v3

    iput v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBufferTexture:I

    return-void
.end method

.method private uninitMediaCodecGL()V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    if-eqz v0, :cond_0

    .line 649
    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/MediaCodecGLWapper;)V

    .line 650
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 651
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 652
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 653
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 654
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/MediaCodecGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    return-void

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uninitMediaCodecGL without initMediaCodecGL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uninitOffScreenGL()V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    if-eqz v0, :cond_0

    .line 580
    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V

    .line 581
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->camProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 582
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->cam2dProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 583
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBuffer:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    new-array v1, v0, [I

    .line 584
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameBufferTexture:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 585
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBuffer:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    new-array v1, v0, [I

    .line 586
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sample2DFrameBufferTexture:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 587
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 588
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 589
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 590
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/OffScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uninitOffScreenGL without initOffScreenGL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uninitScreenGL()V
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    if-eqz v0, :cond_0

    .line 619
    invoke-static {v0}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/ScreenGLWapper;)V

    .line 620
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 621
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 622
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v1, v1, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 623
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 624
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    iget-object v0, v0, Lcom/powervision/livestreaming/model/ScreenGLWapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenGLWapper:Lcom/powervision/livestreaming/model/ScreenGLWapper;

    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unInitScreenGL without initScreenGL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addFrameNum()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncFrameNum:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    iget v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameNum:I

    const/4 v1, 0x3

    .line 708
    invoke-virtual {p0, v1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->removeMessages(I)V

    .line 709
    invoke-virtual {p0, v1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 710
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 302
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/16 v2, 0x10

    if-eq v0, v2, :cond_6

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0x100

    if-eq v0, v2, :cond_2

    const/16 v1, 0x200

    if-eq v0, v1, :cond_1

    const/16 v1, 0x300

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 409
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    if-eqz v0, :cond_15

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    .line 411
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->videoSenderThread:Lcom/powervision/livestreaming/core/VideoSenderThread;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/core/VideoSenderThread;->quit()V

    .line 396
    :try_start_0
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->videoSenderThread:Lcom/powervision/livestreaming/core/VideoSenderThread;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/core/VideoSenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 398
    invoke-static {}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESHardVideoCore,stopStreaming()failed,exception:"

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 401
    :goto_0
    iput-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->videoSenderThread:Lcom/powervision/livestreaming/core/VideoSenderThread;

    .line 402
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->uninitMediaCodecGL()V

    .line 403
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 404
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 405
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1, v3}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$702(Lcom/powervision/livestreaming/core/RESVideoCore;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    goto/16 :goto_5

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v2, v0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v4}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$800(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/powervision/livestreaming/core/MediaCodecHelper;->createHardVideoMediaCodec(Lcom/powervision/livestreaming/model/RESCoreParameters;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$702(Lcom/powervision/livestreaming/core/RESVideoCore;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 378
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 379
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "create Video MediaCodec failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_4
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$800(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 384
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->initMediaCodecGL(Landroid/view/Surface;)V

    .line 385
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 386
    new-instance v0, Lcom/powervision/livestreaming/core/VideoSenderThread;

    const-string v1, "VideoSenderThread"

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;

    invoke-direct {v0, v1, v2, p1}, Lcom/powervision/livestreaming/core/VideoSenderThread;-><init>(Ljava/lang/String;Landroid/media/MediaCodec;Lcom/powervision/livestreaming/rtmp/RESFlvDataCollecter;)V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->videoSenderThread:Lcom/powervision/livestreaming/core/VideoSenderThread;

    .line 387
    invoke-virtual {v0}, Lcom/powervision/livestreaming/core/VideoSenderThread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 365
    :cond_5
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->uninitScreenGL()V

    .line 366
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 368
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_15

    .line 369
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 370
    iput-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto/16 :goto_5

    .line 360
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->initScreenGL(Landroid/graphics/SurfaceTexture;)V

    .line 361
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->updatePlayerTextureView(II)V

    goto/16 :goto_5

    .line 417
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/livestreaming/model/RESCoreParameters;

    .line 418
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v0, v0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setVideoWidth(I)V

    .line 419
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v0, v0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setVideoHeight(I)V

    .line 420
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v0, v0, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    invoke-virtual {p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getCropRatio()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/powervision/livestreaming/model/RESCoreParameters;->setCropRatio(F)V

    .line 421
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->resetFrameBuff()V

    .line 422
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mediaCodecGLWapper:Lcom/powervision/livestreaming/model/MediaCodecGLWapper;

    if-eqz p1, :cond_9

    .line 423
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->uninitMediaCodecGL()V

    .line 424
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 425
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 426
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v0, p1, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$800(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/livestreaming/core/MediaCodecHelper;->createHardVideoMediaCodec(Lcom/powervision/livestreaming/model/RESCoreParameters;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$702(Lcom/powervision/livestreaming/core/RESVideoCore;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 427
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 430
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$800(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 431
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->initMediaCodecGL(Landroid/view/Surface;)V

    .line 432
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 433
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->videoSenderThread:Lcom/powervision/livestreaming/core/VideoSenderThread;

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v0}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$700(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/livestreaming/core/VideoSenderThread;->updateMediaCodec(Landroid/media/MediaCodec;)V

    goto :goto_2

    .line 428
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "create Video MediaCodec failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$900(Lcom/powervision/livestreaming/core/RESVideoCore;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 436
    :try_start_2
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$1000(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 437
    invoke-static {}, Lcom/powervision/livestreaming/client/CallbackDelivery;->i()Lcom/powervision/livestreaming/client/CallbackDelivery;

    move-result-object p1

    new-instance v1, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;

    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$1000(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v3, v3, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    .line 438
    invoke-virtual {v3}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoWidth()I

    move-result v3

    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    iget-object v4, v4, Lcom/powervision/livestreaming/core/RESVideoCore;->resCoreParameters:Lcom/powervision/livestreaming/model/RESCoreParameters;

    .line 439
    invoke-virtual {v4}, Lcom/powervision/livestreaming/model/RESCoreParameters;->getVideoHeight()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener$RESVideoChangeRunable;-><init>(Lcom/powervision/livestreaming/core/listener/RESVideoChangeListener;II)V

    .line 437
    invoke-virtual {p1, v1}, Lcom/powervision/livestreaming/client/CallbackDelivery;->post(Ljava/lang/Runnable;)V

    .line 441
    :cond_a
    monitor-exit v0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 327
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 328
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$300(Lcom/powervision/livestreaming/core/RESVideoCore;)I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 329
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$400(Lcom/powervision/livestreaming/core/RESVideoCore;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 330
    :try_start_3
    iget-object v6, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v6}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$500(Lcom/powervision/livestreaming/core/RESVideoCore;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v6}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$600(Lcom/powervision/livestreaming/core/RESVideoCore;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_c
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_d

    .line 332
    iget-object v6, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v6}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$100(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v7}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$100(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    move-result-object v7

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 332
    invoke-virtual {v7, v2, v8}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2, v4, v5}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 337
    :cond_d
    iget-object v4, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v4}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$100(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v5}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$100(Lcom/powervision/livestreaming/core/RESVideoCore;)Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;

    move-result-object v5

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v8}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$300(Lcom/powervision/livestreaming/core/RESVideoCore;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 337
    invoke-virtual {v5, v2, v6}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    :cond_e
    :goto_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 343
    iget-boolean p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->hasNewFrame:Z

    if-eqz p1, :cond_15

    .line 344
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawFrameBuffer()V

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    .line 345
    invoke-direct {p0, v0, v1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawMediaCodec(J)V

    .line 346
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawScreen()V

    .line 347
    iput-boolean v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->hasNewFrame:Z

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 342
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 304
    :cond_f
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->offScreenGLWapper:Lcom/powervision/livestreaming/model/OffScreenGLWapper;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/GLHelper;->makeCurrent(Lcom/powervision/livestreaming/model/OffScreenGLWapper;)V

    .line 305
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncFrameNum:Ljava/lang/Object;

    monitor-enter p1

    .line 306
    :try_start_5
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncPlayerSurfaceTex:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 307
    :try_start_6
    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$200(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 308
    :goto_4
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameNum:I

    if-eqz v2, :cond_11

    .line 309
    iget-object v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {v2}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$200(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 310
    iget v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameNum:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameNum:I

    .line 311
    iget-boolean v2, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->dropNextFrame:Z

    if-nez v2, :cond_10

    .line 312
    iput-boolean v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->hasNewFrame:Z

    goto :goto_4

    .line 314
    :cond_10
    iput-boolean v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->dropNextFrame:Z

    .line 315
    iput-boolean v3, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->hasNewFrame:Z

    goto :goto_4

    .line 321
    :cond_11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 322
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 323
    iget-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->this$0:Lcom/powervision/livestreaming/core/RESVideoCore;

    invoke-static {p1}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$200(Lcom/powervision/livestreaming/core/RESVideoCore;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->drawSample2DFrameBuffer(Landroid/graphics/SurfaceTexture;)V

    goto :goto_5

    .line 319
    :cond_12
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_2
    move-exception v1

    .line 321
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1

    :catchall_3
    move-exception v0

    .line 322
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 356
    :cond_13
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->uninitOffScreenGL()V

    goto :goto_5

    .line 352
    :cond_14
    invoke-direct {p0}, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->initOffScreenGL()V

    :cond_15
    :goto_5
    return-void
.end method

.method updatePlayerTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncPlayerSurfaceTex:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->playerSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_0

    .line 690
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->playerSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    .line 691
    iput p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->frameNum:I

    const/4 p1, 0x1

    .line 692
    iput-boolean p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->dropNextFrame:Z

    .line 694
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method updatePlayerTextureView(II)V
    .locals 1

    .line 714
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    .line 715
    invoke-static {}, Lcom/powervision/livestreaming/core/RESVideoCore;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePlayerTextureView: textureview width = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   textureview height = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->mTextureViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method updateScreenTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->syncScreenSurfaceTex:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_0

    .line 700
    iput-object p1, p0, Lcom/powervision/livestreaming/core/RESVideoCore$VideoGLHandler;->screenSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 702
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
