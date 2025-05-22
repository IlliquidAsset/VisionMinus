.class public Lcom/tmall/ultraviewpager/transformer/UltraScaleTransformer;
.super Ljava/lang/Object;
.source "UltraScaleTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field private static final MIN_SCALE:F = 0.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 41
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    const/high16 v2, 0x3f400000    # 0.75f

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    if-gez v3, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    cmpg-float p2, p2, v1

    if-gtz p2, :cond_2

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_0
    return-void
.end method
