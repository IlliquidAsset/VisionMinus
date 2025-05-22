.class public Lcom/lewis/edit/utils/mp4/WrapRenderer;
.super Ljava/lang/Object;
.source "WrapRenderer.java"

# interfaces
.implements Lcom/lewis/edit/utils/mp4/Renderer;


# instance fields
.field private mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/lewis/edit/utils/mp4/OesGLFilter;

    invoke-direct {v0}, Lcom/lewis/edit/utils/mp4/OesGLFilter;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/mp4/WrapRenderer;->mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/WrapRenderer;->mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/OesGLFilter;->create()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/WrapRenderer;->mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/OesGLFilter;->destroy()V

    return-void
.end method

.method public draw(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/WrapRenderer;->mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/utils/mp4/OesGLFilter;->draw(I)V

    return-void
.end method

.method public getTextureMatrix()[F
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/WrapRenderer;->mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;

    invoke-virtual {v0}, Lcom/lewis/edit/utils/mp4/OesGLFilter;->getTextureMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public setVertexMatrix()V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/WrapRenderer;->mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/lewis/edit/utils/mp4/OesGLFilter;->setVertexCo([F)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public sizeChanged(II)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/lewis/edit/utils/mp4/WrapRenderer;->mFilter:Lcom/lewis/edit/utils/mp4/OesGLFilter;

    invoke-virtual {v0, p1, p2}, Lcom/lewis/edit/utils/mp4/OesGLFilter;->sizeChanged(II)V

    return-void
.end method
