.class public Lcom/appunite/ffmpeg/MGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/appunite/ffmpeg/FFmpegDisplay;


# static fields
.field private static final TAG:Ljava/lang/String; = "MGLSurfaceView"


# instance fields
.field private context:Landroid/content/Context;

.field private isDestroyKeepRender:Z

.field private isStart:Z

.field private mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

.field private normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

.field surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->isStart:Z

    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->isDestroyKeepRender:Z

    .line 38
    iput-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addSurface()V
    .locals 3

    .line 90
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    invoke-virtual {v1}, Lcom/appunite/ffmpeg/NormalVideo;->getTextureID()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 91
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 92
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    .line 93
    iget-object v1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderSurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 115
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 119
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4100

    .line 123
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 125
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    iget-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-virtual {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getVrmode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appunite/ffmpeg/NormalVideo;->setShader(I)V

    .line 126
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-virtual {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getVrmode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, p1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 129
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    invoke-virtual {p1}, Lcom/appunite/ffmpeg/NormalVideo;->DrawSelf()V

    .line 131
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {p1, v0, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 132
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    invoke-virtual {p1}, Lcom/appunite/ffmpeg/NormalVideo;->DrawSelf()V

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->getHeight()I

    move-result v1

    invoke-static {v0, v0, p1, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 135
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    invoke-virtual {p1}, Lcom/appunite/ffmpeg/NormalVideo;->DrawSelf()V

    :goto_1
    return-void

    .line 121
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPause()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    const-string v0, "MGLSurfaceView"

    const-string v1, "onPause: "

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const-string v0, "MGLSurfaceView"

    const-string v1, "onResume: "

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    if-eqz p1, :cond_2

    const-string p1, "MGLSurfaceView"

    const-string p2, "lbg onSurfaceChanged create surface"

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    invoke-virtual {p2}, Lcom/appunite/ffmpeg/NormalVideo;->getTextureID()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 72
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 73
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    .line 74
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget p1, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iput p3, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iput p3, p1, Lcom/appunite/ffmpeg/FFmpegPlayer;->playstatus:I

    .line 85
    :goto_0
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    iget-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    invoke-virtual {p1, p2, p3}, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderSurface(Landroid/view/Surface;I)V

    :cond_2
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const-string p1, "MGLSurfaceView"

    const-string p2, "lbg onSurfaceCreated"

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    if-eqz p1, :cond_0

    .line 46
    new-instance p2, Lcom/appunite/ffmpeg/NormalVideo;

    iget-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->getVrmode()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/appunite/ffmpeg/NormalVideo;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    .line 47
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->normalVideo:Lcom/appunite/ffmpeg/NormalVideo;

    invoke-virtual {p2}, Lcom/appunite/ffmpeg/NormalVideo;->getTextureID()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 48
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 50
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    .line 51
    iget-object p2, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderSurface(Landroid/view/Surface;I)V

    :cond_0
    return-void
.end method

.method public setConfig(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x2

    .line 148
    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/MGLSurfaceView;->setEGLContextClientVersion(I)V

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/MGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 150
    invoke-virtual {p0, p0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1}, Lcom/appunite/ffmpeg/MGLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public setDestroyKeepRender(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->isDestroyKeepRender:Z

    return-void
.end method

.method public setMpegPlayer(Lcom/appunite/ffmpeg/FFmpegPlayer;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/appunite/ffmpeg/MGLSurfaceView;->setConfig(Landroid/content/Context;)V

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "MGLSurfaceView"

    const-string v1, "surfaceDestroyed"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->isDestroyKeepRender:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appunite/ffmpeg/FFmpegPlayer;->setGlSurfaceView(Lcom/appunite/ffmpeg/MGLSurfaceView;)V

    .line 103
    iget-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-virtual {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->pause()V

    .line 104
    iget-object v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->mMpegPlayer:Lcom/appunite/ffmpeg/FFmpegPlayer;

    invoke-virtual {v0}, Lcom/appunite/ffmpeg/FFmpegPlayer;->renderStop()V

    .line 106
    iput-object v1, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->surface:Landroid/view/Surface;

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/appunite/ffmpeg/MGLSurfaceView;->isDestroyKeepRender:Z

    .line 110
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
