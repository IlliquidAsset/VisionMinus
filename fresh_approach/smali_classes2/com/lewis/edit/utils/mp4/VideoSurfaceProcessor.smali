.class public Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;
.super Ljava/lang/Object;
.source "VideoSurfaceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;,
        Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;
    }
.end annotation


# static fields
.field private static final ENCODER_SUCCESS_FLAG:I = 0x3e8


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private mEncoderHandler:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;

.field private mGLThreadFlag:Z

.field private mObservableArray:Lcom/lewis/edit/utils/mp4/ObservableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewis/edit/utils/mp4/ObservableArray<",
            "Lcom/lewis/edit/utils/mp4/RenderBean;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

.field private mWorkEncoderListener:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;-><init>(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$1;)V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mEncoderHandler:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;

    .line 34
    new-instance v0, Lcom/lewis/edit/utils/mp4/ObservableArray;

    invoke-direct {v0}, Lcom/lewis/edit/utils/mp4/ObservableArray;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mObservableArray:Lcom/lewis/edit/utils/mp4/ObservableArray;

    return-void
.end method

.method static synthetic access$100(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    return p0
.end method

.method static synthetic access$200(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mWorkEncoderListener:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;

    return-object p0
.end method

.method private destroyGL(Lcom/lewis/edit/utils/mp4/EglHelper;)V
    .locals 4

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    .line 173
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/EglHelper;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 174
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/EglHelper;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/EglHelper;->getDefaultContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 175
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/EglHelper;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    return-void
.end method

.method private glRun()V
    .locals 12

    .line 92
    new-instance v0, Lcom/lewis/edit/utils/mp4/EglHelper;

    invoke-direct {v0}, Lcom/lewis/edit/utils/mp4/EglHelper;-><init>()V

    .line 93
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/lewis/edit/utils/mp4/EglHelper;->createGLESWithSurface(Ljava/lang/Object;)Z

    move-result v1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-vsp-glRun-0 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {v2}, Lcom/lewis/edit/utils/ShaderHelper;->createTextureID(Z)I

    move-result v1

    .line 100
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 102
    iget-object v5, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

    invoke-interface {v5, v3}, Lcom/lewis/edit/utils/mp4/ITextureProvider;->open(Landroid/graphics/SurfaceTexture;)Landroid/graphics/Point;

    move-result-object v5

    .line 103
    iget v6, v5, Landroid/graphics/Point;->x:I

    if-lez v6, :cond_3

    iget v6, v5, Landroid/graphics/Point;->y:I

    if-gtz v6, :cond_1

    goto/16 :goto_1

    .line 113
    :cond_1
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 114
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 115
    iget-object v7, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 116
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sur-vsp-glRun-2-1-width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v8, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sur-vsp-glRun-2-2-height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    new-instance v7, Lcom/lewis/edit/utils/mp4/WrapRenderer;

    invoke-direct {v7}, Lcom/lewis/edit/utils/mp4/WrapRenderer;-><init>()V

    .line 122
    invoke-virtual {v7}, Lcom/lewis/edit/utils/mp4/WrapRenderer;->create()V

    .line 123
    invoke-virtual {v7, v6, v5}, Lcom/lewis/edit/utils/mp4/WrapRenderer;->sizeChanged(II)V

    .line 124
    invoke-virtual {v7}, Lcom/lewis/edit/utils/mp4/WrapRenderer;->setVertexMatrix()V

    .line 125
    new-instance v8, Lcom/lewis/edit/utils/mp4/FrameBufferTool;

    invoke-direct {v8}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;-><init>()V

    .line 128
    new-instance v9, Lcom/lewis/edit/utils/mp4/RenderBean;

    invoke-direct {v9}, Lcom/lewis/edit/utils/mp4/RenderBean;-><init>()V

    .line 129
    invoke-virtual {v9, v0}, Lcom/lewis/edit/utils/mp4/RenderBean;->setEgl(Lcom/lewis/edit/utils/mp4/EglHelper;)V

    .line 130
    invoke-virtual {v9, v6}, Lcom/lewis/edit/utils/mp4/RenderBean;->setSourceWidth(I)V

    .line 131
    invoke-virtual {v9, v5}, Lcom/lewis/edit/utils/mp4/RenderBean;->setSourceHeight(I)V

    .line 132
    invoke-virtual {v9, v4}, Lcom/lewis/edit/utils/mp4/RenderBean;->setEndFlag(Z)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/lewis/edit/utils/mp4/RenderBean;->setThreadId(J)V

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sur-vsp-glRun-3-rb = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_0
    iget-object v10, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

    invoke-interface {v10}, Lcom/lewis/edit/utils/mp4/ITextureProvider;->frame()Z

    move-result v10

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    if-eqz v10, :cond_2

    const-string v10, "sur-vsp-glRun-4"

    new-array v11, v4, [Ljava/lang/Object;

    .line 137
    invoke-static {v10, v11}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 139
    invoke-virtual {v7}, Lcom/lewis/edit/utils/mp4/WrapRenderer;->getTextureMatrix()[F

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 140
    invoke-virtual {v8, v6, v5}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->bindFrameBuffer(II)I

    .line 141
    invoke-static {v4, v4, v6, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 142
    invoke-virtual {v7, v1}, Lcom/lewis/edit/utils/mp4/WrapRenderer;->draw(I)V

    .line 143
    invoke-virtual {v8}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->unBindFrameBuffer()V

    .line 145
    invoke-virtual {v8}, Lcom/lewis/edit/utils/mp4/FrameBufferTool;->getCacheTextureId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/lewis/edit/utils/mp4/RenderBean;->setTextureId(I)V

    .line 147
    iget-object v10, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

    invoke-interface {v10}, Lcom/lewis/edit/utils/mp4/ITextureProvider;->getTimeStamp()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/lewis/edit/utils/mp4/RenderBean;->setTimeStamp(J)V

    .line 148
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/lewis/edit/utils/mp4/RenderBean;->setTextureTime(J)V

    .line 149
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sur-vsp-glRun-5-1-rb = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v10, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mObservableArray:Lcom/lewis/edit/utils/mp4/ObservableArray;

    invoke-virtual {v10, v9}, Lcom/lewis/edit/utils/mp4/ObservableArray;->notify(Ljava/lang/Object;)V

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sur-vsp-glRun-5-2-rb = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_1
    invoke-virtual {v9, v2}, Lcom/lewis/edit/utils/mp4/RenderBean;->setEndFlag(Z)V

    .line 156
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mObservableArray:Lcom/lewis/edit/utils/mp4/ObservableArray;

    invoke-virtual {v2, v9}, Lcom/lewis/edit/utils/mp4/ObservableArray;->notify(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v7}, Lcom/lewis/edit/utils/mp4/WrapRenderer;->destroy()V

    .line 158
    invoke-direct {p0, v0}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->destroyGL(Lcom/lewis/edit/utils/mp4/EglHelper;)V

    .line 159
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

    invoke-interface {v0}, Lcom/lewis/edit/utils/mp4/ITextureProvider;->close()V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-vsp-glRun-6-1-rb = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-vsp-glRun-6-2-rb = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mEncoderHandler:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$EncoderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 119
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 105
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->destroyGL(Lcom/lewis/edit/utils/mp4/EglHelper;)V

    .line 106
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "sur-vsp-glRun-1-1"

    new-array v2, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "sur-vsp-glRun-1-2"

    new-array v2, v4, [Ljava/lang/Object;

    .line 109
    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public static synthetic lambda$tiCNpiQW3L1wkVcgCCDCn4eoZkM(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->glRun()V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/lewis/edit/utils/mp4/IObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewis/edit/utils/mp4/IObserver<",
            "Lcom/lewis/edit/utils/mp4/RenderBean;",
            ">;)V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mObservableArray:Lcom/lewis/edit/utils/mp4/ObservableArray;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/ObservableArray;->addObserver(Lcom/lewis/edit/utils/mp4/IObserver;)V

    return-void
.end method

.method public setTextureProvider(Lcom/lewis/edit/utils/mp4/ITextureProvider;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

    return-void
.end method

.method public setWorkEncoderListener(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mWorkEncoderListener:Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor$WorkEncoderListener;

    return-void
.end method

.method public start()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-boolean v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

    if-nez v1, :cond_0

    .line 52
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    const-string v1, "sur-vsp-start-1"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {v1, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/lewis/edit/utils/mp4/-$$Lambda$VideoSurfaceProcessor$tiCNpiQW3L1wkVcgCCDCn4eoZkM;

    invoke-direct {v3, p0}, Lcom/lewis/edit/utils/mp4/-$$Lambda$VideoSurfaceProcessor$tiCNpiQW3L1wkVcgCCDCn4eoZkM;-><init>(Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const-string v1, "sur-vsp-start-2"

    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 63
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 66
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-boolean v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mGLThreadFlag:Z

    .line 76
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->mProvider:Lcom/lewis/edit/utils/mp4/ITextureProvider;

    invoke-interface {v2}, Lcom/lewis/edit/utils/mp4/ITextureProvider;->close()V

    const-string v2, "sur-vsp-stop-1"

    new-array v3, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v2, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/VideoSurfaceProcessor;->LOCK:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    const-string v2, "sur-vsp-stop-2"

    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-static {v2, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 82
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 85
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
