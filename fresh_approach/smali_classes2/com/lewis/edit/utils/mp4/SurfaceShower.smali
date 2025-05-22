.class public Lcom/lewis/edit/utils/mp4/SurfaceShower;
.super Ljava/lang/Object;
.source "SurfaceShower.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/IObserver;
.implements Lcom/lewis/edit/utils/mp4/ColorMixingInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewis/edit/utils/mp4/IObserver<",
        "Lcom/lewis/edit/utils/mp4/RenderBean;",
        ">;",
        "Lcom/lewis/edit/utils/mp4/ColorMixingInterface;"
    }
.end annotation


# static fields
.field private static mBrightness:F = 0.0f

.field private static mColorTem:F = 0.0f

.field private static mContrast:F = 1.0f

.field private static mSaturation:F = 1.0f

.field private static mSharpness:F = 0.0f

.field private static mVignette:F = 3.0f


# instance fields
.field private isShow:Z

.field private mBean:Lcom/lewis/edit/utils/mp4/RenderBean;

.field private mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

.field private mListener:Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->isShow:Z

    return-void
.end method

.method private clearSurface()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mBean:Lcom/lewis/edit/utils/mp4/RenderBean;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/RenderBean;->getEgl()Lcom/lewis/edit/utils/mp4/EglHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/lewis/edit/utils/mp4/EglHelper;->destroySurface(Landroid/opengl/EGLSurface;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->isShow:Z

    return-void
.end method

.method public onCall(Lcom/lewis/edit/utils/mp4/RenderBean;)V
    .locals 8

    .line 68
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->isEndFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->clearSurface()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-show-rb-1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->isShow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mSurface:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_1

    .line 73
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mBean:Lcom/lewis/edit/utils/mp4/RenderBean;

    .line 74
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->getEgl()Lcom/lewis/edit/utils/mp4/EglHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mSurface:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/EglHelper;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    .line 75
    new-instance v0, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    invoke-direct {v0}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    .line 76
    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->create()V

    .line 77
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    iget v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenWidth:I

    iget v3, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->sizeChanged(II)V

    .line 78
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->getVertexMatrix()[F

    move-result-object v2

    const/4 v3, 0x1

    .line 79
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->getSourceWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->getSourceHeight()I

    move-result v5

    iget v6, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenWidth:I

    iget v7, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenHeight:I

    .line 78
    invoke-static/range {v2 .. v7}, Lcom/lewis/edit/utils/mp4/MatrixUtils;->getMatrix([FIIIII)V

    .line 80
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->getVertexMatrix()[F

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lewis/edit/utils/mp4/MatrixUtils;->flip([FZZ)[F

    .line 82
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    sget v2, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mBrightness:F

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->setBrightness(F)V

    .line 83
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    sget v2, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mContrast:F

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->setContrast(F)V

    .line 84
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    sget v2, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mSaturation:F

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->setSaturation(F)V

    .line 85
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    sget v2, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mColorTem:F

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->setColorTem(F)V

    .line 86
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    sget v2, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mVignette:F

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->setVignette(F)V

    .line 87
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    sget v2, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mSharpness:F

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->setSharpness(F)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-show-rb-2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->getEgl()Lcom/lewis/edit/utils/mp4/EglHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/EglHelper;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    .line 91
    iget v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenWidth:I

    iget v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 92
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mGLFilter:Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->getTextureId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lewis/edit/utils/mp4/ColorMixingGLFilter;->draw(I)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sur-show-rb-3 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "---sw = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "---sh = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mListener:Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;

    if-eqz v0, :cond_2

    .line 95
    iget-object v4, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    invoke-interface {v0, v4, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;->onDrawEnd(Landroid/opengl/EGLSurface;Lcom/lewis/edit/utils/mp4/RenderBean;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sur-show-rb-4 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/lewis/edit/utils/mp4/RenderBean;->getEgl()Lcom/lewis/edit/utils/mp4/EglHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mShowSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {p1, v0}, Lcom/lewis/edit/utils/mp4/EglHelper;->swapBuffers(Landroid/opengl/EGLSurface;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onCall(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/lewis/edit/utils/mp4/RenderBean;

    invoke-virtual {p0, p1}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->onCall(Lcom/lewis/edit/utils/mp4/RenderBean;)V

    return-void
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->isShow:Z

    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .line 113
    sput p1, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mBrightness:F

    return-void
.end method

.method public setColorTem(F)V
    .locals 0

    .line 128
    sput p1, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mColorTem:F

    return-void
.end method

.method public setContrast(F)V
    .locals 0

    .line 118
    sput p1, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mContrast:F

    return-void
.end method

.method public setOnDrawEndListener(Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mListener:Lcom/lewis/edit/utils/mp4/SurfaceShower$OnDrawEndListener;

    return-void
.end method

.method public setOutputSize(II)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenWidth:I

    .line 38
    iput p2, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mScreenHeight:I

    return-void
.end method

.method public setSaturation(F)V
    .locals 0

    .line 123
    sput p1, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mSaturation:F

    return-void
.end method

.method public setSharpness(F)V
    .locals 0

    .line 138
    sput p1, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mSharpness:F

    return-void
.end method

.method public setSurface(Ljava/lang/Object;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mSurface:Ljava/lang/Object;

    .line 55
    invoke-direct {p0}, Lcom/lewis/edit/utils/mp4/SurfaceShower;->clearSurface()V

    return-void
.end method

.method public setVignette(F)V
    .locals 0

    .line 133
    sput p1, Lcom/lewis/edit/utils/mp4/SurfaceShower;->mVignette:F

    return-void
.end method
