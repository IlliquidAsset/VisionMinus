.class public Lcom/lewis/edit/utils/mp4/EglHelper;
.super Ljava/lang/Object;
.source "EglHelper.java"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 16
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 17
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 22
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/EglHelper;->changeDisplay()V

    return-void
.end method

.method private attrBuild()[I
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 56
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x8
        0x3040
        0x4
        0x3033
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private changeDisplay()V
    .locals 4

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 27
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 32
    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createContext(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 79
    fill-array-data v0, :array_0

    .line 80
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    return-object p1

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public createGLESWithSurface(Ljava/lang/Object;)Z
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/lewis/edit/utils/mp4/EglHelper;->getConfig()Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-direct {p0, v0, v2}, Lcom/lewis/edit/utils/mp4/EglHelper;->createContext(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 100
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v2, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lewis/edit/utils/mp4/EglHelper;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 105
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v0, :cond_2

    return v1

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x3038

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, p1, v2, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-object p1
.end method

.method public destroySurface(Landroid/opengl/EGLSurface;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public getConfig()Landroid/opengl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    new-array v0, v0, [I

    .line 43
    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/EglHelper;->attrBuild()[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v9

    move-object v7, v0

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    const/4 v1, 0x0

    .line 46
    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 47
    aget-object v0, v9, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getDisplay()Landroid/opengl/EGLDisplay;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    return-object v0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/EglHelper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method
