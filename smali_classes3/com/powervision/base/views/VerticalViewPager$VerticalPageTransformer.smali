.class Lcom/powervision/base/views/VerticalViewPager$VerticalPageTransformer;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/views/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalPageTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/powervision/base/views/VerticalViewPager;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/base/views/VerticalViewPager$VerticalPageTransformer;->this$0:Lcom/powervision/base/views/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/views/VerticalViewPager;Lcom/powervision/base/views/VerticalViewPager$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/powervision/base/views/VerticalViewPager$VerticalPageTransformer;-><init>(Lcom/powervision/base/views/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_1

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
