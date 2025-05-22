.class public Lcom/tmall/ultraviewpager/transformer/UltraVerticalTransformer;
.super Ljava/lang/Object;
.source "UltraVerticalTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# instance fields
.field private yPosition:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/tmall/ultraviewpager/transformer/UltraVerticalTransformer;->yPosition:F

    return v0
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    iput p2, p0, Lcom/tmall/ultraviewpager/transformer/UltraVerticalTransformer;->yPosition:F

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
