.class public Lcom/powervision/media/roundview/RoundTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RoundTextView.java"


# instance fields
.field private delegate:Lcom/powervision/media/roundview/RoundViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/powervision/media/roundview/RoundTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/media/roundview/RoundTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p3, Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-direct {p3, p0, p1, p2}, Lcom/powervision/media/roundview/RoundViewDelegate;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/powervision/media/roundview/RoundTextView;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/powervision/media/roundview/RoundViewDelegate;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/powervision/media/roundview/RoundTextView;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 44
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 45
    iget-object p1, p0, Lcom/powervision/media/roundview/RoundTextView;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {p1}, Lcom/powervision/media/roundview/RoundViewDelegate;->isRadiusHalfHeight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/powervision/media/roundview/RoundTextView;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundTextView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/powervision/media/roundview/RoundViewDelegate;->setCornerRadius(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/roundview/RoundTextView;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {p1}, Lcom/powervision/media/roundview/RoundViewDelegate;->setBgSelector()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/media/roundview/RoundTextView;->delegate:Lcom/powervision/media/roundview/RoundViewDelegate;

    invoke-virtual {v0}, Lcom/powervision/media/roundview/RoundViewDelegate;->isWidthHeightEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundTextView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundTextView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/powervision/media/roundview/RoundTextView;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 34
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 35
    invoke-super {p0, p1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method
