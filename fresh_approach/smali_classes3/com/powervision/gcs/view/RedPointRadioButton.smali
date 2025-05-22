.class public Lcom/powervision/gcs/view/RedPointRadioButton;
.super Landroid/widget/RadioButton;
.source "RedPointRadioButton.java"


# instance fields
.field paint:Landroid/graphics/Paint;

.field showRedPoint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->showRedPoint:Z

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->paint:Landroid/graphics/Paint;

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object p1, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/RedPointRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$color;->red_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public hideRedPoint()V
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->showRedPoint:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->showRedPoint:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-boolean v0, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->showRedPoint:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/powervision/gcs/view/RedPointRadioButton;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/gcs/view/RedPointRadioButton;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xf

    .line 57
    invoke-virtual {p0}, Lcom/powervision/gcs/view/RedPointRadioButton;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/RedPointRadioButton;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xe

    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    .line 58
    iget-object v3, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RadioButton;->onLayout(ZIIII)V

    return-void
.end method

.method public showRedPoint()V
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->showRedPoint:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/powervision/gcs/view/RedPointRadioButton;->showRedPoint:Z

    .line 24
    invoke-virtual {p0}, Lcom/powervision/gcs/view/RedPointRadioButton;->invalidate()V

    :cond_0
    return-void
.end method
