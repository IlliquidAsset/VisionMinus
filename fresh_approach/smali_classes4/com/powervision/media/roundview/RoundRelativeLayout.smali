.class public Lcom/powervision/media/roundview/RoundRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RoundRelativeLayout.java"


# instance fields
.field private delegate:Lcom/powervision/media/roundview/RoundViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/roundview/RoundRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/powervision/media/roundview/RoundViewDelegate;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/powervision/media/roundview/RoundRelativeLayout;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/powervision/media/roundview/RoundViewDelegate;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/media/roundview/RoundRelativeLayout;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 41
    iget-object p1, p0, Lcom/powervision/media/roundview/RoundRelativeLayout;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {p1}, Lcom/powervision/media/roundview/RoundViewDelegate;->isRadiusHalfHeight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/powervision/media/roundview/RoundRelativeLayout;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundRelativeLayout;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/media/roundview/RoundViewDelegate;->setCornerRadius(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/roundview/RoundRelativeLayout;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {p1}, Lcom/powervision/media/roundview/RoundViewDelegate;->setBgSelector()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 27
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 28
    iget-object v0, p0, Lcom/powervision/media/roundview/RoundRelativeLayout;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {v0}, Lcom/powervision/media/roundview/RoundViewDelegate;->isWidthHeightEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundRelativeLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundRelativeLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundRelativeLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundRelativeLayout;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 30
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 31
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
