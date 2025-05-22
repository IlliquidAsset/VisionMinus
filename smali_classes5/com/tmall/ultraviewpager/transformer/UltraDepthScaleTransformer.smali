.class public Lcom/tmall/ultraviewpager/transformer/UltraDepthScaleTransformer;
.super Ljava/lang/Object;
.source "UltraDepthScaleTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static final MAX_ROTATION:F = 30.0f

.field private static final MIN_SCALE:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6

    .line 41
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    add-float/2addr v0, v2

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float v3, v3, v4

    const v4, 0x3e428f5c    # 0.19f

    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float p2, p2

    mul-float v1, v1, p2

    mul-float v1, v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 50
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_0
    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float p2, p2

    mul-float v1, v1, p2

    mul-float v1, v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    neg-float p2, v3

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    :cond_1
    :goto_0
    return-void
.end method
