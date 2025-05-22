.class public Lcom/powervision/base/utils/YRotateAnimation;
.super Landroid/view/animation/Animation;
.source "YRotateAnimation.java"


# instance fields
.field Degress:F

.field camera:Landroid/graphics/Camera;

.field centerX:I

.field centerY:I

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->camera:Landroid/graphics/Camera;

    const/high16 v0, 0x43340000    # 180.0f

    .line 19
    iput v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->Degress:F

    const-wide/16 v0, 0x3e8

    .line 22
    iput-wide v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->time:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->camera:Landroid/graphics/Camera;

    const/high16 v0, 0x43340000    # 180.0f

    .line 19
    iput v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->Degress:F

    const-wide/16 v0, 0x3e8

    .line 22
    iput-wide v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->time:J

    int-to-float p1, p1

    .line 30
    iput p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->Degress:F

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/base/utils/YRotateAnimation;-><init>(I)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 37
    iput-wide p2, p0, Lcom/powervision/base/utils/YRotateAnimation;->time:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 68
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 71
    iget-object v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->camera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/powervision/base/utils/YRotateAnimation;->Degress:F

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 73
    iget-object p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 75
    iget p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->centerX:I

    neg-int p1, p1

    int-to-float p1, p1

    iget v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->centerY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 76
    iget p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->centerX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/powervision/base/utils/YRotateAnimation;->centerY:I

    int-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 77
    iget-object p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 53
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->centerX:I

    .line 54
    iput p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->centerY:I

    .line 56
    iget-wide p1, p0, Lcom/powervision/base/utils/YRotateAnimation;->time:J

    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/utils/YRotateAnimation;->setDuration(J)V

    .line 57
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/YRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
