.class Lcom/powervision/gcs/Texture/GLESTVThread;
.super Ljava/lang/Thread;
.source "GLESTVThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GLESTVThread"


# instance fields
.field private LOCK:Ljava/lang/Object;

.field listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mIsPaused:Z

.field private mNeedRenderring:Z

.field private mPendingThreadAider:Lcom/powervision/gcs/Texture/PendingThreadAider;

.field private mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

.field private mRendererMode:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/powervision/gcs/Texture/IGLESRenderer;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 29
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 30
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 35
    new-instance v0, Lcom/powervision/gcs/Texture/PendingThreadAider;

    invoke-direct {v0}, Lcom/powervision/gcs/Texture/PendingThreadAider;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mPendingThreadAider:Lcom/powervision/gcs/Texture/PendingThreadAider;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mNeedRenderring:Z

    .line 37
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->LOCK:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mIsPaused:Z

    .line 166
    iput v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRendererMode:I

    .line 41
    iput-object p1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 42
    iput-object p2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/Texture/GLESTVThread;)Lcom/powervision/gcs/Texture/IGLESRenderer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    return-object p0
.end method

.method private destoryGLESContext()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 141
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 142
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 143
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method private initGLESContext()V
    .locals 7

    .line 81
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 82
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 83
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 88
    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xf

    new-array v3, v0, [I

    .line 93
    fill-array-data v3, :array_0

    const/4 v0, 0x1

    new-array v6, v0, [I

    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 107
    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 111
    fill-array-data v1, :array_1

    .line 113
    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v5, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 115
    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v0, v0, v4

    iget-object v3, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 118
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300b

    if-ne v0, v1, :cond_3

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateWindowSurface returned  EGL_BAD_NATIVE_WINDOW. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglCreateWindowSurface failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetdisplay failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3020
        0x20
        0x3021
        0x8
        0x3022
        0x8
        0x3023
        0x8
        0x3024
        0x8
        0x3040
        0x4
        0x3033
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private pauseWhile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mNeedRenderring:Z

    .line 180
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->destoryGLESContext()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    invoke-interface {v0}, Lcom/powervision/gcs/Texture/IGLESRenderer;->onPause()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mIsPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    invoke-interface {v0}, Lcom/powervision/gcs/Texture/IGLESRenderer;->onResume()V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mIsPaused:Z

    .line 154
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->requestRender()V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mPendingThreadAider:Lcom/powervision/gcs/Texture/PendingThreadAider;

    new-instance v1, Lcom/powervision/gcs/Texture/GLESTVThread$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/gcs/Texture/GLESTVThread$1;-><init>(Lcom/powervision/gcs/Texture/GLESTVThread;II)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/Texture/PendingThreadAider;->addToPending(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .line 47
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->isInterrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "lzqSur"

    if-nez v0, :cond_3

    .line 53
    :try_start_1
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->initGLESContext()V

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    invoke-interface {v0}, Lcom/powervision/gcs/Texture/IGLESRenderer;->onSurfaceCreated()V

    .line 55
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mNeedRenderring:Z

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x1

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mPendingThreadAider:Lcom/powervision/gcs/Texture/PendingThreadAider;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/PendingThreadAider;->runPendings()V

    .line 58
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    invoke-interface {v0}, Lcom/powervision/gcs/Texture/IGLESRenderer;->onDrawFrame()V

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 62
    iget-boolean v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mIsPaused:Z

    if-eqz v0, :cond_1

    const-string v0, "pause"

    .line 63
    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->pauseWhile()V

    goto :goto_0

    .line 65
    :cond_1
    iget v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRendererMode:I

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->pauseWhile()V

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->destoryGLESContext()V

    goto :goto_1

    :cond_3
    const-string v0, "throw new InterruptedException()"

    .line 50
    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    nop

    .line 72
    invoke-direct {p0}, Lcom/powervision/gcs/Texture/GLESTVThread;->destoryGLESContext()V

    .line 73
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

    if-eqz v0, :cond_4

    .line 74
    invoke-interface {v0}, Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;->threadIsOver()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setOnGLThreadStateListener(Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/powervision/gcs/Texture/GLESTVThread;->mRendererMode:I

    return-void
.end method
