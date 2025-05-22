.class public Lcom/powervision/gcs/utils/RotateYAnimation;
.super Landroid/view/animation/Animation;
.source "RotateYAnimation.java"


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private centerX:I

.field private centerY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->camera:Landroid/graphics/Camera;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 27
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->camera:Landroid/graphics/Camera;

    const/high16 v1, 0x43340000    # 180.0f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 32
    iget-object p1, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 34
    iget p1, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->centerX:I

    neg-int p1, p1

    int-to-float p1, p1

    iget v0, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->centerY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 35
    iget p1, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->centerX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->centerY:I

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 36
    iget-object p1, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 18
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->centerX:I

    .line 19
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/powervision/gcs/utils/RotateYAnimation;->centerY:I

    const-wide/16 p1, 0x12c

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/utils/RotateYAnimation;->setDuration(J)V

    .line 22
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/utils/RotateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
