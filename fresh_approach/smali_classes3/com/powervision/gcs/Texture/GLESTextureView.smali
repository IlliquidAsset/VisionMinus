.class public Lcom/powervision/gcs/Texture/GLESTextureView;
.super Landroid/view/TextureView;
.source "GLESTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I


# instance fields
.field height:I

.field listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

.field private mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

.field private mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

.field private mRendererMode:I

.field surface:Landroid/graphics/SurfaceTexture;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRendererMode:I

    .line 89
    new-instance v0, Lcom/powervision/gcs/Texture/GLESTextureView$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/Texture/GLESTextureView$1;-><init>(Lcom/powervision/gcs/Texture/GLESTextureView;)V

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

    .line 30
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/GLESTextureView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRendererMode:I

    .line 89
    new-instance p2, Lcom/powervision/gcs/Texture/GLESTextureView$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/Texture/GLESTextureView$1;-><init>(Lcom/powervision/gcs/Texture/GLESTextureView;)V

    iput-object p2, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/gcs/Texture/GLESTextureView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/GLESTVThread;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    return-object p0
.end method

.method static synthetic access$002(Lcom/powervision/gcs/Texture/GLESTextureView;Lcom/powervision/gcs/Texture/GLESTVThread;)Lcom/powervision/gcs/Texture/GLESTVThread;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/powervision/gcs/Texture/GLESTextureView;)Lcom/powervision/gcs/Texture/IGLESRenderer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/Texture/GLESTextureView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRendererMode:I

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p0}, Lcom/powervision/gcs/Texture/GLESTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->onResume()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 75
    iput-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->surface:Landroid/graphics/SurfaceTexture;

    .line 76
    iput p2, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->width:I

    .line 77
    iput p3, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->height:I

    .line 78
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/powervision/gcs/Texture/GLESTVThread;

    iget-object v1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    invoke-direct {v0, p1, v1}, Lcom/powervision/gcs/Texture/GLESTVThread;-><init>(Landroid/graphics/SurfaceTexture;Lcom/powervision/gcs/Texture/IGLESRenderer;)V

    iput-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    .line 80
    iget p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRendererMode:I

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/GLESTVThread;->setRenderMode(I)V

    .line 81
    iget-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    invoke-virtual {p1}, Lcom/powervision/gcs/Texture/GLESTVThread;->start()V

    .line 82
    iget-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->listener:Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->setOnGLThreadStateListener(Lcom/powervision/gcs/Texture/GLESTVThread$GLThreadStateListener;)V

    .line 83
    iget-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    invoke-virtual {p1, p2, p3}, Lcom/powervision/gcs/Texture/GLESTVThread;->onSurfaceChanged(II)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->interrupt()V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    invoke-virtual {p1, p2, p3}, Lcom/powervision/gcs/Texture/GLESTVThread;->onSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 62
    iget v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRendererMode:I

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mGLThread:Lcom/powervision/gcs/Texture/GLESTVThread;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/GLESTVThread;->requestRender()V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRendererMode:I

    return-void
.end method

.method public setRenderer(Lcom/powervision/gcs/Texture/IGLESRenderer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/gcs/Texture/GLESTextureView;->mRenderer:Lcom/powervision/gcs/Texture/IGLESRenderer;

    return-void
.end method
